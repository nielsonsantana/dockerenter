# dockerenter

Shortcut to enter on a running container by name

## Install

### dockerenter for containers running /bin/bash

    curl -L https://raw.githubusercontent.com/nielsonsantana/dockerenter/master/dockerenter.bash > /usr/local/bin/dockerenter
    chmod +x /usr/local/bin/dockerenter

### dockerenter for containers running /bin/sh

    curl -L https://raw.githubusercontent.com/nielsonsantana/dockerenter/master/dockerenter.sh > /usr/local/bin/dockerentersh
    chmod +x /usr/local/bin/dockerentersh

## Usage

This command search by the container named web and connect using docker exec.

    home~(master): docker ps
    CONTAINER ID   IMAGE                        COMMAND                 CREATED         STATUS         PORTS                    NAMES
    d8aa694b342f   webapp:latest                "/app/docker-entrypo…"  9 days ago      Up 2 days      0.0.0.0:8000->8000/tcp   webapp
    24efdb15c0b0   elasticsearch:2.4.3-alpine   "/docker-entrypoint.…"  3 months ago    Up 2 days      0.0.0.0:9200->9200/tcp   elasticsearch

    home~(master): dockerenter web
    Logged in: webapp:latest
    root@d8aa694b342f:/app#