# seja bem-vindo(a) ao meu projeto mysql-one-for-all

# sobre o projeto
Nesse projeto eu recebo uma tabela com os dados todos bagunçados e tenho como missão orgazinar essas mesmas informações no banco de dados seguindo as regras de normalização de dados do mysql, além de desenvolver queries para serem executas no banco de dados.

## tecnologias e ferramentas usadas
* mysql
<br>

<details>
  <summary><strong> :whale: Rodando no Docker</strong></summary><br />

  > Rode os serviços `node` e `db` com o comando `docker-compose up -d`.
  -  O `docker-compose.yml` está configurado para mapear a porta padrão do `mysql` do container para a porta `3307` e não `3306`. 
  - Esses serviços irão inicializar um container chamado `one_for_all` e outro chamado `one_for_all_db`.
  - A partir daqui você pode rodar o container `one_for_all` via CLI ou abri-lo no VS Code.

  > Use o comando `docker exec -it one_for_all bash`.
  - Ele te dará acesso ao terminal interativo do container criado pelo compose, que está rodando em segundo plano;
  - As credencias de acesso ao banco de dados estão definidas no arquivo `docker-compose.yml`, e são acessíveis no container através das variáveis de ambiente `MYSQL_USER` e `MYSQL_PASSWORD`. 💡

  > Instale as dependências com `npm install`

  ⚠ Atenção ⚠ O **git** dentro do container não vem configurado com suas credenciais. Ou faça os commits fora do container, ou configure as suas credenciais do git dentro do container.

</details>