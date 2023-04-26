#!/bin/bash

cd .. && docker build -f docker/Dockerfile.latest \
             -t kanechen/chatgpt-on-wechat .