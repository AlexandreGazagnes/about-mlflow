#! /bin/sh

docker build -f ./Dockerfile -t about-mlflow:latest .  && docker run -p 5000:5000 -ti about-mlflow:latest /bin/bash 
# docker run -ti about-mlflow:latest python main.py
# docker run -p 8080:8080 -ti about-mlflow:latest python back.py 