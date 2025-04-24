## 📁 Projeto de Provisionamento de Usuários e Permissões no Linux

Este projeto tem como objetivo automatizar a criação de diretórios, grupos e usuários em um sistema Linux, definindo corretamente as permissões de acesso conforme o departamento de cada usuário. O provisionamento é feito via script Bash.

### 🔧 Funcionalidades:
- Criação de diretórios: `/publico`, `/adm`, `/ven`, `/sec`
- Criação de grupos: `GRP_ADM`, `GRP_VEN`, `GRP_SEC`
- Criação e associação de usuários a seus respectivos grupos
- Definição de permissões de acesso:
  - Todos acessam `/publico`
  - Somente membros do grupo acessam seu diretório
- Diretórios pertencem ao usuário root

### 🚀 Execução:
```bash
chmod +x projeto-iac1.sh
sudo ./projeto-iac1.sh
```

--- 

