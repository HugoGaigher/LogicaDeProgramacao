programa
{
	
	funcao inicio()
	{
		menu()
		inteiro opcao_escolhida
		leia(opcao_escolhida)
		escreva("\n")
		seletor_programa(opcao_escolhida)	
	}
	funcao menu()
	{
		limpa()
		escreva("SISTEMA MULTITAREFAS")
		escreva("\n_______________________________")
		escreva("\n\n")
		escreva("1 - Programa que calcula passos\n")
		escreva("2 - Programa que calcula notas\n")
		escreva("3 - Programa que dá bom dia\n")
		escreva("4 - Programa que calcula média da turma\n")
		escreva("5 - Programa que calcula maior numero\n")
		escreva("6 - Programa que calcula soma crescente\n")
		escreva("7 - Programa que categoriza as idades\n")
		escreva("8 - Programa que verifica o candidato eleito\n")
		escreva("9 - Programa que cadastra dois usuários\n")
		escreva("10 - Programa que verifica se é positivo ou negativo\n")
		escreva("11 - Programa que calcula quantidade de cédulas")
		escreva("\n\n_______________________________\n\n")
	}
	funcao seletor_programa(inteiro opcao)
	{
		escolha(opcao)
		{
			caso 1:
				calcula_passos()
			pare

			caso 2:
				calcula_notas()
			pare

			caso 3:
				bom_dia()
			pare

			caso 4:
				media_turma()
			pare

			caso 5:
				maior_numero()
			pare

			caso 6:
				soma_dos_n_inteiros()
			pare

			caso 7:
				idade_social()
			pare

			caso 8:
				eleicoes()
			pare

			caso 9:
				cadastro_usuarios()
			pare

			caso 10:
				positivo_ou_negativo()
			pare

			caso 11:
				qtd_cedulas()
			pare

			caso contrario:
				escreva("Digite uma opção válida!")
		}
	}
	funcao calcula_passos()
	{
		real distancia_andada, passos
		const real METRO_POR_PASSO = 0.82
		
		escreva("Qual a distância em KM? ")
		leia(distancia_andada)
		escreva("Distância em KM = ", distancia_andada)
		
		passos = distancia_andada/(METRO_POR_PASSO/1000)

		escreva("\nQuantidade de passos: ", passos)

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			calcula_passos()
		}

		
	}
	funcao calcula_notas()
	{
		real nota1, nota2, media
		const real MEDIA_PARA_APROVACAO = 6.0

		escreva("Qual sua primeira nota?\n\n ")
		leia(nota1)
		escreva("\n\nQual sua segunda nota?\n\n ")
		leia(nota2)
		escreva("\n\n")

		media = (nota1 + nota2)/2

		escreva("Sua média foi ", media, ".\n\n")

		se(media >= MEDIA_PARA_APROVACAO){
			escreva("-----------------------------\n\n\n")
			escreva("Parabéns você foi aprovado.")
			escreva("\n\n\n-----------------------------")
		}
		senao{
			escreva("-----------------------------\n\n\n")
			escreva("Infelizmente você foi reprovado.")
			escreva("\n\n\n-----------------------------")
		}

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			calcula_notas()
		}

		
	}
	funcao bom_dia()
	{
		cadeia nome
		caracter sexo

		escreva("Qual seu nome?\n\n")
		leia(nome)
		escreva("\n\nQual seu sexo? \n\n")
		leia(sexo)

		se(sexo == 'f'){
			escreva("\nBom dia, senhora ", nome)
		}
		senao se(sexo == 'm'){
			escreva("\nBom dia, senhor ", nome)
		}
		senao{
			escreva("Informe um sexo válido")
		}

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			bom_dia()
		}

		
	}
	funcao media_turma()
	
	{
		inteiro quantidade_alunos
		real media_da_turma, notas, soma_notas = 0.0

		escreva("Digite o número de alunos na turma: ")
		leia(quantidade_alunos)

		para(inteiro i = 1; i <= quantidade_alunos; i++)
		{
			escreva("Digite as notas do aluno ", i,":\n")
			para(inteiro j = 1; j<=2; j++)
			{
				leia(notas)
				soma_notas += notas
			}
		}

		media_da_turma = soma_notas/(2*quantidade_alunos)

		escreva("A média da turma foi: ", media_da_turma, "\n")

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			media_turma()
		}
	}
	funcao maior_numero()
	{
		inteiro numero, i = 0, maior = 0

		escreva("Digite os cinco números: \n")
		
		enquanto(i < 5)
		{
			leia(numero)

			se(numero > maior)
			{
				maior = numero
			}

			i+=1
		}

		escreva("O maior número foi: ", maior, "\n")

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			maior_numero()
		}
	}
	funcao soma_dos_n_inteiros()
	{
		inteiro numero, soma = 0

		escreva("Digite um número: ")
		leia(numero)

		//soma = (numero*(numero+1))/2
		para(inteiro i = 1; i<=numero; i++)
		{
			soma += i
			
		}

		escreva("A soma dos número é igual a ", soma, "\n")

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			soma_dos_n_inteiros()
		}
	}
	funcao idade_social()
	{
		inteiro idade, crianca = 0, pre_adolescente = 0, adolescentes = 0, adultos = 0, idosos = 0

		para(inteiro i = 1; i<=10; i++)
		{
			escreva("Digite a idade da pessoa ", i, ": ")
			leia(idade)
			se(idade <= 9)
			{
				crianca += 1
			}

			senao se(idade <= 14)
			{
				pre_adolescente += 1
			}

			senao se(idade <= 21)
			{
				adolescentes += 1
			}

			senao se(idade <= 64)
			{
				adultos += 1
			}

			senao
			{
				idosos += 1
			}
		}

		quebra_de_linha()
		escreva("Quantidade de crianças: ", crianca)
		quebra_de_linha()
		escreva("Quantidade de pré-adolescentes: ", pre_adolescente)
		quebra_de_linha()
		escreva("Quantidade de adolescentes: ", adolescentes)
		quebra_de_linha()
		escreva("Quantidade de adultos: ", adultos)
		quebra_de_linha()
		escreva("Quantidade de idosos: ", idosos)

		quebra_de_linha()

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			idade_social()
		}
		
	}
	funcao eleicoes()
	{
		inteiro controle = 1, qtd_eleitores
		cadeia numero_eleitoral, candidato_eleito = "NINGUÉM"
		inteiro votos_batman = 0
		inteiro votos_coringa = 0
		inteiro votos_labareda = 0
		inteiro votos_robim = 0
		inteiro votos_batgirl = 0
		inteiro votos_brancos_ou_nulos = 0
		inteiro maior_numero_de_votos = 0
		

		escreva("Informe a quantidade de eleitores: ")
		leia(qtd_eleitores)

		faca
		{
			escreva("Eleitor ", controle, " em quem você vota: ")
			leia(numero_eleitoral)

			se(numero_eleitoral == "55")
			{
				votos_labareda += 1
				se(votos_labareda > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_labareda
					candidato_eleito = "LABAREDA"
				}
			}
			
			senao se(numero_eleitoral == "13")
			{
				votos_coringa += 1
				se(votos_coringa > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_coringa
					candidato_eleito = "CORINGA"
				}
			}

			senao se(numero_eleitoral == "12")
			{
				votos_robim += 1
				se(votos_robim > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_robim
					candidato_eleito = "ROBIM"
				}
			}

			senao se(numero_eleitoral == "60")
			{
				votos_batgirl += 1
				se(votos_batgirl > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_batgirl
					candidato_eleito = "BATGIRL"
				}
			}

			senao se(numero_eleitoral == "22")
			{
				votos_batman += 1
				se(votos_batman > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_batman
					candidato_eleito = "BATMAN"
				}
			}
			
			senao
			{
				votos_brancos_ou_nulos += 1
				se(votos_brancos_ou_nulos > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_brancos_ou_nulos
					candidato_eleito = "NULO"
				}
			}
			

			controle += 1
		}enquanto(controle <= qtd_eleitores)

		escreva("\n")
		escreva("Quem obteve mais votos foi: ", candidato_eleito, " com ", maior_numero_de_votos)

		quebra_de_linha()

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			eleicoes()
		}
		
	}
	funcao cadastro_usuarios()
	{
		cadeia senha, login = "", login_anterior = ""

		enquanto(verdadeiro)
		{
			enquanto(login==login_anterior)
			{
				escreva("Digite seu login: ")
				leia(login)
				se(login == login_anterior)
				{
					escreva("Você não pode usar esse login!\n")
				}
			}

			senha = login

			enquanto(senha == login)
			{
				escreva("Digite sua senha: ")
				leia(senha)
				se(senha == login)
				{
					escreva("Esta senha não é segura. Escolha outra!\n")
				}
			}
			
			
		}

		quebra_de_linha()

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			cadastro_usuarios()
		}
	}
	funcao positivo_ou_negativo()
	{
		inteiro controle = 1
		inteiro cont = 0

		enquanto(controle != 0)
		{
			inteiro numero
			escreva("Digite um número: ")
			leia(numero)

			se(numero > 0)
			{
				escreva(numero, " é POSITIVO\n")
				cont++
			}

			senao se(numero < 0)
			{
				escreva(numero, " é NEGATIVO\n")
				cont++
			}

			senao
			{
				controle = 0
			}
			
		}

		escreva("Foram digitados ", cont, " números")

		quebra_de_linha()

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			positivo_ou_negativo()
		}
	}
	funcao qtd_cedulas()
	{
		inteiro valor, qtd_cedulas_de_100 = 0, qtd_cedulas_de_50 = 0, qtd_cedulas_de_20 = 0, qtd_cedulas_de_10 = 0, qtd_cedulas_de_5 = 0, qtd_cedulas_de_2 = 0, qtd_cedulas_de_1 = 0
		const inteiro CEDULADE100 = 100, CEDULADE50 = 50, CEDULADE20 = 20, CEDULADE10 = 10, CEDULADE5 = 5, CEDULADE2 = 2

		escreva("Digite um número inteiro: ")
		leia(valor)


		
		enquanto(valor >= 100)
		{
			se(valor - CEDULADE100 >= 0)
			{
				valor -= 100
				qtd_cedulas_de_100 += 1
			}
		}

		
		enquanto(valor >= 50)
		{
			se(valor - CEDULADE50 >= 0)
			{
				valor -= 50
				qtd_cedulas_de_50 += 1
			}
		}


		enquanto(valor >= 20)
		{
			se(valor - CEDULADE20 >= 0)
			{
				valor -= 20
				qtd_cedulas_de_20 += 1
			}
		}

		enquanto(valor >= 10)
		{
			se(valor - CEDULADE10 >= 0)
			{
				valor -= 10
				qtd_cedulas_de_10 += 1
			}
		}

		enquanto(valor >= 5)
		{
			se(valor - CEDULADE5 >= 0)
			{
				valor -= 5
				qtd_cedulas_de_5 += 1
			}
		}

		enquanto(valor >= 2)
		{
			se(valor - CEDULADE2 >= 0)
			{
				valor -= 2
				qtd_cedulas_de_2 += 1
			}
		}

		enquanto(valor == 1)
		{
			qtd_cedulas_de_1 = 1
			valor -= 1
		}


		se(qtd_cedulas_de_100 >= 1)
		{
			escreva("Notas de 100 reais: ", qtd_cedulas_de_100)
		}

		se(qtd_cedulas_de_50 >= 1)
		{
			escreva("\nNotas de 50 reais: ", qtd_cedulas_de_50)
		}

		se(qtd_cedulas_de_20 >= 1)
		{
			escreva("\nNotas de 20 reais: ", qtd_cedulas_de_20)
		}

		se(qtd_cedulas_de_10 >= 1)
		{
			escreva("\nNotas de 10 reais: ", qtd_cedulas_de_10)
		}

		se(qtd_cedulas_de_5 >= 1)
		{
			escreva("\nNotas de 5 reais: ", qtd_cedulas_de_5)
		}

		se(qtd_cedulas_de_2 >= 1)
		{
			escreva("\nNotas de 2 reais: ", qtd_cedulas_de_2)
		}

		se(qtd_cedulas_de_1 >= 1)
		{
			escreva("\nNotas de 2 reais: ", qtd_cedulas_de_1)
		}

		escreva("Você precisa de\n")
		escreva("Notas de 100 reais: ", qtd_cedulas_de_100)
		escreva("\nNotas de 50 reais: ", qtd_cedulas_de_50)
		escreva("\nNotas de 20 reais: ", qtd_cedulas_de_20)
		escreva("\nNotas de 10 reais: ", qtd_cedulas_de_10)
		escreva("\nNotas de 5 reais: ", qtd_cedulas_de_5)
		escreva("\nNotas de 2 reais: ", qtd_cedulas_de_2)
		escreva("\nNotas de 1 real: ", qtd_cedulas_de_1)

		quebra_de_linha()

		se(voltar_menu())
		{
			deseja_continuar()
		}
		senao
		{
			escreva("\n\n")
			qtd_cedulas()
		}

	}
	funcao logico voltar_menu()
	{
		caracter escolha_usuario
		faca
		{
			escreva("\n\nDeseja voltar ao menu? (s/n) ")
			leia(escolha_usuario)
		}enquanto((escolha_usuario != 's' e escolha_usuario != 'n') ou (escolha_usuario == 's' e escolha_usuario == 'n'))//enquanto((escolha_usuario != 's' e escolha_usuario != 'n') ou (escolha_usuario == 's' e escolha_usuario == 'n'))
		
		se(escolha_usuario == 's')
		{
			retorne verdadeiro
		}

		senao
		{
			retorne falso
		}
	}
	funcao vazio quebra_de_linha()
		{
			escreva("\n")
		}
	funcao deseja_continuar()
	{
		caracter finalizar//dá pra ser uma função
		faca
		{
		escreva("\nDeseja finalizar o programa?(s/n) ")
		leia(finalizar)
		}enquanto((finalizar != 's' e finalizar != 'n') ou (finalizar == 's' e finalizar == 'n'))
		se(finalizar == 'n')
		{
			inicio()
		}
		senao
		{
			escreva("\nObrigado por tudo!")
		}
	}
}

/*
		se(voltar_menu())
		{
			inicio()
		}
		senao
		{
			escreva("\n\n")
			idade_social()
		}
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1524; 
 * @DOBRAMENTO-CODIGO = [11, 32, 30, 82, 107, 145, 177, 210, 240, 266, 324, 425, 468, 512, 642, 661, 665];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */