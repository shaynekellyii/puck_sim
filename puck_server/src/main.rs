use std::net::{IpAddr, SocketAddr};
use sqlx::PgPool;

use puck::{
    puck_server::{Puck, PuckServer},
    CreateTeamRequest, CreateTeamResponse, Team,
};
use tonic::{transport::Server, Request, Response, Status};
use tracing::info;
use puck_server::config::get_config;

pub mod puck {
    tonic::include_proto!("puck");
}

pub struct PuckService {
    pool: PgPool
}

impl PuckService {
    pub fn new(pool: PgPool) -> Self {
        Self {
            pool
        }
    }
}

#[tonic::async_trait]
impl Puck for PuckService {
    async fn create_team(
        &self,
        request: Request<CreateTeamRequest>,
    ) -> Result<Response<CreateTeamResponse>, Status> {
        let r = request.into_inner();
        // sqlx::query!(
        //     r#"
        //     INSERT INTO teams (id, location, nickname, abbreviation)
        //     VALUES ($1, $2, $3, $4)
        //     "#,
        //     Uuid::new_v4(),
        //     r.location,
        //     r.nickname,
        //     r.abbreviation,
        // )
        //     .execute(self.pool.get_ref())
        //     .await;
        Ok(Response::new(CreateTeamResponse {
            team: Some(Team {
                id: String::from("id"),
                location: r.location,
                nickname: r.nickname,
                abbreviation: r.abbreviation,
            }),
        }))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    tracing_subscriber::fmt::init();

    let config = get_config().expect("failed to read config");
    info!("read config from file: {:?}", config);

    let pool = PgPool::connect(&config.database.connection_str())
        .await
        .expect("failed to connect to postgres");
    info!("connected to postgres");
    sqlx::migrate!().run(&pool).await.expect("failed to migrate DB");
    info!("migrated db");

    let address = SocketAddr::new(IpAddr::from([0, 0, 0, 0]), 50051);
    let puck_service = PuckService::new(pool.clone());

    Server::builder()
        .add_service(PuckServer::new(puck_service))
        .serve(address)
        .await?;
    info!("listening on: {}", address);

    Ok(())
}
