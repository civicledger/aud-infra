# Infrastructure setup

## Docker Compose and repository setup for trivialise

Set up all repositories for the application, and setup docker-compose to build and run the application.

```
mkdir trivialize
cd trivialize
curl -o setup.sh https://raw.githubusercontent.com/smallbatch-apps/trivialise-infra/main/setup.sh
bash setup.sh
```

The only environment variables that need to be set are the following.

```
DO_SPACES_KEY: <DO_SPACES_KEY>
DO_SPACES_SECRET: <DO_SPACES_SECRET>
DO_SPACES_ENDPOINT: <DO_SPACES_ENDPOINT>
DO_SPACES_NAME: <DO_SPACES_NAME>
```
