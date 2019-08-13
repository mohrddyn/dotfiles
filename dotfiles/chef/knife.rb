log_level                :info
log_location             STDOUT
node_name                'jarih'
client_key               '/Users/jarih/.chef/jarih.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef-server/chef-validator.pem'
chef_server_url          'https://gondolin:443'
syntax_check_cache_path  '/Users/jarih/.chef/syntax_check_cache'
cookbook_path [ './cookbooks' ]
