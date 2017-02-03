#!/bin/sh -e
docker rm -f vscode || true
docker run --name=vscode -itd -p 6100:6100 --security-opt seccomp=unconfined ctaggart/rusty-vscode
sleep 1
docker logs vscode
