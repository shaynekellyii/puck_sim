use tracing::info;

#[derive(serde::Deserialize, Debug)]
pub struct Settings {
    pub database: DatabaseSettings,
}

#[derive(serde::Deserialize, Debug)]
pub struct DatabaseSettings {
    pub username: String,
    pub password: String,
    pub port: u16,
    pub host: String,
    pub database_name: String,
}

impl DatabaseSettings {
    pub fn connection_str(&self) -> String {
        format!(
            "postgres://{}:{}@{}:{}/{}",
            self.username, self.password, self.host, self.port, self.database_name
        )
    }
}

pub fn get_config() -> Result<Settings, config::ConfigError> {
    let base_path = std::env::current_dir()
        .expect("failed to determine current directory");

    info!("fetching config from {:?}", base_path);
    let settings = config::Config::builder()
        .add_source(config::File::from(base_path.join("config.yaml")))
        .build()?;
    settings.try_deserialize::<Settings>()
}
