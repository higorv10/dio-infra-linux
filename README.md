# 🧱 Provisionamento de Infraestrutura como Código (IaC)

Este repositório contém um script de provisionamento em Bash para criar a estrutura de usuários, grupos, diretórios e permissões em um ambiente Linux. Ele simula o conceito de **Infraestrutura como Código**, permitindo a automação de configurações básicas de sistema.

## 🔧 O que o script faz

- **Remove** usuários, grupos e diretórios existentes (se já tiverem sido criados anteriormente).
- **Cria** os diretórios:
  - `/publico`
  - `/adm`
  - `/ven`
  - `/sec`
- **Cria** os grupos:
  - `GRP_ADM`
  - `GRP_VEN`
  - `GRP_SEC`
- **Cria** os usuários e os adiciona aos seus respectivos grupos:
  - `GRP_ADM`: `carlos`, `maria`, `joao`
  - `GRP_VEN`: `debora`, `sebastiana`, `roberto`
  - `GRP_SEC`: `josefina`, `amanda`, `rogerio`
- **Define permissões**:
  - Diretório `/publico`: acesso total a todos (`chmod 777`)
  - Diretórios `/adm`, `/ven`, `/sec`: acesso total apenas ao grupo correspondente (`chmod 770`)
- Todos os diretórios são de propriedade do `root`.

## ▶️ Como usar

1. Clone o repositório:

   ```bash
   git clone https://github.com/higorv10/dio-infra-linux.git
   cd dio-infra-linux

2. Torne o script executável

   ```bash
   chmod +x provisionamento.sh

3. Execute com permissões de superusuário

   ```bash
   sudo ./provisionamento.sh

## 🔐 Senhas dos usuários
Todos os usuários são criados com a senha padrão:

   ```nginx
   Senha123
   ```
Eles são obrigados a trocar a senha no primeiro login.

## 💻 Requisitos
  - Distribuição Linux com Bash

  - Permissão de superusuário (root)

  - Comandos disponíveis: `useradd`, `groupadd`, `mkdir`, `chmod`, `chown`, `openssl`, `passwd`.

## 📁 Estrutura esperada
Após execução, a estrutura de diretórios será:

```bash
/publico     -> acessível a todos
/adm         -> acessível apenas a GRP_ADM
/ven         -> acessível apenas a GRP_VEN
/sec         -> acessível apenas a GRP_SEC
```

## 💡 Objetivo
Esta atividade tem como foco a prática de Infraestrutura como Código com scripts automatizados, controle de permissões e versionamento com Git e GitHub.

## 🎯 Objetivo da atividade
Esta atividade faz parte do módulo Infraestrutura como Código e tem como objetivo praticar:

  - Automação de tarefas com Bash Script

  - Criação e gerenciamento de usuários e grupos

  - Controle de permissões no sistema de arquivos Linux

  - Versionamento de código com Git e GitHub

## ☁️ Observação (para usuários Windows)
Se estiver no Windows, use um dos seguintes métodos para executar o script:

  - WSL (Windows Subsystem for Linux)

  - Máquina virtual com Linux (ex: VirtualBox)

  - Servidor remoto com Linux (ex: Amazon EC2 com Amazon Linux)


## 📄 Licença
Desenvolvido durante o Bootcamp Santander - Linux para Iniciantes na DIO para fins educacionais.

   
