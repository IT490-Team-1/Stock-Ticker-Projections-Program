#!/bin/bash

#installs erlang
sudo apt-get install erlang

#installs RabbitMQ server
sudo apt-get install rabbitmq-server

#enables the RabbitMQ server
sudo systemctl enable rabbitmq-server

#starts the RabbitMQ server 
sudo systemctl start rabbitmq-server

#checks the status of the RabbitMQ server
sudo systemctl status rabbitmq-server


