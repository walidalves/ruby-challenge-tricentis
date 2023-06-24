     #language: pt
     
     @e2e
     @regression
     Funcionalidade: Preencher formulário do seguro de veículo
     Como um usuário da aplicação de seguros
     Quero preencher um formulário de seguro
     Para poder garantir o seguro do veículo

     
     @automobile
     Cenário: Preencher o formulário do automovel com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do automovel
     Então o website envia o email de confirmação


     @smoke_test
     @truck
     Cenário: Preencher o formulário do caminhão com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do caminhão
     Então o website envia o email de confirmação


     @smoke_test
     @motorcycle
     Cenário: Preencher o formulário da moto com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios da motorcycle
     Então o website envia o email de confirmação

     
     @camper
     Cenário: Preencher o formulário do camper com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do camper
     Então o website envia o email de confirmação
