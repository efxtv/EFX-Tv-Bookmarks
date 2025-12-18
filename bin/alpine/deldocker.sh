deldocker() {
  #by EFXTv
  #add this to ~/.zshrc or ~/.bashrc or ~/.profile
  #and source ~/.zshrc
  
  echo "Stopping all containers..."
  docker ps -q | xargs -r docker stop

  echo "Removing all containers..."
  docker ps -qa | xargs -r docker rm -f -v

  echo "Removing all images..."
  docker images -qa | xargs -r docker rmi -f

  echo "Removing all volumes..."
  docker volume ls -q | xargs -r docker volume rm -f

  echo "Removing all custom networks..."
  docker network ls -q | grep -vE 'bridge|host|none' | xargs -r docker network rm

  echo "Removing build cache..."
  docker builder prune -af

  echo "System prune (just in case)..."
  docker system prune -af --volumes

  echo "Docker cleanup complete."
}

