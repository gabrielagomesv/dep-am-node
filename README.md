## Como executar o sistema no localhost

#### Importante

- Garanta que você tem o Node.js e o MySQL instalado na máquina.
- Importe o banco de dados do projeto por meio do arquivo `Bfyme-updated.sql`

#### Passo a passo

1. Dentro da pasta do projeto execute `npm install`;
2. Cheque se a pasta `node_modules` foi criada;
3. Abra o terminal do seu computador e vá para a pasta do projeto;
4. Abra o arquivo `config/db.js` e configure as credenciais do seu banco de dados local;
5. Já no diretório do projeto, execute `nodemon` ou `node app.js` para levantar o servidor.


#### Rotas

As rotas que possuem as interações em Node.js são:

- http://localhost:2000/blog/new
- http://localhost:2000/blog

** Não há postagens cadastradas no blog.
