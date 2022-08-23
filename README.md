# OBI Boostrap

Esse repositório é um _template_ para realizar a prova da OBI - na modalidade JS - com mais facilidade. Crie, rode, teste e faça upload as suas resoluções com mais facilidade.

### Comandos:
> Todos os comandos aceitam um único argumento obrigatório como parametro: o nome do exercício que será utilizado como nome do arquivo, pasta, etc.

- `create.sh`: cria o script _.js_ com o header nessessário e arquivos para facilitar os testes. Edite o arquivo `tests/in-N.txt` e `tests/expected_out-N.txt` para configurar a suíte de testes.
- `run.sh`: roda o progama indicado e testa contra os resultados esperados.
- `publish.sh`: remove o header de boostrap do programa e move o resultado final para `[nome-do-programa]-final.js`.