FROM python:3.9-bullseye 

# Date
RUN rm -f /etc/localtime  && ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime 

# Update updgrade
RUN apt update -y && apt upgrade -y

# Install
RUN apt install htop nano python3-pip python3-venv -y
RUN python3 -m pip install --upgrade pip

# Workdir
WORKDIR /app

# Requirements
COPY ./requirements.txt /app/requirements.txt
RUN python -m pip install -r requirements.txt
RUN python -m pip freeze >> requirements.freeze

# Make
# COPY ./make.sh /app/make.sh
# RUN chmod +x ./make.sh 
# RUN./make.sh

# Copy the app 
COPY . /app


# CMD
RUN which python
RUN which python3
RUN python -c "import pandas;"
RUN echo "hello"