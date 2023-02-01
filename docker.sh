#! /bin/sh

docker build -f ./Dockerfile -t about-mlflow:latest .  && docker run -p 8000:8000 -ti about-mlflow:latest /bin/bash
