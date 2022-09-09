#!/bin/bash

yum install nginx -y 
systemctl enable nginx 
systemctl start nginx 
 curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"
 

Let's download the HTDOCS content and deploy it under the Nginx path.

```
# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

```

Deploy in Nginx Default Location.