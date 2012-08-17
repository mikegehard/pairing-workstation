current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "msgehard"
client_key               "#{current_dir}/msgehard.pem"
validation_client_name   "samyamatech-validator"
validation_key           "#{current_dir}/samyamatech-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/samyamatech"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
knife[:aws_ssh_key_id] = "amazon"
# You need to source ~/.amazon_info to get the next for env variables.
knife[:availability_zone] = "#{ENV['EC2_AVAILABILITY_ZONE']}"
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:aws_ssh_key_id] = "#{ENV['EC2_KEY']}"
knife[:region] = "#{ENV['EC2_REGION']}"
knife[:image] = "ami-a29943cb"
knife[:flavor] = "m1.small"
