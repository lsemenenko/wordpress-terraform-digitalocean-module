#!/bin/bash

bash <(curl -s https://gitlab.com/optimull/wordpress-nginx-deployment/raw/master/main.sh) --install full ${fqdn} "${admin_email}"