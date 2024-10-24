programa
{
	//Jogo de investigacao criminal
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ti

	//define a velocidade de texto
		inteiro velo = 10
	//serve para carregar todos os caracteres que o usuario usa durante o jogo
		cadeia inputCaracter = "a"
		cadeia input 
	//autoexplicativo
		cadeia nomeJogador
	//carrega em qual pergunta o jogador esta
	inteiro perguntas = 1
	//Segura cada escolha que o jogador fez, importante para definir finais
	cadeia escolhasFeitas = ""
	//define quais fichas ja foram lidas
	cadeia fichasLidas = ""
	inteiro credibilidade = 100
	//Estes logicos servem para definir quais fichas devem ser lidas!
		logico a = verdadeiro
		logico b = verdadeiro
		logico c = verdadeiro
		logico d = verdadeiro
		logico E = verdadeiro

	funcao inicio()
	{
		inicializar()
	}
	//Da um nome ao usuario
	funcao inicializar()
	{
		escrevaa("defina a velocidade do texto em milisegundos!",50)
		leia(input)
		enquanto(nao(ti.cadeia_e_inteiro(input,velo)))
		{
			escrevaa("este nao e um valor valido!",50)
			leia(input)
		}
		velo = ti.cadeia_para_inteiro(input, velo)
		escrevaa("POLICIAL:\"Parado ai! Voce nao pode entrar na unidade sem uma identidade!\" /nQual meu nome? ",velo)
		leia(nomeJogador)
		escrevaa("\"Meu nome e "+ nomeJogador + " e eu sou o detetive encarregado do caso do Sr.Arnaldo, a minha identidade esta aqui....\"/nPOLICIAL:\"Pode passar, por agora...  \"", velo)
		novoJogo()
	}
	//Conta o problema principal
	funcao novoJogo()
	{ 
		limpa()
		
		escrevaa("CAPITAO:\"O Sr.Arnaldo morreu nesta manha de quinta-feira, no aniversario de seu filho Junior de 13 anos. Ele caiu do camarote de sua mansao *por acidente*, mas a esposa insiste que houve um assassinato. Entre nos, eu acho que ele so estava passando da conta nos pileques... Aqui estao as fichas das testemunhas e principais suspeitos da investigacao detetive "+ nomeJogador +", boa sorte.\"",velo)
		u.aguarde(velo)
		apresentar()
	}
	//apresenta os personagens, baseado em quais fichas ainda nao foram lidas	
	funcao apresentar()
	{
		para (inteiro i = tx.numero_caracteres(fichasLidas);i>0;i--)
		{
			se(tx.extrair_subtexto(fichasLidas,i,i)=="a")
			{
				a=falso
			}
			se(tx.extrair_subtexto(fichasLidas,i,i)=="b")
			{
				b=falso
			}
			se(tx.extrair_subtexto(fichasLidas,i,i)=="c")
			{
				c=falso
			}
			se(tx.extrair_subtexto(fichasLidas,i,i)=="d")
			{
				d=falso
			}
			se(tx.extrair_subtexto(fichasLidas,i,i)=="e")
			{
				E=falso
			}
		}
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
				personagem = "a"
			}
			//cada uma dessas chama uma funcao que retorna a ficha completa.
			escolha (ti.cadeia_para_caracter(personagem))
			{
				caso 'a':
					se(a)
					{
						escrevaa(leituraFichas("ALEXANDRE MIKAL","19/09/2011","uma casinha, propriedade da mae, MAFALDA","menor aprendiz na empresa do falecido"),velo)
						fichasLidas = fichasLidas+"a"
					}
				pare
				caso 'b':
					se(b)
					{
						escrevaa(leituraFichas("MAFALDA MIKAL","12/02/2000","sua casa propria no suburbio","secretaria e organizadora principal da empresa"),velo)
						fichasLidas = fichasLidas+"b"
					}
				pare
				caso 'c':
					se(c)
					{
						escrevaa(leituraFichas("JOSIANE FERNANDA DE LUCAS","15/07/1985","uma casa, propriedade do falecido","esposa trofeu"),velo)
						fichasLidas = fichasLidas+"c"
					}
				pare
				caso 'd':
					escrevaa(leituraFichas("MAIO NIN TENDO BROS","02/03/1983","Estacao Play","faz-tudo"),velo)
					fichasLidas = fichasLidas+"d"
				pare
				caso 'e':
					escrevaa(leituraFichas("FILIPA LOVIANE","21/12/1988","um bairro nobre","vice-diretora da empresa do falecido"),velo)
					fichasLidas = fichasLidas+"e"
				pare
				caso contrario:
					escrevaa("Eu deveria e voltar pra cama... /n",velo)
					erro()
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
		escrevaa("Devo ler outra ficha?(s ou n)/n",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		escolha(ti.cadeia_para_caracter(inputCaracter))
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
				escrevaa("\"E se eu comesse o papel...?\"/n",velo)
				erro()
				repitaApresentacao()
		}
	}
	caracter pregunta1,pregunta2,pregunta3,pregunta4,pregunta5,pregunta6
	funcao interrogatorio()
	{
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
		caso'6':
			escrevaa("Sexta pergunta: /na)Você sabe de alguém que teria interesse em fazer mal ao falecido ou sua familia? /nb)Alguém lhe pediu para mentir ou omitir alguma informação? /nc)Existe algo que você ainda não mencionou que acha importante? /n",velo)
		pare
		caso '7':
			cenaCrime()
		pare
		}
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		se(ti.cadeia_e_caracter(inputCaracter))
		{
			escolhasFeitas += inputCaracter
		}
		limpa()
		interrogar(perguntas,ti.cadeia_para_caracter(inputCaracter))
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
				pare
				caso 'b':
					// b) Você estava sozinho ou com alguém?
					escrevaa("/nMARIO: Eu estava sozinho, focado nas câmeras de segurança.",velo) //na outra ele estava com filipa, qual e a verdade? Se o usuario fizer uma pergunta, ele nao sabe da outra resposta.
					escrevaa("/nFILIPA: Eu estava sozinha, bebendo",velo) //alguem confrima? essa resposta esta em conflito com a outra tambem...
					escrevaa("/nMAFALDA: Estava organizando as coisas na cozinha, mas tinha outros empregados por perto.Estava com o pessoal da limpeza quando tudo aconteceu. Não vi o que aconteceu, mas ouvi gritos e corri para ver o que era.",velo) //a outra resposta e esta estao coerentes.
					escrevaa("/nALEXANDRE: Eu estava com outros estagiários ajudando na festa, mas não estava ao lado do Sr. Arnaldo.",velo)//nao estava sozinho, os outros confirmariam?
					escrevaa("/nJOSIANE: Eu estava com alguns amigos no palco, esperando minha vez de falar.",velo)//no palco novamente, confirma com a antes

				pare
				caso 'c':
					// c) O que você viu ou ouviu durante o evento?
					escrevaa("/nMARIO: Vi muita gente dançando e bebendo. Não prestei atenção no que estava acontecendo no camarote.",velo)//suspeiro, sendo o homem das cameras....
					escrevaa("/nFILIPA: Eu vi o Sr. Arnaldo discutindo com um dos empregados antes de cair. Parecia estar muito alterado.",velo)//empregados? existem tres empregados que sao suspeitos
					escrevaa("/nMAFALDA: Ouvi gritos e logo em seguida, um estrondo. Todos correram para ver o que tinha acontecido.",velo)
					escrevaa("/nALEXANDRE: Estava no banheiro quando ouvi o barulho. Saí correndo, mas já era tarde.",velo)//estava no banheiro...
					escrevaa("/nJOSIANE: Vi meu marido conversando com algumas pessoas antes de subir para o camarote. Estava tão feliz...",velo)

				pare
				caso 'd':
					// d) Pode descrever exatamente o que aconteceu?
					escrevaa("/nMARIO: Claro! Eu estava monitorando as câmeras quando ouvi um barulho alto na sala principal. Corri para ver o que era e encontrei o Sr. Arnaldo caído no chão.",velo)//estava monitornado, nao bate com a restosta da pergunta c, mas o jogador nao sabe...
					escrevaa("/nFILIPA: Estávamos em meio a uma discussão sobre um novo projeto quando ouvimos o barulho. Corri para a sala e encontrei o Sr. Arnaldo inconsciente.",velo) //uma discussao com quem? algumas vezes sozinha, algumas com outras pessoas...
					escrevaa("/nMAFALDA: Estava na cozinha quando ouvi gritos. Fui até a sala e vi o Sr. Arnaldo no chão, cercado por pessoas preocupadas.",velo)
					escrevaa("/nALEXANDRE: Estava ajudando a montar as mesas quando ouvi um estrondo. Corri para ver e vi o Sr. Arnaldo caído, as pessoas estavam em pânico.",velo)//a do banheiro nao bate, mas as outras poderiam confrimar essa afirmacao
					escrevaa("/nJOSIANE: Eu estava prestes a subir ao palco para falar quando ouvi o barulho. Corri para a sala e encontrei o meu marido no chão, sem se mover.",velo)//ninguem estava la?

				pare
				caso contrario:
					erro()
					perguntas--
					interrogatorio()
				pare
			}
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

				pare
				caso 'b':
					// b) Você já teve algum problema com o senhor Arnaldo no passado?
					escrevaa("/nMARIO: Não, nunca tivemos problemas. Sempre mantivemos uma relação profissional tranquila, embora às vezes houvesse desentendimentos sobre horários.", velo)
					escrevaa("/nFILIPA: Sim, tivemos algumas desavenças em relação ao projeto anterior. Ele era muito exigente e eu não concordava com algumas de suas decisões.", velo)//motivacao boa para querer tomar o lugar dele
					escrevaa("/nMAFALDA: Não, sempre me tratei bem. Ele era gentil e respeitoso comigo, nunca tivemos desavenças.", velo)//parece esconder algo, por que eles terminaram?
					escrevaa("/nALEXANDRE: Nunca tive problemas com ele. Ele sempre foi legal comigo, mas ouvi rumores sobre desentendimentos com outras pessoas.", velo)//tem varios pelo jeito
					escrevaa("/nJOSIANE: Sim, tivemos algumas discussões sobre a maneira como ele conduzia os negócios. Às vezes ele era muito rígido e isso gerava conflitos.", velo)//ela concorda com a filipa... sus

				pare
				caso 'c':
					// c) Como você conheceu o senhor Arnaldo?
					escrevaa("/nMARIO: Conheci o senhor Arnaldo através do meu trabalho na empresa. Ele trabalhou um tempo na empresa como seguranca sabia?.", velo)//mas ele nao tinha nenhuma relacao com ele na ultima resposta...? bom, o jogador nao dabe disso
					escrevaa("/nFILIPA: O conheci durante uma reunião do conselho. Ele estava apresentando um projeto e eu fiquei impressionada com sua visão de mundo.", velo)//oq exatamete ele fazia?
					escrevaa("/nMAFALDA: Conheci o senhor Arnaldo quando comecei a trabalhar na casa dele. Fui contratada como empregada doméstica e logo estabelecemos uma boa relação.", velo) //boa ate dms
					escrevaa("/nALEXANDRE: Eu o vi pela primeira vez minha mae trouxe um amigo dela para casa. Desde então, sempre o vi nos eventos em que ela me levava para trabalhar.", velo)//entao ele o conhece desde ciranca, parece estranho nao desenvolver nehnum sentimento em relacao a ele
					escrevaa("/nJOSIANE: Conheci o Arnaldo em uma festa da alta sociedade. Ele era muito carismático e logo se tornou um amigo da nossa família.", velo)

				pare
				caso contrario:
					erro()
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
				pare
				caso 'b':
					// b) Você teve algum desentendimento com alguém antes do ocorrido?
					escrevaa("/nMARIO: Sim, tive uma discussão com o senhor Arnaldo sobre o projeto. Ele não concordava com algumas das minhas propostas.", velo)
					escrevaa("/nFILIPA: Houve um pequeno desentendimento com a empregada sobre a organização do evento, mas nada sério.", velo)//Mafalda?
					escrevaa("/nMAFALDA: Sim, tive um desentendimento com o senhor Arnaldo sobre o horário em que deveria iniciar a limpeza. Ele queria que eu começasse mais cedo.", velo)//ah,bom
					escrevaa("/nALEXANDRE: Não, eu não tive desentendimentos com ninguém. Eu estava apenas ajudando e tentando ficar fora de problemas.", velo)//sera que ele e problematico?
					escrevaa("/nJOSIANE: Infelizmente, sim. Tive uma discussão leve com o Mario sobre a forma como ele estava abordando o projeto, mas já estava tudo resolvido antes do ocorrido.", velo)//denovo esse projeto!

				pare
				caso 'c':
					// c) Alguma vez já teve um motivo para fazer mal ao senhor Arnaldo?
					escrevaa("/nMARIO: Não, nunca tive um motivo para fazer mal ao senhor Arnaldo. Apesar das nossas divergências, sempre mantive o respeito.", velo)
					escrevaa("/nFILIPA: Nunca! Ele foi muito bom para mim. Tive algumas desavenças, mas nunca pensei em fazer mal a ele.", velo)
					escrevaa("/nMAFALDA: Não, de forma alguma! Eu só queria o melhor para ele e para os projetos que trabalhávamos juntos.", velo)
					escrevaa("/nALEXANDRE: Jamais! Ele sempre foi um ótimo chefe e eu só o respeitava.", velo)
					escrevaa("/nJOSIANE: Não! Eu tinha muito respeito por ele. Sempre foi um bom marido e nunca pensei em machucá-lo.", velo)

				pare
				caso contrario:
					erro()
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
				pare
				caso 'b':
					// b) Alguém parecia nervoso ou inquieto?
					escrevaa("/nMARIO: Não, não notei ninguém nervoso. Todos pareciam estar se divertindo e aproveitando a festa.", velo)
					escrevaa("/nFILIPA: Não, não havia ninguém que parecesse nervoso. Todos estavam animados para a festa.", velo)
					escrevaa("/nMAFALDA: Não, ninguém parecia nervoso. O ambiente era festivo e descontraído.", velo)
					escrevaa("/nALEXANDRE: Não, todos estavam animados. Não vi ninguém que parecesse ansioso ou inquieto.", velo)
					escrevaa("/nJOSIANE: Não, tudo estava tranquilo. Apenas o senhor Arnaldo estava um pouco mais agitado do que o normal.", velo)

				pare
				caso 'c':
					// c) Alguma vez você viu alguém agindo de forma suspeita?
					escrevaa("/nMARIO: Não, não vi ninguém agindo de forma suspeita. A festa estava cheia de pessoas e todos pareciam felizes.", velo)
					escrevaa("/nFILIPA: Não, tudo parecia normal. Não vi ninguém se comportando de maneira estranha ou suspeita.", velo)
					escrevaa("/nMAFALDA: Não, a festa estava animada e não notei comportamentos estranhos entre os convidados.", velo)
					escrevaa("/nALEXANDRE: Não, eu não vi ninguém se comportando de forma estranha. Todos estavam se divertindo.", velo)
					escrevaa("/nJOSIANE: Não, não vi ninguém que me deixasse desconfortável. Estava tudo tranquilo.", velo)

				pare
				caso contrario:
					erro()
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
				pare
				caso 'b':
					// b) Você notou alguma briga ou discussão?
					escrevaa("/nMARIO: Não, não vi nenhuma briga. Tudo estava calmo e as pessoas pareciam se divertir.", velo)
					escrevaa("/nFILIPA: Não, não vi nenhuma briga. Apenas ouvi algumas conversas animadas.", velo)
					escrevaa("/nMAFALDA: Não, tudo estava tranquilo. Não houve discussões durante a festa.", velo)
					escrevaa("/nALEXANDRE: Não, tudo estava pacífico. Estava mais focado na organização do que nas interações pessoais.", velo)
					escrevaa("/nJOSIANE: Não, não vi nenhuma briga. Tudo estava tranquilo e normal.", velo)

				pare
				caso 'c':
					// c) Você teve conhecimento de algum problema entre o senhor Arnaldo e os convidados?
					escrevaa("/nMARIO: Sim, eu sabia que havia algumas desavenças entre ele e alguns convidados, mas não sei os detalhes.", velo)
					escrevaa("/nFILIPA: Sim, ouvi rumores sobre discussões anteriores, mas não presenciei nada.", velo)
					escrevaa("/nMAFALDA: Não, não soube de problemas. Todos pareciam se dar bem, pelo menos na superfície.", velo)
					escrevaa("/nALEXANDRE: Não, não soube de nada. Todos estavam se divertindo e não notei tensão.", velo)
					escrevaa("/nJOSIANE: Não, tudo parecia tranquilo. Eu estava focado em minha função e não ouvi nada a respeito.", velo)

				pare
				caso contrario:
					erro()
					perguntas--
					interrogatorio()
				pare
			}
		pare
	}
}
	funcao cenaCrime()
	{
		escrevaa("Após interrogar todos os suspeitos e reunir várias informações, o detetive"+nomeJogador+" se encontra em um dilema. Ele decide que é hora de revisitar o local do crime, onde o Sr. Arnaldo caiu. Ao chegar na mansão, ele sente uma tensão no ar. As sombras dançam nas paredes enquanto ele examina o ambiente.",velo)
		u.aguarde(500)
		limpa()
		escrevaa("Detetive "+nomeJogador+" observa a área onde o Sr. Arnaldo caiu. Ele se depara com alguns itens que parecem fora do lugar: algumas câmeras quebradas, uma garrafa de vinho quebrada, um lenço ensanguentado e documentos . Ele percebe que esses detalhes podem ser fundamentais para resolver o mistério./na) Investigar a garrafa de vinho quebrada./nb) Examinar o lenço ensanguentado./nc) Ler os documentos./nd) Deixar o local e voltar para interrogar novamente um suspeito./n",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		escolha(ti.cadeia_para_caracter(inputCaracter))
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
				outro()
			pare
			caso contrario:
				erro()
				cenaCrime()
			pare
		}
	}
	funcao vinho()
	{
		escrevaa("Ao examinar a garrafa, "+nomeJogador+" pode perceber que ela nao era um vinho qualquer, e com certeza nao era a que estava sendo distribuida na festa./nEsta garrafa parecia muito mais.... cara..../na)Encontrar informações sobre quem comprou a garrafa e interrogar essa pessoa./nb)Usar a garrafa como uma pista para deduzir quem estava em posse dela.",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		escolha(ti.cadeia_para_caracter(inputCaracter))
		{
			caso 'a':
				   escreva("Você usa a garrafa como pista e encontra um novo suspeito!")
					advogado()
			pare
			caso 'b':
					 escreva("Eh claro que esta garrafa pertence a FILIPA!")
						finalFilipa()
			pare
			caso contrario:
			erro()
			vinho()
			pare
		}
	}
	funcao lenco()
	{
		escrevaa("Você examina o lenço ensanguentado e encontra um monograma. Isso indica que pertence a alguém específico./na) Descobrir a quem pertence o lenço e confrontá-lo./nb) Tentar encontrar impressões digitais no lenço.",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		escolha(ti.cadeia_para_caracter(inputCaracter))
		{
			caso 'a':
				 escrevaa("J.F... O lenço pertence à esposa de Arnaldo.",velo)
            			finalVinganca()
			pare
			caso 'b':
				escrevaa("As impressões digitais levam a um novo suspeito...",velo)
            			advogado()
			pare
			caso contrario:
				erro()
				lenco()
			pare
		}
	}
	funcao documentos()
	{
		 escrevaa("Os documentos estao ilegiveis! Ha vinho por toda parte, a unica coisa que consigo ler eh o contato de um advogado.../na) Entrar em contato com o advogado para obter mais informações./nb) Investigar por que o advogado estava presente na festa./n",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		escolha(ti.cadeia_para_caracter(inputCaracter))
		{
			caso 'a':
				advogado()

			pare
			caso 'b':
				escrevaa("Eu preciso falar com Mario, mesmo que as cameras estejam quebradas, ele deve ter visto algo...",velo)
            		mario()
            
			pare
			caso contrario:
			erro()
			documentos()
			pare
		}
	}
	funcao outro()
	{
	   escrevaa("Você decide voltar e interrogar ALEXANDRE, o estagiario, ele pode ter informações valiosas sobre o que aconteceu naquela noite, sendo um estagiario, ele dificilmente seria foco de atencao.../na) Sobre suas últimas ações na festa./nb) Sobre a relação dele com os outros suspeitos.",velo)
		leia(inputCaracter)
		se(inputCaracter == "")
			{
				inputCaracter = "a"
			}
		alexandre(ti.cadeia_para_caracter(inputCaracter))
	}

	/*
	 * Motivos e Conspiração: Com base no que os personagens disseram, há várias possibilidades. 
	 * Josiane tinha motivos financeiros e menciona que alguém sugeriu que ela omitisse as brigas. 
	 * Filipa e Mario tinham desavenças sobre negócios, e Filipa ouviu uma briga, o que sugere uma 
	 * possível conspiração envolvendo essas figuras de poder. MAFALDA pode ter uma relação emocional 
	 * não resolvida com Arnaldo, enquanto Alexandre parece ser o mais inocente, mas pode esconder algo mais profundo.
	 */
	 funcao mario()
	 {
	 	//o mario chama seu advogado e se recusa a falar, ele e acusado de incompetencia e voce decide fazer um acordo, se ele compartilhar alguma info valiosa
	 	//ele pode falar sobre o projeto que estava fazendo com filipa (se o jogador sabe disso), senao ele a acusa...
    escrevaa("Você decide interrogar Mario novamente, esperando que ele revele algo novo.", velo)
    escrevaa("Mario se mostra evasivo, mas após algumas perguntas incisivas, ele finalmente revela que estava trabalhando com Filipa em um projeto importante.", velo)
    escrevaa("Ele também menciona que as câmeras da festa estavam desligadas, mas nega qualquer envolvimento direto no acidente do Sr. Arnaldo.", velo)
    escrevaa("Embora Mario se mostre relutante em fornecer mais detalhes, você sente que ele sabe mais do que está deixando transparecer.", velo)
    escrevaa("Fim do interrogatório de Mario. Você precisa de mais evidências para continuar.", velo)

	 }
	 funcao alexandre(caracter pregunta)
	 {
	 	//o alexandre nao esta em casa quando o detetive o procura, mas sua mae mafalda sim... ela fala algo entre as linhas de estar muito decepcionada com ele
	 	// e esta muito abalada, o jogador a acusa de esconder um suspeito... 
	 	escrevaa("Você decide ir atrás de Alexandre, o estagiário, para mais respostas.", velo)
	    escrevaa("Ao chegar, você é recebido por Mafalda, a mãe de Alexandre, que se mostra nervosa.", velo)
	    escrevaa("Ela menciona que Alexandre saiu de casa há algumas horas, mas sua atitude sugere que ela está escondendo algo.", velo)
	    escrevaa("Você pressiona, e ela revela que Alexandre ficou perturbado depois da festa, mas insiste que ele não teve nada a ver com o que aconteceu.", velo)
	    escrevaa("Fim do interrogatório. Parece que Alexandre pode saber algo importante, mas ainda é uma peça solta no quebra-cabeça.", velo)
	 }
	 funcao advogado()
	 {
	 	//O advogado, pressionado, estar relacionado com um golpe para derrubar o arnaldo
	 	 escrevaa("Você finalmente decide confrontar o advogado mencionado nos documentos manchados de vinho.", velo)
    escrevaa("Ao ser pressionado, o advogado admite que estava envolvido em uma conspiração para derrubar o Sr. Arnaldo, mas nega qualquer envolvimento direto no acidente.", velo)
    escrevaa("Ele menciona que havia interesses poderosos que queriam se livrar do Sr. Arnaldo por causa de seus negócios questionáveis.", velo)
    escrevaa("Com isso, você tem a confissão de um participante da conspiração, mas será que ele foi o culpado direto?", velo)
    escrevaa("Fim do interrogatório. Novas pistas surgem, mas o mistério ainda não está completamente resolvido.", velo)
	 }
	 //eu preciso usar mais as escolhas do jogadorr!!!
	 funcao juri()
	 {
	 	//aqui sera feita a acusacao no juri, onde o jogador deve provar que o acusado e culpado, o problema e que se ele nao tiver argumentos ele perde CREDIBILIDADE....
	 	 escrevaa("O julgamento final começa, e você é chamado para apresentar suas evidências contra o principal suspeito.", velo)
	    escrevaa("O júri está atento às suas palavras, mas tudo depende da solidez das suas provas.", velo)
	    se (rolar() > 15)  // Sucesso na persuasão
	    {
	        escrevaa("Você apresenta um caso sólido, usando todas as pistas e testemunhos coletados. O júri decide a favor de sua acusação, e o culpado é condenado.", velo)
	        finalAdvogado()
	    }
	    senao
	    {
	        escrevaa("Infelizmente, suas provas não são suficientes para convencer o júri. O caso termina sem uma condenação clara, e o mistério ainda persiste.", velo)
	        finalNaoResolvido()
	    }
	 }

	 //aqui sao os finais que ele pode conseguir a partir da funcao juri!
	 funcao finalAdvogado()
    {
        escrevaa("Você confronta o advogado, que acaba confessando sua participação na conspiração.",velo)
        escrevaa("Ele revela que o Sr. Arnaldo tinha segredos perigosos que não podiam vir à tona.",velo)
        escrevaa("Com a confissão, o caso é encerrado e a verdade é revelada.",velo)
        escrevaa("Fim da história! Você resolveu o mistério.",velo)
    }

    funcao finalAcidente()
    {
        escrevaa("Através das pistas, você descobre que a morte do Sr. Arnaldo foi um trágico acidente.",velo)
        escrevaa("A revelação traz alívio, mas também tristeza, pois a vida não pode ser recuperada.",velo)
        escrevaa("Você se despede dos envolvidos e reflete sobre o valor da vida.",velo)
        escrevaa("Fim da história! Um triste desfecho para um grande mistério.",velo)
    }

    funcao finalVinganca()
    {
        escrevaa("Você descobre que a esposa do Sr. Arnaldo tinha motivos para querer a morte dele.",velo)
        escrevaa("Em um confronto dramático, ela confessa que agiu por vingança.",velo)
        escrevaa("A justiça é feita, mas a história termina em um lamento pela traição.",velo)
        escrevaa("Fim da história! A vingança trouxe apenas dor.",velo)
    }

    funcao finalNaoResolvido()
    {
        escrevaa("Apesar de todas as investigações, o caso permanece envolto em mistério.",velo)
        escrevaa("Você decide deixar a mansão, mas a dúvida sobre o que realmente aconteceu nunca te abandona.",velo)
        escrevaa("Um mistério que ficará para sempre sem resposta.",velo)
        escrevaa("Fim da história! O mistério persiste...",velo)
    }
    funcao finalFilipa()
    {
    	//ainda nao sei oq por aqui, mas se a filipa foi acusada de forma muito rapida acho q ela nn deve ser presa
    escrevaa("Após uma longa investigação, você percebe que todas as pistas apontam para Filipa.", velo)
    escrevaa("Entretanto, a falta de provas conclusivas deixa o caso em uma zona cinzenta.", velo)
    escrevaa("Filipa nega com veemência sua participação, e seu álibi parece se sustentar, mesmo com algumas contradições.", velo)
    escrevaa("No final, o júri decide por falta de provas, e Filipa é absolvida. O caso permanece sem solução oficial, mas você não consegue tirar da cabeça a desconfiança de que ela sabe mais do que admite.", velo)
    escrevaa("Fim da história! Um desfecho sem justiça completa.", velo)

    }
	funcao inteiro rolar()
	{
		//essa funcao pode ser usada para persuasao, por exemplo
		retorne u.sorteia(0,20)
	}
	funcao erro()
	{
		escrevaa("Que ideia boba! Voltando aos meus pensamentos normais...",velo)
		u.aguarde(velo)
		limpa()
	}
	funcao escrevaa(cadeia texto, inteiro velocidadeSeg)
		{						
			caracter letra
			caracter letraAntes = ' '
			inteiro j = 0
			
			para(inteiro i = 0 ; i < tx.numero_caracteres(texto) ; i++)
			{	
				se (i!=0)
				{
					letraAntes=tx.obter_caracter(texto,i-1)
				}
				letra = tx.obter_caracter(texto, i)
				se(j == 149 ou (letra == 'n' e (letraAntes=='/')))
				{
					escreva("\n")
					j = 0 
				}
				se(letra == '/' ou (letraAntes=='/' e (letra=='n')))
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 28942; 
 * @DOBRAMENTO-CODIGO = [160, 661];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */