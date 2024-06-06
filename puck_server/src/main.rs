use std::net::{IpAddr, SocketAddr};

use puck::{
    puck_server::{Puck, PuckServer},
    CreateTeamRequest, CreateTeamResponse, Team,
};
use tonic::{transport::Server, Request, Response, Status};

pub mod puck {
    tonic::include_proto!("puck");
}

#[derive(Debug, Default)]
pub struct PuckService {}

#[tonic::async_trait]
impl Puck for PuckService {
    async fn create_team(
        &self,
        request: Request<CreateTeamRequest>,
    ) -> Result<Response<CreateTeamResponse>, Status> {
        let r = request.into_inner();
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
    let address = SocketAddr::new(IpAddr::from([0, 0, 0, 0]), 50051);
    println!("Listening on: {}", address);

    let puck_service = PuckService::default();

    Server::builder()
        .add_service(PuckServer::new(puck_service))
        .serve(address)
        .await?;
    Ok(())
}
