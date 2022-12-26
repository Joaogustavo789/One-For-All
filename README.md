# One For All

<a name="readme-top"></a>

## Sobre o Projeto

One For All é um projeto que foi construído um banco de dados chamado `SpotifyClone` utilizando o Banco de Dados relacional: `MySQL`!

## Rodando com Docker
<details>
  <summary>Clique para expandir</summary>
  
  ## É necessário ter o Docker instalado em sua máquina.
  
- Clone o projeto

```bash
  git clone git@github.com:Joaogustavo789/One-For-All.git
```

- Entre no diretório do projeto

```bash
  cd One-For-All
```

- Crie os Containers

```js
  docker-compose up -d  // Ele irá rodar dois serviços, um do node e um do db!
```

OBS: Se estiver usando `macOS` será necessário colocar manualmente uma opção `platform: linux/amd64` no serviço do banco de dados no arquivo docker-compose.yml desse projeto.

- Entre no Container

```bash
  docker exec -it one_for_all bash
```

- Instale as dependências dentro do container

```bash
  npm install
```
</details>

## Rodando localmente
<details>
  <summary>Clique para expandir</summary>
  
   ## É necessário ter o Node instalado e o MySQL instalados em sua máquina.
  
- Clone o projeto

```bash
  git clone git@github.com:Joaogustavo789/One-For-All.git
```

- Entre no diretório do projeto

```bash
  cd One-For-All
```

- Instale as dependências

```bash
  npm install
```
</details>

## Tecnologias e Ferramentas

<br>
<br>
<table width="320px" align="center">
  <tbody>
    <tr valign="top">
      <td width="80px" align="center">
        <span><strong>Docker</strong></span>
        <img height="50" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-plain-wordmark.svg" />
      </td>
      <td width="80px" align="center">
        <span><strong>MySQL</strong></span><br>
        <img height="50" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original-wordmark.svg" />
      </td>
    </tr>
  </tbody>
</table>


## Documentação

- [Docker](https://docs.docker.com/)
- [MySQL](https://www.mysql.com/)


## Feedback

Se você tiver algum feedback, por favor nos deixe saber por meio de jgustavomendonca@gmail.com
