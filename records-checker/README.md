# Checando cadastros

Dula Peep, dona da discoteca 'Nostalgia do Futuro' e aspirante a artista pop, recentemente contratou um profissional para fazer uma aplicação na qual ela pudesse vender seus discos e, ao mesmo tempo, promover sua discoteca. Esse website é responsável por permitir que usuários se cadastrem nele e comprem ingressos tanto para suas festas quanto para seus shows. Porém, tal profissional não fez um bom trabalho: esqueceu das validações padrão do Rails e deixou o cadastro sem controle nenhum de dados. Desesperada, Dula Peep ligou para você, seu sobrinho que manja de tecnologia, para resolver o problema para ela: checar os cadastros já existentes. Você, que está fazendo um processo seletivo para uma empresa de tecnologia de renome no mercado, resolve ajudá-la e, ao mesmo tempo, praticar os conhecimentos adquiridos em Orientação a Objetos.

Nesse desafio, você deve ajudar sua tia escrevendo o código de duas classes:

- A classe `DataControl`, responsável por receber uma lista de dados que compõe cadastros de usuários. Essa lista é recebida na forma do array `data_list`, onde cada posição do array representa um usuário da aplicação. Essa classe deve retornar quais as posições dos cadastros que não estão preenchidos de forma correta;

- A classe `Validator`, que deve receber um hash contendo as informações do cadastro de um usuário. Essa classe deve dizer se aquele hash possui um conjunto de dados que é válido ou não.

# Regras de validação

A seguir, você vê a lista de especificações que Dula Peep quer para cada input de seu cadastro:

- nome_completo: deve possuir apenas letras e ter, pelo menos, dois nomes;
- aniversario: está no formato dd/mm/aaaa. Mês, naturalmente, deve ser menor que 13 e o ano não pode estar no futuro;
- senha: deve possuir pelo menos 8 caracteres. Entre esses 8 caracteres, pelo menos um precisa ser um número e pelo menos um deve ser uma letra maiúscula;
- cpf: deve ser válido e, portanto, devemos fazer o cálculo da validade do dígito verificador. Você pode descobrir como calcular esse dígito nesse artigo: https://campuscode.com.br/conteudos/o-calculo-do-digito-verificador-do-cpf-e-do-cnpj.
