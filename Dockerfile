FROM ubuntu:20.04

RUN apt-get update -y
RUN mkdir /InfoCinemas
WORKDIR /InfoCinemas
ADD templates ./templates
COPY app.py .
RUN apt install -y python3 python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install flask pymongo
EXPOSE 5000
ENTRYPOINT ["python3", "-u", "app.py"]
