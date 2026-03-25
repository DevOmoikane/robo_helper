FROM osrf/ros:humble-desktop
RUN apt-get update && apt-get install -y \
    ros-humble-gazebo-ros-pkgs \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    pulseaudio \
    && rm -rf /var/lib/apt/lists/*

ARG USERNAME=israel
ARG UID=1000
ARG GID=1000

RUN groupadd -g $GID $USERNAME
RUN useradd -m -u $UID -g $GID -s /bin/bash $USERNAME
USER $USERNAME

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["gazebo"]
