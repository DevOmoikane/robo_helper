# Robo Helper

This is an implementation of ROS2 for a robot helper, the idea is to make a robot to clean, and also some other tasks as to carry things from place to place.

## Execute

### execute docker containers

```docker compose up --build```

### execute only robot container

```docker compose up robot --build```

### execute a bash in the main container

```docker compose exec robot bash```

### execute all containers for jazzy
```docker compose --file compose.jazzy.yaml up --build```

### in case the dockers are not starting, execute

xhost +local:root
xauth nextract - $DISPLAY | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -

