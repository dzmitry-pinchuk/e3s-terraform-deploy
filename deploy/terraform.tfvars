profile = "default"

environment = "prod-2025-02"
region = "us-east-2"

e3s_server_instance_type = "m5n.xlarge"
e3s_key_pair_name = "e3s-prod-2025-02"

agent_key_pair = {
    generate = true
    save_private_key_in_file = false
    save_public_key_in_file = false
    private_key_file_path = ""
    public_key_file_path = ""
}

bucket = {
    exists = true
    name = "esg-engine"
    region = "us-east-2"
}

enable_cloudwatch = false
nat = true
max_az_number = 2

data_layer_remote = true
remote_db = {
    username = "postgres"
    pass = "{stored aws secret manager}"
}

instance_types = [
    {
        weight = 1
        instance_type = "c5a.2xlarge"
    },
    {
        weight = 2
        instance_type = "c5a.4xlarge"
    }
]

zebrunner = {
    host = "https://zebruner.com"
    user = "engine"
    pass = "{stored aws secret manager}"
}
