GUI:

Requisitos:

--Bibiloteca customtkinter - pip install customtkinter
--Biblioteca bcrypt - pip install bcrypt
--Biblioteca mysql.connector - pip install mysql.connector

Como utilizar:
Para iniciar o sistema você deverá abrir seu cmd (Prompt de Comandos), ir até o local onde está o arquivo main.py
e digitar py main.py, então abrirá a primeira tela pedindo seu usuário e a senha para entrar em nosso sistema,
caso não tenha uma conta, você deverá clicar no botão de criar nova conta, então deverá inserir seu nome de usuário
e sua senha, também deverá inserir se quer criar sua conta como usuário ou operador, que fazem coisas diferentes no
sistema.

Usuário: Ao fazer login como usuário, você terá uma opção disponível, a de consultar envios, onde ao entrar você
deverá inserir o código de seu envio para visualizar as informações.

Operador: Ao fazer login como operador, você terá 3 opções de funções, a primeira de registrar um envio, onde
você terá que inserir todas as informações para criar um novo envio.
A segunda é de atualizar o status de um envio, onde terá que inserir o código do envio para alterar seu status
e localização.
E a terceira é para consultar um envio, onde ao inserir o código de envio corretamente, aparecerá todas as
informações de seu envio.

Admin: Para fazer login como admin, você deve inserir seu usuário como admin e sua senha é 123, assim conseguindo
entrar no sistema como admin.
Você terá 4 opções, a primeira sendo de gerenciar usuários, onde abrirá uma tela mostrando todos users
cadastrados no Banco de Dados, com você tendo a opção de excluí-los se quiser.
A segunda de visualizar auditoria, onde pode ver todos registros que foram feitas alterações de status
e de localização dos envios.
A terceira sendo de gerenciamento de envios,onde você pode visualizar o seu código, a descrição e seu status,
também podendo editá-los e exclui-lós.
E a quarta de consultar um envio, onde ao inserir o código de envio corretamente, aparecerão todas as
infromações de seu envio.



CONSOLE:

Requisitos:

--Biblioteca time - pip install time
--Biblioteca mysql.connector - pip install mysql.connector
--Biblioteca bcrypt - pip install bcrypt

Como utilizar:
Primeiramente você deverá abrir seu cmd (Prompt de Comandos), ir até o local onde está o arquivo main.py e digitar 
py main.py, para iniciar o funcionamento do programa.
Em seguida, você deverá inserir seu login e a senha desse respectivo login para entrar no sistema, ao entrar, você verá
um menu contendo todas as opções de nosso sistema.
Caso escolha a primeira opção, você deverá inserir o seu código de envio, para então alterar o status e a localização
de seu envio.
Na segunda opção, você deve inserir o status dos envios que deseja visualizar, caso insira um status onde não há nenhum
envio no momento, aparecerá uma mensagem que diz que não há nehum envio nesse status no momento.
Na terceira opção, você terá que inserir o código da tabea auditória para visualizar as informações que foram alteradas
do seu envio escolhido.



WEB:

Requisitos:

--Xampp instalado no disco local

Como utilizar:
Para utilizar o sistema WEB, você deve abrir o Xampp e ativar as funções de Apache e MySQL, então deve abrir seu
navegador e acessar a seguinte URL: COLOCAR URL OU SEI LÀ O QUE.
Então ao entrar na página você deverá inserir seu código de envio para visualizar as informações de seu envio.


