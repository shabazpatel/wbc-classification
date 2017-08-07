FROM datmo/keras-tensorflow:gpu

# Run commands to make code work
RUN apt-get update -y

# Requirements
RUN apt-get install -y git \
                       python-sympy \
                       python-pandas \
                       cmake

# Install OpenCV
RUN apt-get update -y && apt-get install -y libopencv-dev python-opencv && \
    echo 'ln /dev/null /dev/raw1394' >> ~/.bashrc

