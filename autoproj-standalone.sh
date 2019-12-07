#!/bin/bash

USERNAME="StefanTPY"
TOKEN=$AT_GIT_AUTO
PROJECT_NAME=$1

curl -H "Authorization: token $TOKEN" -d '{ "name": "'$PROJECT_NAME'",
                                            "description":"Script which makes skeleton project.",
                                            "homepage":"http://github.com",
                                            "private":true,
                                            "auto_init":true}' https://api.github.com/user/repos

expect -c "set timeout -1;
          spawn git clone https://github.com/$USERNAME/$PROJECT_NAME.git;
          expect \"*Username for 'https://github.com': \"
          send -- \"$USERNAME\r\"
          expect \"*Password for 'https://StefanTPY@github.com': \"
          send -- \"$TOKEN\r\"
          expect eof"
