List of 50 Docker command cheat sheet.

---

### 🐳 **Complete Docker Commands Cheat Sheet (1-50)**

1. **List Docker Images**  
   Displays all the Docker images on your system.  
   ```bash
   docker images
   ```

2. **Delete a Docker Image**  
   Removes a specific Docker image by its name.  
   ```bash
   docker rmi -f image_name
   ```

3. **Delete All Docker Images**  
   Deletes all Docker images from your system.  
   ```bash
   docker rmi -f $(docker images -aq)
   ```

4. **List Docker Containers**  
   Shows all containers, including those that are stopped.  
   ```bash
   docker ps -a
   ```

5. **Stop a Docker Container**  
   Stops a running container by its ID or name.  
   ```bash
   docker stop Container_ID
   ```

6. **Delete a Docker Container**  
   Removes a container by its ID or name.  
   ```bash
   docker rm Container_ID
   ```

7. **Delete All Docker Containers**  
   Removes all stopped containers.  
   ```bash
   docker rm -v -f $(docker ps -qa)
   ```

8. **Clean Up Docker Environment**  
   Removes unused containers, images, volumes, and networks.  
   ```bash
   docker system prune -a --volumes
   ```

9. **View Docker Logs**  
   Displays the logs of a running container.  
   ```bash
   docker logs Container_ID
   ```

10. **Build Docker Image from Dockerfile**  
    Builds a Docker image from the current directory’s Dockerfile.  
    ```bash
    docker build -t image_name .
    ```

11. **Run a Docker Container in Detached Mode**  
    Runs a container in the background.  
    ```bash
    docker run -d image_name
    ```

12. **List Running Docker Containers**  
    Lists only the containers that are currently running.  
    ```bash
    docker ps
    ```

13. **Remove a Docker Volume**  
    Removes a specified Docker volume.  
    ```bash
    docker volume rm volume_name
    ```

14. **View Docker System Information**  
    Displays general information about your Docker setup.  
    ```bash
    docker info
    ```

15. **Get Docker Version**  
    Displays the installed Docker version.  
    ```bash
    docker --version
    ```

16. **Check Docker Image History**  
    Shows the history of a Docker image.  
    ```bash
    docker history image_name
    ```

17. **Inspect Docker Container**  
    Retrieves detailed information about a container.  
    ```bash
    docker inspect Container_ID
    ```

18. **Inspect Docker Image**  
    Retrieves detailed information about an image.  
    ```bash
    docker inspect image_name
    ```

19. **Tag Docker Image**  
    Tags an image with a new tag.  
    ```bash
    docker tag image_name new_image_name
    ```

20. **Push Docker Image to Docker Hub**  
    Pushes an image to Docker Hub or other Docker registry.  
    ```bash
    docker push image_name
    ```

21. **Pull Docker Image from Docker Hub**  
    Pulls an image from Docker Hub or other Docker registry.  
    ```bash
    docker pull image_name
    ```

22. **Run Docker Container with Port Binding**  
    Runs a container and binds a port from the container to the host.  
    ```bash
    docker run -p host_port:container_port image_name
    ```

23. **Run Docker Container with Volume Mounting**  
    Mounts a host directory or volume to a container.  
    ```bash
    docker run -v /host_path:/container_path image_name
    ```

24. **Show Docker Container Stats**  
    Displays real-time statistics of running containers.  
    ```bash
    docker stats
    ```

25. **List Docker Volumes**  
    Lists all Docker volumes.  
    ```bash
    docker volume ls
    ```

26. **Create Docker Volume**  
    Creates a new Docker volume.  
    ```bash
    docker volume create volume_name
    ```

27. **Remove All Unused Docker Volumes**  
    Removes all unused Docker volumes.  
    ```bash
    docker volume prune
    ```

28. **Create Docker Network**  
    Creates a custom Docker network.  
    ```bash
    docker network create network_name
    ```

29. **List Docker Networks**  
    Lists all Docker networks.  
    ```bash
    docker network ls
    ```

30. **Remove Docker Network**  
    Removes a Docker network.  
    ```bash
    docker network rm network_name
    ```

31. **Run a Docker Container with Environment Variables**  
    Passes environment variables to a container.  
    ```bash
    docker run -e VAR_NAME=value image_name
    ```

32. **Run Docker Container in Interactive Mode**  
    Runs a container interactively with a terminal session.  
    ```bash
    docker run -it image_name
    ```

33. **Pause a Docker Container**  
    Pauses a running container.  
    ```bash
    docker pause Container_ID
    ```

34. **Unpause a Docker Container**  
    Unpauses a paused container.  
    ```bash
    docker unpause Container_ID
    ```

35. **Rename a Docker Container**  
    Renames a running or stopped container.  
    ```bash
    docker rename old_container_name new_container_name
    ```

36. **Export a Docker Container**  
    Exports a container to a tar archive.  
    ```bash
    docker export Container_ID > container.tar
    ```

37. **Import a Docker Container**  
    Imports a tar archive as a Docker image.  
    ```bash
    docker import container.tar
    ```

38. **Docker Compose Up**  
    Starts services defined in a `docker-compose.yml` file.  
    ```bash
    docker-compose up
    ```

39. **Docker Compose Down**  
    Stops and removes containers, networks, and volumes defined in a `docker-compose.yml` file.  
    ```bash
    docker-compose down
    ```

40. **Docker Compose Build**  
    Builds or rebuilds services defined in a `docker-compose.yml` file.  
    ```bash
    docker-compose build
    ```

41. **Docker Compose Logs**  
    Displays logs from the services defined in a `docker-compose.yml` file.  
    ```bash
    docker-compose logs
    ```

42. **Run a Docker Container with Restart Policy**  
    Runs a container with a restart policy (e.g., always restart on failure).  
    ```bash
    docker run --restart unless-stopped image_name
    ```

43. **Build a Docker Image with Specific Build Context**  
    Builds an image using a specified directory as the context.  
    ```bash
    docker build -t image_name /path/to/context
    ```

44. **Run Docker Container with Specific Hostname**  
    Runs a container with a custom hostname.  
    ```bash
    docker run --hostname myhostname image_name
    ```

45. **List Docker Images with Filter**  
    Lists Docker images based on a specific filter.  
    ```bash
    docker images --filter "dangling=true"
    ```

46. **List Docker Containers with Filter**  
    Lists containers based on a specific filter.  
    ```bash
    docker ps --filter "status=exited"
    ```

47. **View Detailed Docker Events**  
    Displays real-time events related to Docker containers, images, etc.  
    ```bash
    docker events
    ```

48. **Login to Docker Hub**  
    Logs in to Docker Hub using your credentials.  
    ```bash
    docker login
    ```

49. **Logout from Docker Hub**  
    Logs out from Docker Hub.  
    ```bash
    docker logout
    ```

50. **View Docker System Disk Usage**  
    Displays Docker disk usage details (images, containers, volumes).  
    ```bash
    docker system df
    ```

# ✅ To pause a running container (reboot os will stop all)
```bash
docker pause <container_name_or_id>
```

### ▶️ To resume a paused container
```bash
docker unpause <container_name_or_id>
```

### 🔍 Check container status
```bash
docker ps -a
```

```
docker stop
(which gracefully stops and exits the container)

docker kill
(which forcefully stops it)

docker pause
(does not stop the container, it just halts the process scheduler)
```

# ✅ Create the snapshot (Resume later)
This creates a new Docker image called my-snapshot-image
```bash
docker commit <container_name_or_id> my-snapshot-image
```

### You can verify it exists using
```bash
docker images
```

###  💾 Optional: Tag the image with a version or date
```bash
docker commit <container_name> my-snapshot-image:2025-07-31
```

### 🔁 Restore (run a new container from the image)
```bash
docker run -it --name restored-container my-snapshot-image
```

### Port forwarding if you need port to be forwarded 
```bash
docker run -it -p 22533:22533 -p 22222:22222 --name Containername my-snapshot-image

```
---

Feel free to follow us on [telegram](https://t.me/efxtv) 
