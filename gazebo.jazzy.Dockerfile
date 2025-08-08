FROM osrf/ros:jazzy-desktop
RUN apt-get update && apt-get install -y \
    ros-jazzy-ros-gz \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    pulseaudio \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["gz", "sim"]
