programa
{
	
	funcao inicio()
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

		
		


/*
		escreva("Você precisa de\n")
		escreva("Notas de 100 reais: ", qtd_cedulas_de_100)
		escreva("\nNotas de 50 reais: ", qtd_cedulas_de_50)
		escreva("\nNotas de 20 reais: ", qtd_cedulas_de_20)
		escreva("\nNotas de 10 reais: ", qtd_cedulas_de_10)
		escreva("\nNotas de 5 reais: ", qtd_cedulas_de_5)
		escreva("\nNotas de 2 reais: ", qtd_cedulas_de_2)
		escreva("\nNotas de 1 real: ", qtd_cedulas_de_1)
*/
		


		
			
		
		
	}
}

/*
			se(valor - CEDULADE50 >= 0)
			{
				cont += 1
				valor -= 50
				qtd_cedulas_de_50 = cont
			}
*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1792; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 6, 10, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */