# Infrastructure setup

## Docker Compose and repository setup

Set up all repositories for the application, and setup docker-compose to build and run the application.

```
mkdir datasker
cd datasker
curl -o setup.sh https://raw.githubusercontent.com/civicledger/aud-infra/main/setup.sh
bash setup.sh
```

The environment variables that need to be set are the following.

```
DO_SPACES_KEY: <DO_SPACES_KEY>
DO_SPACES_SECRET: <DO_SPACES_SECRET>
HEDERA_OPERATOR_KEY: <HEDERA_OPERATOR_KEY>
```
