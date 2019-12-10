# Casos de Uso

![Bike](img/bike.jpeg)

### Usuários
#### Cadastro de Usuários

Um usuário pode se cadastrar na aplicação utilizando um nome e uma email. O usuário deve possuir uma senha para a sua conta.

---

### Bicicletas

#### Destravar Bicicleta
 Dado uma estação com N vagas e M bicicletas sendo M > 0, um usuário pode solicitar a senha de destravamento para retirar uma bicicleta M_i da estção.

 #### Travar Bicicleta

Dado uma estação com N vagas e M bicicletas sendo N > 0, um usuário pode travar a bicicleta na estção, encerrando assim a sua **Viagem**.

#### Acionar manunteção

Ao travar uma bicleta em uma estação, o usuário pode acionar a manutenção, tornando a bicicleta indisponível para destravamento ate que a manutenção seja feita.

---

### Viagens

#### Registrar Viagem

Ao destravar uma bicicleta, é inciada uma viagem. A viagem tem tem maximo de 1 hora, caso ultrapasse esse tempo, será cobrada uma multa do usuário. Todos os dados da viagem ficam registrados, como :

 * data hora inicio
 * data hora fim
 * estação de desbloqueio
 * estação de bloqueio
 * usuário
 * bicicleta utilizada
 * status da viagem [EM_ANDAMENTO, FINALIZADA]

---
### Planos e pagamento

#### Ver planos
Um usuário utilizando um aplicativo, pode selecionar um plano de uso. As opções dispponíveis são:
 * Diário
 * Semanal
 * Mensal

#### Selecionar plano
Um usuário pode selecionar uma plano desde de que não haja um plano ativo nem nenhuma multa pendente. Ao selecionar o plano, será solicitado os dados de pagamento e o plano passa a vale a partir do momento que o usário teve seu pagamento confoirmado. O plano ficará válido até a experição do mesmo.

---
### Estações

#### Listar estações

Um usuário pode listar as estções em funcionamento próximas e ele e visualizar os dados da estacão, como:

* endereço
* quantidade de vagas
* quantidade de bicicletas
* nome
* numeração


---

## Adminstrativo

### Cadastrar Estação

O adminstrador do sistema pode cadastrar novas estação

### Atualizar estação

O adminstrador do sistema pode editar os dados de uma estação.

### Cadastrar Bicicleta

O adminstrador do sistma pode cadastrar uma nova bicicleta


### Atualizar Bicicleta

O adminstrador do sistema pode atualizar os dados de uma bicicleta
