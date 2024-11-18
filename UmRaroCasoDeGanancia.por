programa
{
	//Jogo de investigacao criminal
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ti
		caracter letras[8] = {'a','b','c','d','e','f','g','h'}
	//define a velocidade de texto
		inteiro velo = 10
	//serve para carregar todos os caracteres que o usuario usa durante o jogo
		cadeia input = "a"
	//autoexplicativo
		cadeia nomeJogador
	//Segura cada escolha que o jogador fez, importante para definir finais
		cadeia escolhasFeitas = ""
	//Estes logicos servem para definir quais fichas devem ser lidas!
		inteiro nFicha = 0
		logico a = verdadeiro
		logico b = verdadeiro
		logico c = verdadeiro
		logico d = verdadeiro
		logico E = verdadeiro
		logico f = verdadeiro
		logico g = verdadeiro
	//carrega em qual pergunta o jogador esta
		inteiro perguntas = 1
	//guarda a resposta para cada pergunta do interrogatorio
		caracter pregunta1,pregunta2,pregunta3,pregunta4,pregunta5
	//oq mais ele investigou?
		logico vinhoLido
		logico lencoLido 
		logico documentoLido
		logico alexandreInvestigado
	//"vida"
		inteiro credibilidade = 0
		inteiro sanidade = 0
			
	funcao inicio()
	{
		inicializar()
	}
	
	//Da um nome ao usuario
	funcao inicializar()
	{
		escrevaa("defina a velocidade do texto em milisegundos! (o texto agora esta em 50)/n",50)
		leia(input)
		enquanto(nao(ti.cadeia_e_inteiro(input,velo)))
		{
			escrevaa("este nao e um valor valido!",50)
			leia(input)
		}
		velo = ti.cadeia_para_inteiro(input, velo)
		escrevaa("esta velocidade esta boa? (s|n)/n",velo)
		leia(input)
		se(input == "n")
		{
			inicializar()
		}
		escrevaa("POLICIAL:\"Parado ai! Voce nao pode entrar na unidade sem uma identidade!\" /nQual meu nome? ",velo)
		leia(nomeJogador)
		escrevaa("\"Meu nome e "+ nomeJogador + " e eu sou o detetive encarregado do caso do Sr.Arnaldo, a minha identidade esta aqui....\"/nPOLICIAL:\"Pode passar, por agora...  \"", velo)
		novoJogo()
	}
	
	//Conta o problema principal
	funcao novoJogo()
	{ 
		limpa()
		
		escrevaa("CAPITAO:\"O Sr.Arnaldo morreu nesta manha de quinta-feira, no aniversario de seu filho mais novo Junior de 16 anos. Ele caiu do camarote de sua mansão *por acidente*, mas a esposa insiste que houve um assassinato. Entre nos, eu acho que ele so estava passando da conta nos pileques... Aqui estao as fichas das testemunhas e principais suspeitos da investigacao detetive "+ nomeJogador +", boa sorte. Nós não temos muito tempo pois até que esse caso ser resolvio as ações da empreza estão comjeladas.\"",velo)
		u.aguarde(velo)
		apresentar()
	}
	
	//apresenta os personagens, baseado em quais fichas ainda nao foram lidas	
	funcao apresentar()
	{
			limpa()
			escrevaa("Qual ficha eu devo ler?/n",velo)
			se(a)
			{
				escrevaa("a)ALEXANDRE/n",velo)
			}
			se(b)
			{
				escrevaa("b)MAFALDA/n",velo)
			}
			se(c)
			{
				escrevaa("c)JOSIANE/n",velo)
			}
			se(d)
			{
				escrevaa("d)MAIO/n",velo)
			}
			se(E)
			{
				escrevaa("e)FILIPA/n",velo)
			} 
			se(f)
			{
				escrevaa("f)LUTER/n",velo)
			} 
			se(g)
			{
				escrevaa("g)LIAH/n",velo)
			} 
			senao
			{
				//se o usuario ja tiver lido todas as fichas, acaba essa sessao.
				limpa()
				escrevaa("\"Eu preciso interrogar os suspeitos.\"",velo)
				u.aguarde(velo)
				limpa()
				interrogatorio()
			}
			cadeia personagem
			leia(personagem)
			se(personagem == "")
			{
				personagem = ti.caracter_para_cadeia(letras[nFicha])
			}
			//cada uma dessas chama uma funcao que retorna a ficha completa.
			escolha (ti.cadeia_para_caracter(personagem))
			{
				caso 'a':
					se(a)
					{
						escrevaa(leituraFichas("ALEXANDRE MIKAL","19 do 09 de 2006","uma casinha, propriedade da mae, MAFALDA","menor aprendiz até fazer 18 e continuar trabalhando na empresa do falecido"),velo)
						a = falso
						nFicha++
					}
					senao
					{
						erro("pra que ler denovo homi?")
						apresentar()
					}
				pare
				caso 'b':
					se(b)
					{
						escrevaa(leituraFichas("MAFALDA MIKAL","12 do 02 de 2000","sua casa propria no suburbio","secretaria e organizadora principal da empresa"),velo)
						b = falso
						nFicha++
					}
					senao
					{
						erro("pra que ler denovo homi?")
						apresentar()
					}
				pare
				caso 'c':
					se(c)
					{
						escrevaa(leituraFichas("JOSIANE FERNANDA DE LUCAS","15 do 07 de 1985","uma casa, propriedade do falecido","esposa trofeu"),velo)
						c = falso
						nFicha++
					}
					senao
					{
						erro("pra que ler denovo homi?")
						apresentar()
					}
				pare
				caso 'd':
					se(d)
					{
						escrevaa(leituraFichas("MAIO NIN TENDO BROS","02 do 03 de 1983","Estacao Play","faz-tudo"),velo)
						d = falso
						nFicha++
					}
					senao
						{
							erro("pra que ler denovo homi?")
							apresentar()
						}
				pare
				caso 'e':
					se(E)
						{
							escrevaa(leituraFichas("FILIPA LOVIANE","21/12/1988","um bairro nobre","vice-diretora da empresa do falecido"),velo)
							E = falso
							nFicha++
					}
					senao
					
						{
							erro("pra que ler denovo homi?")
							apresentar()
						}
				pare
				caso 'f':
					se(f)
						{
							escrevaa(leituraFichas("LLUTER GREGORIO","29/02/1988","um apartemento nobre no Havai","empreendedor"),velo)
							f = falso
							nFicha++
						}
						senao
					
						{
							erro("pra que ler denovo homi?")
							apresentar()
						}
				pare
				caso 'g':
					se(g)
						{
							escrevaa(leituraFichas("LIAH LOVIANE","29/02/2007","mora com sua mãe Felipa","professora particular"),velo)
							g = falso
							nFicha++
						}
					senao
						{
							erro("pra que ler denovo homi?")
							apresentar()
						}
				pare
				caso contrario:
					erro("Eu deveria e voltar pra cama... /n")
					apresentar()
				pare
			}
			repitaApresentacao()

			}
			
	funcao cadeia leituraFichas(cadeia nomeFicha,cadeia nascimento, cadeia casa, cadeia trabalho)
	{
		limpa()
		cadeia ficha 
		ficha = (nomeFicha +", nascido em "+ nascimento+ ", mora em "+ casa+ " e trabalha como "+ trabalho+ "./n")
		retorne ficha
	}
	funcao repitaApresentacao()
	{
		u.aguarde(500)
		limpa()
		escrevaa("Devo ler outra ficha?(s|n)/n",velo)
		leia(input)
		se(input == "" ou nao ti.cadeia_e_caracter(input))
			{
				input = "s"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 's':
				limpa()
				apresentar()
			pare
			caso 'n':
				limpa()
				escrevaa("\"Eu preciso interrogar os suspeitos.\"",velo)
				u.aguarde(velo)
				limpa()
				interrogatorio()
			pare
			caso contrario:
				limpa()
				erro("\"E se eu comesse o papel...?\"/n")
				repitaApresentacao()
		}
	}
	
	funcao interrogatorio()
	{
		u.aguarde(300)
		limpa()
		escolha(ti.inteiro_para_caracter(perguntas))
		{
			caso'1':
				escrevaa("Primeira pergunta: /na)Onde voce estava na hora do acidente?/nb)Voce estava sozinho na hora do acidente?/nc)O que voce ouviu durante o evento/nd)Pode descrever o que voce viu?/n",velo)
			pare
			caso'2':
				escrevaa("Segunda pergunta: /na)Qual é o seu relacionamento com o senhor Arnaldo? /nb)Você já teve algum problema com o senhor Arnaldo no passado? /nc)Como você conheceu o senhor Arnaldo? /n",velo)
			pare
			caso'3':
				escrevaa("Terceira pergunta: /na)Qual era o seu objetivo naquele local? /nb)Você teve algum desentendimento com alguém antes do ocorrido? /nc)Alguma vez já teve um motivo para fazer mal ao senhor Arnaldo? ",velo)
			pare
			caso'4':
				escrevaa("Quarta pergunta: /na)A que horas você chegou no local? /nb)O que você fez antes dele morrer? /nc)Quando foi a última vez que viu/nfalou com o falecido? ",velo)
			pare
			caso '5':
				escrevaa("Quinta pergunta: /na)Pode repetir o que aconteceu para garantir que entendi corretamente /nb)Algum detalhe mudou desde a última vez que você falou sobre isso? /nc)Você já contou essa história a alguém antes? /n",velo)
			pare
			caso contrario:
				cenaCrime()
			pare
		}
		leia(input)
		se(input == "" ou nao ti.cadeia_e_caracter(input))
		{
			input = "a"
		}
		escolhasFeitas += input
		limpa()
		interrogar(perguntas,ti.cadeia_para_caracter(input))
	}
	
	funcao interrogar(inteiro nPergunta, caracter pergunta )
	{
		perguntas++
		escolha(ti.inteiro_para_caracter(nPergunta))
		{
			caso '1':
				pregunta1 = (pergunta)
				escolha(pergunta)
				{
					caso 'a':
						// a) Onde você estava na hora do incidente?
						escrevaa("/nMARIO: Eu estava com a burguesa na hora do incidente. Estávamos conversando sobre negócios, mas não vi nada suspeito. A única coisa que ouvi foi um barulho alto, como se algo estivesse caindo.",velo) //Estava com a Filipa
						escrevaa("/nFILIPA: Eu estava com o Mario. Não vi nada de errado.",velo) //Estava com Mario
						escrevaa("/nMAFALDA: Estava organizando as coisas na cozinha",velo) //Quem confirma?
						escrevaa("/nALEXANDRE: Eu estava ajudando na organização da festa no primeiro andar quando tudo aconteceu. Não estava no camarote na hora do acidente.",velo) //Ajudando a organizar em outro lugar
						escrevaa("/nJOSIANE: Eu estava no palco, esperando a minha vez de falar, quando vi meu marido cair do segundo andar. Foi horrível!",velo) //Estava no palco, alguem viu?
						escrevaa("/nLUTER: Eu estava chegando na festa no momento pois meu vouo atrasou ",velo) //
						escrevaa("/nLIAH: Eu estava dançando na hora ",velo) //
					pare
					caso 'b':
						// b) Você estava sozinho ou com alguém?
						escrevaa("/nMARIO: Eu estava sozinho, focado nas câmeras de segurança.",velo) //na outra ele estava com filipa, qual e a verdade? Se o usuario fizer uma pergunta, ele nao sabe da outra resposta.
						escrevaa("/nFILIPA: Eu estava sozinha, bebendo",velo) //alguem confrima? essa resposta esta em conflito com a outra tambem...
						escrevaa("/nMAFALDA: Estava organizando as coisas na cozinha, mas tinha outros empregados por perto.Estava com o pessoal da limpeza quando tudo aconteceu. Não vi o que aconteceu, mas ouvi gritos e corri para ver o que era.",velo) //a outra resposta e esta estao coerentes.
						escrevaa("/nALEXANDRE: Eu estava com outros estagiários ajudando na festa, mas não estava ao lado do Sr. Arnaldo.",velo)//nao estava sozinho, os outros confirmariam?
						escrevaa("/nJOSIANE: Eu estava com alguns amigos no palco, esperando minha vez de falar.",velo)//no palco novamente, confirma com a antes
						escrevaa("/nLUTER: Eu chegeui e ja fui falar com Filipa quando a encontrei com o mario numa situação bem emgraçada nos fundos da mansão ",velo) //
						escrevaa("/nLIAH: Eu estava dançando quando esbarei com Alexandre, ele parecia bem assutado ",velo) //
					pare
					caso 'c':
						// c) O que você viu ou ouviu durante o evento?
						escrevaa("/nMARIO: Vi muita gente dançando e bebendo. Não prestei atenção no que estava acontecendo no camarote.",velo)//suspeiro, sendo o homem das cameras....
						escrevaa("/nFILIPA: Eu vi o Sr. Arnaldo discutindo com um dos empregados antes de cair. Parecia estar muito alterado.",velo)//empregados? existem tres empregados que sao suspeitos
						escrevaa("/nMAFALDA: Ouvi gritos e logo em seguida, um estrondo. Todos correram para ver o que tinha acontecido.",velo)
						escrevaa("/nALEXANDRE: Estava no banheiro quando ouvi o barulho. Saí correndo, mas já era tarde.",velo)//estava no banheiro...
						escrevaa("/nJOSIANE: Vi meu marido conversando com algumas pessoas antes de subir para o camarote. Estava tão feliz...",velo)
						escrevaa("/nLUTER: Eu chegeui um pouco antes do pronuciamento , o son estava desligado eu ouvi o barulho do corpo caindo, foi orrivel ",velo) //
						escrevaa("/nLIAH: Eu falei com alguns amigos da minha mãe e confesso que eu peguei um drinc, masi foi só um ",velo) //
					pare
					caso 'd':
						// d) Pode descrever exatamente o que aconteceu?
						escrevaa("/nMARIO: Claro! Eu estava monitorando as câmeras quando ouvi um barulho alto na sala principal. Corri para ver o que era e encontrei o Sr. Arnaldo caído no chão.",velo)//estava monitornado, nao bate com a restosta da pergunta c, mas o jogador nao sabe...
						escrevaa("/nFILIPA: Estávamos em meio a uma discussão sobre um novo projeto quando ouvimos o barulho. Corri para a sala e encontrei o Sr. Arnaldo inconsciente.",velo) //uma discussao com quem? algumas vezes sozinha, algumas com outras pessoas...
						escrevaa("/nMAFALDA: Estava na cozinha quando ouvi gritos. Fui até a sala e vi o Sr. Arnaldo no chão, cercado por pessoas preocupadas.",velo)
						escrevaa("/nALEXANDRE: Estava ajudando a montar as mesas quando ouvi um estrondo. Corri para ver e vi o Sr. Arnaldo caído, as pessoas estavam em pânico.",velo)//a do banheiro nao bate, mas as outras poderiam confrimar essa afirmacao
						escrevaa("/nJOSIANE: Eu estava prestes a subir ao palco para falar quando ouvi o barulho. Corri para a sala e encontrei o meu marido no chão, sem se mover.",velo)//ninguem estava la?
						escrevaa("/nLUTER: Olha eu cheguei na festa e logo fui comprimentar alguns amigos e procurar minha grande amiga Filipa quando a encontrei com o Mario em um cituaçâo embarasoza com ela então voutei para dentro e vi meu velho amigo caido no chão ",velo) //
						escrevaa("/nLIAH: Foi mal eu estou u pouco nevoza... (e derepente Liah vomita no chão) você pede para que ela saia da sala e va ao medico ver o que esta acontecendo, mas ela insiste em continuar e fala que pode ser só o efeito do alcol ",velo) //
					pare
					caso contrario:
						erro("o segredo e que quem matou ele fui eu")
						perguntas--
						interrogatorio()
					pare
				}
				interrogatorio()
				
			pare
			caso '2':
				pregunta2 = pergunta
				escolha(pergunta)
				{
					caso 'a':
						// a) Qual é o seu relacionamento com o senhor Arnaldo?
						escrevaa("/nMARIO: Nenhum, eu era apenas o monitor de câmeras, nunca tive uma relação próxima com ele.", velo) // nao eram proximos entao...
						escrevaa("/nFILIPA: Sou uma grande investidora nos negócios da família. Tive algumas desavenças, mas nada que não pudesse ser resolvido.", velo) //que tipo de desavencas?
						escrevaa("/nMAFALDA: Eu tive um caso com ele uma vez, mas acabou há muito tempo. Ele era um bom patrão.", velo) //suspeito ter um caso com um "bom patrao" e continuar trabalhando c ele
						escrevaa("/nALEXANDRE: Eu sou só um estagiário, não tinha uma relação especial com ele.", velo) //faz sentido....
						escrevaa("/nJOSIANE: Ele sempre foi um bom marido. Não entendo por que alguém faria mal a ele!", velo)//Talvez ela nao saiba de algo?
						escrevaa("/nLUTER: Eu e ele somos amigos de longa data ",velo) //
						escrevaa("/nLIAH: Eu nuca tive muito contato com ele ",velo) //
					pare
					caso 'b':
						// b) Você já teve algum problema com o senhor Arnaldo no passado?
						escrevaa("/nMARIO: Não, nunca tivemos problemas. Sempre mantivemos uma relação profissional tranquila, embora às vezes houvesse desentendimentos sobre horários.", velo)
						escrevaa("/nFILIPA: Sim, tivemos algumas desavenças em relação ao projeto anterior. Ele era muito exigente e eu não concordava com algumas de suas decisões.", velo)//motivacao boa para querer tomar o lugar dele
						escrevaa("/nMAFALDA: Não, sempre me tratei bem. Ele era gentil e respeitoso comigo, nunca tivemos desavenças.", velo)//parece esconder algo, por que eles terminaram?
						escrevaa("/nALEXANDRE: Nunca tive problemas com ele. Ele sempre foi legal comigo, mas ouvi rumores sobre desentendimentos com outras pessoas.", velo)//tem varios pelo jeito
						escrevaa("/nJOSIANE: Sim, tivemos algumas discussões sobre a maneira como ele conduzia os negócios. Às vezes ele era muito rígido e isso gerava conflitos.", velo)//ela concorda com a filipa... sus
						escrevaa("/nLUTER: Eu sempre o apoiei em tudo, por mais que ele fosse um pouco cabeça dura as vezes ",velo) //
						escrevaa("/nLIAH: Não, não eu nunca tive muito contato com ele ",velo) //
					pare
					caso 'c':
						// c) Como você conheceu o senhor Arnaldo?
						escrevaa("/nMARIO: Conheci o senhor Arnaldo através do meu trabalho na empresa. Ele trabalhou um tempo na empresa como seguranca sabia?.", velo)//mas ele nao tinha nenhuma relacao com ele na ultima resposta...? bom, o jogador nao dabe disso
						escrevaa("/nFILIPA: O conheci durante uma reunião do conselho. Ele estava apresentando um projeto e eu fiquei impressionada com sua visão de mundo.", velo)//oq exatamete ele fazia?
						escrevaa("/nMAFALDA: Conheci o senhor Arnaldo quando comecei a trabalhar na casa dele. Fui contratada como empregada doméstica e logo estabelecemos uma boa relação.", velo) //boa ate dms
						escrevaa("/nALEXANDRE: Eu o vi pela primeira vez minha mae trouxe um amigo dela para casa. Desde então, sempre o vi nos eventos em que ela me levava para trabalhar.", velo)//entao ele o conhece desde ciranca, parece estranho nao desenvolver nehnum sentimento em relacao a ele
						escrevaa("/nJOSIANE: Conheci o Arnaldo em uma festa da alta sociedade. Ele era muito carismático e logo se tornou um amigo da nossa família.", velo)
						escrevaa("/nLUTER: Nós somos velhos amigos de infancia ",velo) //
						escrevaa("/nLIAH: Liah vomita antes de responder então você pede para que ela saia da sala e va ao medico ver o que ocorreu mas ela quer continuar ",velo) //
					pare
					caso contrario:
						erro("porque voce faz isso comigo...")
						perguntas--
						interrogatorio()
					pare
				}
			pare
			caso '3':
				pregunta3 = pergunta
				escolha(pergunta)
				{
					caso 'a':
						// a) Qual era o seu objetivo naquele local?
						escrevaa("/nMARIO: Estava trabalhando com as cameras, mas nao durou muito ja que elas queimaram", velo)//ele nao reportou a ninguem...?
						escrevaa("/nFILIPA: Eu estava lá para discutir questões relacionadas ao desenvolvimento do projeto e garantir que todas as partes interessadas estivessem alinhadas.", velo)//"projeto"
						escrevaa("/nMAFALDA: Meu objetivo era manter o clima da festa ativo e alegre...", velo)//na limpeza?
						escrevaa("/nALEXANDRE: Eu estava lá para ajudar minha mae no evento que o senhor Arnaldo organizou. Era uma oportunidade de aprender com pessoas mais velhas.", velo)
						escrevaa("/nJOSIANE: Eu estava no local para apoiar o Arnaldo em sua apresentação e garantir que ele tivesse todo o suporte necessário durante o evento.", velo)
						escrevaa("/nLUTER: Comemorar a festa do filho do meu amigo ",velo) //
						escrevaa("/nLIAH: Dançar e curtir um pouco com meu namorado ",velo) //
					pare
					caso 'b':
						// b) Você teve algum desentendimento com alguém antes do ocorrido?
						escrevaa("/nMARIO: Sim, tive uma discussão com o senhor Arnaldo sobre o projeto. Ele não concordava com algumas das minhas propostas.", velo)
						escrevaa("/nFILIPA: Houve um pequeno desentendimento com a empregada sobre a organização do evento, mas nada sério.", velo)//Mafalda?
						escrevaa("/nMAFALDA: Sim, tive um desentendimento com o senhor Arnaldo sobre o horário em que deveria iniciar a limpeza. Ele queria que eu começasse mais cedo.", velo)//ah,bom
						escrevaa("/nALEXANDRE: Não, eu não tive desentendimentos com ninguém. Eu estava apenas ajudando e tentando ficar fora de problemas.", velo)//sera que ele e problematico?
						escrevaa("/nJOSIANE: Infelizmente, sim. Tive uma discussão leve com o Mario sobre a forma como ele estava abordando o projeto, mas já estava tudo resolvido antes do ocorrido.", velo)//denovo esse projeto!
						escrevaa("/nLUTER: Não sou algem bem serio e reservado ",velo) //
						escrevaa("/nLIAH: Nunca tive uma conversa muito longa com ele ",velo) //
					pare
					caso 'c':
						// c) Alguma vez já teve um motivo para fazer mal ao senhor Arnaldo?
						escrevaa("/nMARIO: Não, nunca tive um motivo para fazer mal ao senhor Arnaldo. Apesar das nossas divergências, sempre mantive o respeito.", velo)
						escrevaa("/nFILIPA: Nunca! Ele foi muito bom para mim. Tive algumas desavenças, mas nunca pensei em fazer mal a ele.", velo)
						escrevaa("/nMAFALDA: Não, de forma alguma! Eu só queria o melhor para ele e para os projetos que trabalhávamos juntos.", velo)
						escrevaa("/nALEXANDRE: Jamais! Ele sempre foi um ótimo chefe e eu só o respeitava.", velo)
						escrevaa("/nJOSIANE: Não! Eu tinha muito respeito por ele. Sempre foi um bom marido e nunca pensei em machucá-lo.", velo)
						escrevaa("/nLUTER: Ah todo grande impresario tem inimigos, mas eu claramente não sou um deles ",velo) //
						escrevaa("/nLIAH: Não ele sempre foi muito legal com a minha mãe ",velo) //
					pare
					caso contrario:
						erro("pergunta secreta? nao so o mesmo de sempre..")
						perguntas--
						interrogatorio()
					pare
				}
			pare
			caso '4':
				pregunta4 = pergunta
				escolha(pergunta)
				{
					caso 'a':
						// a) Você percebeu alguma coisa estranha antes do ocorrido?
						escrevaa("/nMARIO: Não, estava tudo tranquilo. Eu não percebi nada fora do normal até o momento do acidente.", velo)
						escrevaa("/nFILIPA: Estava tudo normal até então. Não percebi nada que me chamasse a atenção antes do acidente.", velo)
						escrevaa("/nMAFALDA: Eu não percebi nada estranho. A festa estava bem animada e todos estavam se divertindo.", velo)
						escrevaa("/nALEXANDRE: Nada que eu possa lembrar. Estava muito ocupado ajudando na organização da festa.", velo)
						escrevaa("/nJOSIANE: Não, estava tudo normal. A única coisa estranha foi o barulho repentino antes do acidente.", velo)
						escrevaa("/nLUTER: Não apenas converssas de negocios ",velo) //
						escrevaa("/nLIAH: Não estave dançando e nem liguei para isso ",velo) //
					pare
					caso 'b':
						// b) Alguém parecia nervoso ou inquieto?
						escrevaa("/nMARIO: Não, não notei ninguém nervoso. Todos pareciam estar se divertindo e aproveitando a festa.", velo)
						escrevaa("/nFILIPA: Não, não havia ninguém que parecesse nervoso. Todos estavam animados para a festa.", velo)
						escrevaa("/nMAFALDA: Não, ninguém parecia nervoso. O ambiente era festivo e descontraído.", velo)
						escrevaa("/nALEXANDRE: Não, todos estavam animados. Não vi ninguém que parecesse ansioso ou inquieto.", velo)
						escrevaa("/nJOSIANE: Não, tudo estava tranquilo. Apenas o senhor Arnaldo estava um pouco mais agitado do que o normal.", velo)
						escrevaa("/nLUTER: Como é que eu vou saber eu cheguei um pouco antes do discurso ",velo) //
						escrevaa("/nLIAH: Eu lembro de ver o Alexandre nervoso por algo mas não sei o que era ",velo) //
					pare
					caso 'c':
						// c) Alguma vez você viu alguém agindo de forma suspeita?
						escrevaa("/nMARIO: Não, não vi ninguém agindo de forma suspeita. A festa estava cheia de pessoas e todos pareciam felizes.", velo)
						escrevaa("/nFILIPA: Não, tudo parecia normal. Não vi ninguém se comportando de maneira estranha ou suspeita.", velo)
						escrevaa("/nMAFALDA: Não, a festa estava animada e não notei comportamentos estranhos entre os convidados.", velo)
						escrevaa("/nALEXANDRE: Não, eu não vi ninguém se comportando de forma estranha. Todos estavam se divertindo.", velo)
						escrevaa("/nJOSIANE: Não, não vi ninguém que me deixasse desconfortável. Estava tudo tranquilo.", velo)
	
						escrevaa("/nLUTER:  ",velo) //
						escrevaa("/nLIAH:  ",velo) //
					pare
					caso contrario:
						erro("Eu nao aguento mais")
						perguntas--
						interrogatorio()
					pare
				}
			pare
			caso '5':
				pregunta5 = pergunta
				escolha(pergunta)
				{
					caso 'a':
						// a) Você ouviu algo sobre a relação do senhor Arnaldo com os convidados?
						escrevaa("/nMARIO: Ouvi que ele estava tendo algumas desavenças com alguns dos convidados, mas não conheço os detalhes.", velo) //os outros?
						escrevaa("/nFILIPA: Sim, ele tinha um histórico de discussões com alguns deles. Não posso dar muitos detalhes, mas ele parecia irritado.", velo) //irritado, sera que ele brigou?
						escrevaa("/nMAFALDA: Não, não ouvi nada sobre a relação dele com os convidados. Ele sempre foi cordial.", velo)
						escrevaa("/nALEXANDRE: Não, não sabia de nada. Todos pareciam se divertir juntos e nada parecia fora do normal.", velo)
						escrevaa("/nJOSIANE: Sim, ouvi rumores sobre discussões passadas. Ele estava muito nervoso, mas não sei exatamente o que aconteceu.", velo) //talvez ele soubesse o que ia por vir
						escrevaa("/nLUTER: Duvido que ele seria rude com algem ",velo) //
						escrevaa("/nLIAH: Lembro dele comprimentaar a todo muito gentil ",velo) //
					pare
					caso 'b':
						// b) Você notou alguma briga ou discussão?
						escrevaa("/nMARIO: Não, não vi nenhuma briga. Tudo estava calmo e as pessoas pareciam se divertir.", velo)
						escrevaa("/nFILIPA: Não, não vi nenhuma briga. Apenas ouvi algumas conversas animadas.", velo)
						escrevaa("/nMAFALDA: Não, tudo estava tranquilo. Não houve discussões durante a festa.", velo)
						escrevaa("/nALEXANDRE: Não, tudo estava pacífico. Estava mais focado na organização do que nas interações pessoais.", velo)
						escrevaa("/nJOSIANE: Não, não vi nenhuma briga. Tudo estava tranquilo e normal.", velo)
						escrevaa("/nLUTER: Não esse pessoal não sabe se divertir muito ",velo) //
						escrevaa("/nLIAH: Não apenas comversas de negocios ",velo) //
					pare
					caso 'c':
						// c) Você teve conhecimento de algum problema entre o senhor Arnaldo e os convidados?
						escrevaa("/nMARIO: Sim, eu sabia que havia algumas desavenças entre ele e alguns convidados, mas não sei os detalhes.", velo)
						escrevaa("/nFILIPA: Sim, ouvi rumores sobre discussões anteriores, mas não presenciei nada.", velo)
						escrevaa("/nMAFALDA: Não, não soube de problemas. Todos pareciam se dar bem, pelo menos na superfície.", velo)
						escrevaa("/nALEXANDRE: Não, não soube de nada. Todos estavam se divertindo e não notei tensão.", velo)
						escrevaa("/nJOSIANE: Não, tudo parecia tranquilo. Eu estava focado em minha função e não ouvi nada a respeito.", velo)
						escrevaa("/nLUTER: Nâo ele smpre foi um homem bom ",velo) //
						escrevaa("/nLIAH: Nâo não ele e meio reservado ",velo) //
					pare
					caso contrario:
						erro("o cara nem pra deixar vazio, ta testando o sistema de erro, so pode")
						perguntas--
						interrogatorio()
					pare
				}
			pare
			caso '6':
				cenaCrime()
			pare
	}
}
	
	funcao cenaCrime()
	{
		u.aguarde(300)
		limpa()
		escrevaa("Após interrogar todos os suspeitos e reunir várias informações, o detetive"+nomeJogador+" se encontra em um dilema. Mas antes que possa raciocinar ele ve Liah caindo no chão desmaiada e fala para sua mãe levala ao medico e pede para ser avisado do estado de Liah . Então ele decide que é hora de revisitar o local do crime. Mas no caminho ele recebe uma ligação anonima que dizia: Ola caro deterive espero que goste do presente que deixei a sua casa. O detetive sente um aperto no peito ao fim de ligação mas ele esta sem muito tempo para ir até sua casa./na) Ir para casa conferir o que acoteceu./nb) Pedir para que outro agente va para a casa e ir checar o local do crime./n",velo)
		leia(input)
		se(input == "")
			{
				input = "a"
		}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				 escrevaa("Eu acho melho ir para minha casa checar o que aconteceu. Ao chegar em casa você se depara com as luzes apagada mas ao acendelas voce não acredita no que esta vendo. Você ve seu cachorro a Alfred pendurado pela coleira no ventilado de teto. -30 de sanidade. ",velo)
				 sanidade -= 30
				 //oq eh esse juri("josiane")
			pare
			caso 'b':
				escrevaa("É melho ir para a cena do cime e deixa que outor agente verifique minha casa a essa altura algem quer a minha cabeça em uma bandeja e eu não posso correr tal risco",velo)
       			//advogado()
			pare
			caso contrario:
				erro("Bom! EU tentei!")
				lenco()
			pare
		}
		inteiro gambiarra = espere(500)
		limpa()
		escrevaa("Detetive "+nomeJogador+" observa a área onde o Sr. Arnaldo caiu. Ele se depara com alguns itens que parecem fora do lugar: algumas câmeras quebradas, uma garrafa de vinho quebrada, um lenço ensanguentado e documentos . Ele percebe que esses detalhes podem ser fundamentais para resolver o mistério./na) Investigar a garrafa de vinho quebrada./nb) Examinar o lenço ensanguentado./nc) Ler os documentos./nd) Deixar o local e voltar para interrogar novamente um suspeito./n",velo)
		leia(input)
		se(input == "")
			{
				input = "a"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				vinho()
			pare
			caso 'b':
				lenco()
			pare
			caso 'c':
				documentos()
			pare
			caso 'd':
				//outro()
			pare
			caso contrario:
				erro("ahhh, chega de tanta investigacaooooo")
				cenaCrime()
			pare
		}
	} 
	funcao vinho()
	{
		vinhoLido = falso
		escrevaa("Ao examinar a garrafa, "+nomeJogador+" pode perceber que ela nao era um vinho qualquer, e com certeza nao era a que estava sendo distribuida na festa./nEsta garrafa parecia muito mais.... cara..../na)Encontrar informações sobre quem comprou a garrafa e interrogar essa pessoa./nb)Usar a garrafa como uma pista para deduzir quem estava em posse dela.",velo)
		leia(input)
		se(input == "")
			{
				input = "a"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				   escreva("A garrafa apresenta um novo suspeito!")
					//advogado()
			pare
			caso 'b':
					 escreva("Existem digitais nessa garafa de vinho deveria mendar para examinar... Apos um tempo foi revelado que as digitais batem com as de Alexandre")
					//juri("filipa")
			pare
			caso contrario:
			erro("Ta me tirando fi?")
			vinho()
			pare
		}
	}
	funcao lenco()
	{
		lencoLido = verdadeiro
		escrevaa("Você examina o lenço ensanguentado e encontra um monograma. Isso indica que pertence a alguém específico./na) Descobrir a quem pertence o lenço e confrontá-lo./nb) Tentar encontrar impressões digitais no lenço.",velo)
		leia(input)
		se(input == "")
			{
				input = "a"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				 escrevaa("O lenço posui um L bordado",velo)
				 //juri("Luter")
			pare
			caso 'b':
				escrevaa("As impreções digitas no lenço entam muito ruins para serem indentificadas. -5 de sanidade",velo)
				sanidade -= 5
            			//advogado()
			pare
			caso contrario:
				erro("Bom! EU tentei!")
				lenco()
			pare
		}
	}
	
	funcao documentos()
	{
		documentoLido = verdadeiro
		 escrevaa("Os documentos estao ilegiveis! Ha vinho por toda parte, a unica coisa que consigo ler eh o contato de um advogado.../na) Entrar em contato po conta prooria com o advogado para obter mais informações./nb) Pedira para a agencia checar o numero de telefone./n",velo)
		leia(input)
		se(input == "")
			{
				input = "a"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				escrevaa("Droga só escuto uma mensagem de voz. -5 sanidade",velo)
				sanidade -= 5
				//advogado()
			pare
			caso 'b':
				escrevaa("Isso pode levar algum tempo então talves eu devesse ir para o meu escritori esperar a comfirmação",velo) //Ele deve resebr a noticia no outro dia
            		//mario()
            
			pare
			caso contrario:
			erro("Meh, pra que trabalhar neh? vou eh voltar p casa")
			documentos()
			pare
		}
	}
	funcao final()
	{
	    escrevaa("No meio de noite você acorda com o barulho de uma ligação do alexandre confesando que cometeu o crime e empurou a vitima mas derepente a ligação corte e uma voz misterioza fala para você encontrala em sua casa na rua Abidu 99/n", velo)
	    escrevaa("Então mesmo resioso você desside ir ate o local /n", velo)
	    escrevaa("Chegando ao local você encontra em frente a uma casa com uma placa de alugace na frente com um portão de ferro seme aberto voce desside entrar para ver a situação mas derepente foce toma um golpe nas costas e apaga./n", velo)
	    escrevaa("Quando você acorda voce esta sendado em uma cadeira em frenta a mesa e do outro lado Luter te olha e fala a você finalmente acordou /n", velo)
	    escrevaa("Luter: É uma pena o garoto ter aberto a boca mas eu ja esperava por isso, e antes que pense, não eu não matei ele afinal ele tem um grande futuro pela frente. -5 de sanidade /n", velo)
	    sanidade -= 5
	    escrevaa("Você: Porque você fes isso? /n", velo)
	    escrevaa("Luter: Ha eu sou o fantasma daquela empresa e voce sabe disso, eu estudei sobre voce inclusive,(Luter fala isso emquanto te serve um copo de chá) eu li sobre os seus casos anteriores e que voce toma remedios para se controlar. -5 de sanidade /n", velo)
	    sanidade -= 5
	    escrevaa("Luter: Ta vmos direto ao assunto. -5 de sanidade /n", velo)
	    sanidade -= 5
	    escrevaa("Você: É um teste de DNA de Liah. -5 de sanidade /n", velo)
	    sanidade -= 5
	    escrevaa("Luter: Agora voce entendi quando eu digo que ele tem um futuro brilhante pela frente -5 sanidade /n", velo)
	    sanidade -= 5
	    escrevaa("Voce pula em cima de Luter e comessa grita e pergunta o porque luter esta fazendo isso. -10 de sanidade /n", velo)
	    sanidade -= 10
	    escrevaa("Luter: Vamos me mate voce só vai me ajudar fazendo isso. Voce sabe que Liah vai presisar do Alexandre para cuidar de criança e ja que o dinhero da empresas vai para ele; Ha espera eu ainda não te contei essa´parte né. -999 de sanidade/n", velo)
	    sanidade -= 999
	    escrevaa("Luter: Então vamos voce deside, /na)Entregar as provas do caso./nb)Matar Luter/nc)Deixa o caso sem resolução. /n", velo)
	    u.aguarde(300)
		se(input == "" ou nao ti.cadeia_e_caracter(input))
			{
				input = "a"
			}
		escolha(ti.cadeia_para_caracter(input))
		{
			caso 'a':
				 escrevaa("Final 1: Voce entrega o caso e Alexandre e Luter vão presos por seus crimes, com Alexandre pegando 10 anos de cadeia e Luter 15 anos.",velo)
			pare
			caso 'b':
				escrevaa("Você mata luter com suas prorias mãos, então o caso se da por eserado, e você vai preso em um manicomio, mas ao final de su julgamento se sente feliz por ver Alexandre e Liah felizes comprando o enchoval o bebe na loja emfrente ao tribunal.",velo)
			pare
			caso 'c':
				escrevaa("",velo)
			caso contrario:
				erro("Estraga prazeres...")
				lenco()
			pare
		}
	}
	    
	funcao ajustaCredibilidade(inteiro valor)
	{
	    credibilidade += valor
	    se(credibilidade < 0)
	    {
	        credibilidade = 0
	    }
	}
	
	funcao escrevaa(cadeia texto, inteiro velocidadeSeg)
	{						
	    caracter letra
	    caracter letraAntes = ' '
	    inteiro j = 0
		
	    para(inteiro i = 0 ; i < tx.numero_caracteres(texto) ; i++)
	    {	
	        se (i != 0)
	        {
	            letraAntes = tx.obter_caracter(texto,i-1)
	        }
	        letra = tx.obter_caracter(texto, i)
	        se(j == 141 ou (letra == 'n' e (letraAntes == '/')))
	        {
	            escreva("\n")
	            j = 0 
	        }
	        se(letra == '/' ou (letraAntes == '/' e (letra == 'n')))
	        {
	            escreva("")
	        }
	        senao
	        {
	            escreva(letra)
	        }
	        j++
			
	        escolha(letra)
	        {
	            caso ' ': u.aguarde(0) pare				
	            caso ',': u.aguarde(velocidadeSeg * 3) pare	
	            caso ':': u.aguarde(velocidadeSeg * 3) pare	
	            caso ';': u.aguarde(velocidadeSeg * 3) pare		
	            caso '.': u.aguarde(velocidadeSeg * 5) pare			
	            caso '!': u.aguarde(velocidadeSeg * 5) pare				
	            caso '?': u.aguarde(velocidadeSeg * 5) pare				
	            caso contrario: u.aguarde(velocidadeSeg) pare
	        }
	    }
	}
	funcao inteiro espere (inteiro valor)
	{
		u.aguarde(valor)
		retorne 0
	}
	funcao erro(cadeia oqFalar)
	{
	    escrevaa(oqFalar, velo)
	    u.aguarde(velo)
	    escrevaa("Que ideia boba! Voltando aos meus pensamentos normais...", velo)
	    u.aguarde(velo)
	    limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 31687; 
 * @DOBRAMENTO-CODIGO = [34, 41, 58, 68, 185, 215, 253, 461, 495, 521, 547, 574, 587, 610, 635, 692, 707, 722, 783, 792, 802, 811, 824, 830, 839, 848];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
 */
