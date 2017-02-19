# ./new_instance.sh PROJ_NAME ORG_NAME PORT
echo "starting $1 for $2 on localhost:$3"
mkdir -p containers
rm -r containers/$1
cp -r sub containers/$1
cd containers/$1
rm .env
rm -r venv
touch .env
echo "ORG_NAME=$2" >> .env
echo "COMPOSE_PROJECT_NAME=$1" >> .env
echo "EXTERNAL_PORT=$3" >> .env
docker-compose up -d
