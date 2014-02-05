name "base-ubuntu"
description "Base role for Ubuntu servers"
run_list "recipe[apt]","recipe[chef-client::cron]"
