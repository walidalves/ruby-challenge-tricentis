     #language: pt
     
     @regression
     @e2e
     Funcionalidade: Preencher formulário do seguro de automóvel
     Como um usuário da aplicação de seguros
     Quero preencher um formulário de seguro
     Para poder garantir o seguro do automóvel

     @smoke_test
     @formulario_e2e
     Cenário: Preencher o formulário com sucesso
     Dado que acesso a página do formulário
     Quando preencho todos os campos obrigatórios
     Então o website envia o email de confirmação
