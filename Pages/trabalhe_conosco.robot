*** Variables ***

&{trabalheConosco}
...        nome=//*[@id="name"]
...        cargoPretendido=//*[@id="headline"]
...        pretensaoSalarial=//*[@id="salary"]
...        email=//*[@id="email"]
...        telefone=//input[@placeholder='00 00000-0000']
...        pais=//*[@id="country"]
...        estado=//*[@id="region"]
...        cidade=//*[@id="city"]
...        bairro=//*[@id="neighborhood"]
...        endereco=//*[@id="address"]
...        cep=//*[@id="zipcode"]
...        qualificacoes=//*[@id="summary"]
...        curriculo=//*[@id="validatedCustomFile"]
...        consentimento=//*[@id="consent"]
...        submeter=//button[@type='submit']


&{preencheFormulario}
...        nome=Wellington Santos
...        cargoPretendido=Analista de QA
...        pretensaoSalarial=10.000,00
...        email=wkavenss@gmail.com
...        telefone=84996126373
...        pais=BR
...        estado=RN
...        cidade=Natal
...        bairro=Nova Parnamirim
...        endereco=dos Juritis
...        cep=59150210
...        qualificacoes=Quality Assurance
...        curriculo=${EXECDIR}/CurriculoTeste.pdf