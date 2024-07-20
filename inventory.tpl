[web]
${web_ip} ansible_user=${web_user} ansible_ssh_pass=${web_password} ansible_ssh_common_args='-o StrictHostKeyChecking=no'
