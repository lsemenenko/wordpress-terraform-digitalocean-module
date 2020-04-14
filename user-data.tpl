#!/bin/bash

bash <(curl -s https://gitlab.com/optimull/wordpress-nginx-deployment/raw/master/main.sh) --install full "${fqdn}" "${admin_email}" "${admin_user}" "${admin_pass}" "${php_version}" "${wp_version}"