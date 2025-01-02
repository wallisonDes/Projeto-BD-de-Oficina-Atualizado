# Projeto-BD-de-Oficina-Atualizado
Apresentação do código de criação e inclusão de dados do bd de uma oficina.

O código fornecido configura um banco de dados para um sistema de oficina de automóveis. Aqui está uma descrição simplificada de cada parte:

# 1. Criação do banco de dados e tabelas
Banco de dados: Criação do banco de dados oficina.
Tabelas: O código cria várias tabelas que representam entidades e suas relações no contexto de uma oficina de veículos.
# 2. Tabelas
   
# Cliente
Objetivo: Armazenar informações sobre os clientes (pessoas físicas ou jurídicas), como nome, CPF/CNPJ, contato e endereço.

# Veiculo
Objetivo: Armazenar os dados dos veículos dos clientes, incluindo marca, modelo, ano e placa.

# Mecanico
Objetivo: Armazenar os dados dos mecânicos, incluindo CPF, contato, endereço e especialidade.

# Peca
Objetivo: Armazenar as informações sobre as peças utilizadas na oficina.

# Estoque
Objetivo: Armazenar informações sobre os locais de estoque de peças.
# Fornecedor
Objetivo: Armazenar os dados dos fornecedores de peças.

# ModPagamento
Objetivo: Armazenar as formas de pagamento disponíveis (como PIX, Cartão de Crédito, etc.).

# Pagamento
Objetivo: Armazenar informações sobre os pagamentos realizados pelos clientes.

# PecEstoque
Objetivo: Relacionar as peças aos estoques, armazenando a quantidade disponível em cada local de estoque.

# PecFornecedor
Objetivo: Relacionar as peças aos fornecedores, incluindo a quantidade fornecida.

# Equipe
Objetivo: Relacionar os mecânicos às equipes de serviço, com a designação de suas funções (como conserto ou revisão).

# Vtecnica
Objetivo: Armazenar informações sobre as vistorias técnicas realizadas nos veículos dos clientes, incluindo a avaliação e o valor da mão de obra.

# OS (Ordem de Serviço)
Objetivo: Armazenar as ordens de serviço geradas para as vistorias técnicas, incluindo o pagamento e autorização.

# Servico
Objetivo: Armazenar os serviços realizados nas ordens de serviço, incluindo o status e se foram finalizados.

# Requerimento
Objetivo: Relacionar os serviços realizados às peças utilizadas, incluindo a quantidade e o valor total das peças.

# 3. Inserção de dados:
O código inclui inserções de dados em várias tabelas, como clientes, veículos, mecânicos, peças, estoque, fornecedores, formas de pagamento, ordens de serviço, entre outros.

# 4. Consultas SQL:
Finalmente, o código inclui consultas (queries) para recuperar dados das tabelas. O exemplo dado mostra como consultar peças de estoque com quantidade abaixo de 20 unidades.

# 5. Conclusão:
Este código configura um banco de dados para a gestão de uma oficina, permitindo o cadastro de clientes, veículos, mecânicos, peças e outros dados importantes. Ele também cria as relações entre essas entidades, possibilitando consultas complexas sobre a oficina, como a quantidade de peças em estoque ou os serviços realizados.
