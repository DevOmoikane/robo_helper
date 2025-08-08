FROM osrf/ros:jazzy-desktop
RUN apt-get update && apt-get install -y \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-keysyms1 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxcb-xkb1 \
    libxkbcommon-x11-0 \
    && rm -rf /var/lib/apt/lists/*

USER 1000:1000

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/bin/bash"]
