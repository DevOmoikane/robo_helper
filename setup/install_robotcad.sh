#!/bin/bash
mkdir -p /media/israel/data/programs/python/miniconda3 && \
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /media/israel/data/programs/python/miniconda3/miniconda.sh && \
bash /media/israel/data/programs/python/miniconda3/miniconda.sh -b -u -p /media/israel/data/programs/python/miniconda3 && \
rm /media/israel/data/programs/python/miniconda3/miniconda.sh && \
. /media/israel/data/programs/python/miniconda3/bin/activate && \
conda config --add channels conda-forge && \
conda create -n freecad_1_0_312 freecad=1.0.0=py312h0c3bf70_4 python=3.12 && \
conda activate freecad_1_0_312 && \
conda install numpy pandas matplotlib requests qt6-wayland pycollada
conda install robostack-jazzy::ros-jazzy-xacro
cd ~/.local/share/FreeCAD/Mod
git clone https://github.com/drfenixion/freecad.robotcad.git
cd -
freecad