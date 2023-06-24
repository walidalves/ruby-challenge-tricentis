     #language: pt
     
     @regression
     @e2e
     Funcionalidade: Preencher formulário do seguro de veículo
     Como um usuário da aplicação de seguros
     Quero preencher um formulário de seguro
     Para poder garantir o seguro do veículo

     
     
     @formulario_e2e
     Cenário: Preencher o formulário do automovel com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do automovel
     Então o website envia o email de confirmação

     @truck
     Cenário: Preencher o formulário do caminhão com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do caminhão
     Então o website envia o email de confirmação

     @motorcycle
     Cenário: Preencher o formulário da moto com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios da motorcycle
     Então o website envia o email de confirmação



     @camper
     @smoke_test
     Cenário: Preencher o formulário do camper com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios do camper
     Então o website envia o email de confirmação
