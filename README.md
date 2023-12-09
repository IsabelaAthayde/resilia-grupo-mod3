# Escola - Banco de Dados Instituição de Ensino

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/iuricode/README-template?style=for-the-badge)
![Bitbucket open issues](https://img.shields.io/bitbucket/issues/iuricode/README-template?style=for-the-badge)

Este projeto consiste na criação de um banco de dados SQL com o intuito de armazenar diversas informações do braço de ensino de uma instituição, tornando o gerenciamento da estrutura da empresa mais eficiente e eficaz. <br>
O banco de dados é composto pelas seguintes tabelas:

1.  **Aluno:** Armazena informações como o nome, o CPF, o e-mail, o telefone, o endereço e o status do aluno.
<br></br>
2.  **Turma:** Armazena informações como o número da sala, o turno e os alunos que fazem parte da turma.
<br></br>
3.  **Curso:** Armazena informações como o nome, o ID, a data de início e a data de término do curso.
<br></br>
4.  **Modulos:** Armazena informações como o ID, a data de início e a data de término do módulo.
<br></br>
5.  **Disciplina:**  Armazena informações como o ID e o nome da disciplina.
<br></br>
6.  **Facilitador:**  Armazena informações como o id, o nome, o cpf, o email, o telefone e o endereço do facilitador.
<br></br>
7. **Log_Estudante**: Armazena informações do histórico de atualizações do status do aluno.

## Requisitos
Para executar este projeto, é necessário ter instalado o MySQL, o xampp e o PHPMyAdmin (ou  acesse a  <a href="http://localhost/phpmyadmin">versão online</a>). Lembre-se de manter ativado o mySql e o Apache no Xampp.
<br></br>

## Informações dos arquivos sql

* **database(Projeto).sql**: Script de criação do banco de dados, das tabelas e do trigger.
* **inserts.sql**: Script de inserção de mais de 50 dados nas entidades.
* **consultas.sql**: Script com as principais consultas utilizadas no banco de dados.

## Instruções de instalação

1. Clone o repositório do GitHub:
   ```
   https://github.com/IsabelaAthayde/resilia-grupo-mod3.git
   ```

2. Importe o arquivo `database(Projeto).sql` no PHPMyAdmin:
   ```
   Import -> Selecione o arquivo database(Projeto).sql -> Clique em "Importar"
   ```
   
3. Importe o arquivo `inserts.sql` no PHPMyAdmin:
   ```
   Import -> Selecione o arquivo `inserts.sql` -> Clique em "Importar"
   ```
   
# Consultas SQL

A seguir, são apresentadas as instruções para acessar as consultas SQL que foram utilizadas para consultar o banco de dados:

1. Baixe o arquivo `consultas.sql` no anexo:

2. Certifique-se de ter rodado as queries que se encontram respec no anexo 'criacao_das_tabelas.sql'.

3. Importe o arquivo `consultas.sql` no PHPMyAdmin:
   ```
   Import -> Selecione o arquivo consultas.sql -> Clique em "Importar"
   ```
   
# 🤝 Colaboradores

Agradecemos às seguintes pessoas que contribuíram para este projeto:

  <table>
    <tr>
      <td align="center">
        <a href="https://github.com/fx987">
          <img src="https://avatars.githubusercontent.com/u/105022921?v=4" width="100px;" alt="Foto do Arthur Santos"/><br>
          <sub>
            <b>Arthur Santos</b>
          </sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/CezarHick">
          <img src="https://avatars.githubusercontent.com/u/132731147?v=4" width="100px;" alt="Foto do Cezar"/><br>
          <sub>
            <b>Cezar Henrique</b>
          </sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/jordaozz">
          <img src="https://avatars.githubusercontent.com/u/143561413?v=4" width="100px;" alt="Foto do Gabriel Jordão"/><br>
          <sub>
            <b>Gabriel Jordão</b>
          </sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/IsabelaAthayde">
          <img src="https://avatars.githubusercontent.com/u/100873483?v=4" width="100px;" alt="Foto da Isabela Athayde"/><br>
          <sub>
            <b>Isabela Athayde</b>
          </sub>
        </a>
      </td>
      <td align="center">
        <a href="https://github.com/samgomes0305">
          <img src="https://avatars.githubusercontent.com/u/143973237?v=4" width="100px;" alt="Foto do Samuel Galvão"/><br>
          <sub>
            <b>Samuel Galvão</b>
          </sub>
        </a>
      </td>
      <td align="center">
         <a>
           <img src="https://avatars.githubusercontent.com/u/144072715?v=4" width="100px;" alt="Foto da Priscila"/><br>
          <sub>
            <b>Priscila</b>
          </sub>
        </a>
      </td>
    </tr>
  </table>

## Contribuições são bem-vindas. Para contribuir, siga as seguintes instruções:

  1. Realize um fork do projeto.
  2. Crie uma branch com a nova feature.
  3. Realize o commit das alterações.
  4. Realize o push da branch para o seu fork.
  5. Abra um pull request para o repositório original.

## Licença
  
  Este projeto é licenciado sob a licença [--].
