FROM osrf/ros:foxy-desktop
RUN apt-get update && apt-get install -y ros-foxy-gazebo-ros-pkgs
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["gazebo"]
