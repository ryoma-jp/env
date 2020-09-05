#!/bin/bash

# --- ref ---
#   https://hub.docker.com/r/plantuml/plantuml-server/

docker run -d -p 8080:8080 plantuml/plantuml-server:latest

echo "access to http://localhost:8080/"


