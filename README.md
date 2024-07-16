# Projeto de Provisionamento e Configuração de uma VM com Terraform, Ansible e Github Actions

Este projeto demonstra como provisionar e configurar uma VM na Azure usando Terraform, Ansible e Github Actions.

## Resumo

### TERRAFORM:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group
- Public IP
- Network Interface
- Virtual Machine

### ANSIBLE:

- Atualiza os pacotes apt.
- Instala o servidor web Nginx.

### Github Aciton:

- Executa as intuções Terraform e Ansible

## Passos para execução local

### Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- Terraform
- Ansible

### 1. Configuração Inicial com Terraform

1. Renomeie o arquivo `terraform.tfvars.sample` para `terraform.tfvars` e preencha os dados necessários.

2. No arquivo `providers.tf` modifique as configurações `backend azurerm` para um backend válido.

3. Inicialize o diretório do Terraform

```bash
terraform init
```

4. Gere e revise o plano de execução:

```bash
terraform plan -out plan.tfplan
```

5. Aplique o plano de execução para provisionar a infraestrutura:

```bash
terraform apply plan.tfplan
```

### 2. Configuração com Ansible

1. Navegue para o diretório do Ansible:

```bash
cd ansible
```

2. Execute o playbook principal para configurar os servidores:

```bash
ansible-playbook -i inventory.ini playbook.yml
```

OBS.: Caso o playbook retorne error de autentificação será necessário a insatalação do pacote `sshpass` para permitir que o ansible consiga acessar a vm via ssh usando o password forneceido.

No Ubuntu

```bash
sudo apt-get update
sudo apt-get install sshpass
```
