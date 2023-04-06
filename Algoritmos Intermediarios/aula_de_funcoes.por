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
		escreva("3 - Programa que dá bom dia")
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

		voltar_menu()

		se(voltar_menu())
		{
			inicio()
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

		voltar_menu()

		se(voltar_menu())
		{
			inicio()
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

		voltar_menu()
		
		se(voltar_menu())
		{
			inicio()
		}
		senao
		{
			escreva("\n\n")
			bom_dia()
		}

		
	}
	funcao logico voltar_menu()
	{
		caracter escolha_usuario
		faca
		{
			escreva("\n\nDeseja voltar ao menu? (s/n) ")
			leia(escolha_usuario)
		}enquanto(escolha_usuario == 's' e nao(escolha_usuario != 'n'))
		
		se(escolha_usuario == 's')
		{
			retorne verdadeiro
		}

		senao
		{
			retorne falso
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2537; 
 * @DOBRAMENTO-CODIGO = [12, 23, 43, 70, 110];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {escolha_usuario, 147, 11, 15};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */