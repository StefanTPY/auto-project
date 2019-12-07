#!/bin/bash

USERNAME="StefanTPY"
TOKEN=$AT_GIT_AUTO
PROJECT_NAME=$1

curl -H "Authorization: token $TOKEN" -d '{ "name": "'$PROJECT_NAME'",
                                            "description":"Script which makes skeleton project.",
                                            "homepage":"http://github.com",
                                            "private":true,
                                            "auto_init":true}' https://api.github.com/user/repos


git clone https://github.com/$USERNAME/$PROJECT_NAME.git
