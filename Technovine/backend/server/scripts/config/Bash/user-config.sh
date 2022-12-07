#!/usr/bin/bash/env bash

groupadd ServerAdmins
groupadd SiteAdmins


useradd -m -d '/users/RJoubert' -g 'sudo' -G 'ServerAdmins, SiteAdmins, Users' --shell bash
useradd -m -d '/users/MOgunbowale' -g 'sudo' -G 'ServerAdmins, SiteAdmins, Users' --shell bash
