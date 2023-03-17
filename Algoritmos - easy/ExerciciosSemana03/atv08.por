programa
{
	
	funcao inicio()
	{
		real menor_preco, valor1, valor2, valor3
		cadeia nome1, nome2, nome3

		escreva("Usuário me informe o nome do primeiro produto\n\n")
		leia(nome1)
		escreva("\n\nMe informe agora o valor dele\n\n")
		leia(valor1)
		escreva("\n\n-------------------------------------------------\n")

		escreva("Usuário me informe o nome do segundo produto\n\n")
		leia(nome2)
		escreva("\n\nMe informe agora o valor dele\n\n")
		leia(valor2)
		escreva("\n\n-------------------------------------------------\n")

		escreva("Usuário me informe o nome do terceiro produto\n\n")
		leia(nome3)
		escreva("\n\nMe informe agora o valor dele\n\n")
		leia(valor3)
		escreva("\n\n-------------------------------------------------")
		escreva("\n-------------------------------------------------\n")

		//verificador de menor valor
		se(valor1 < valor2)
		{
			se(valor1 < valor3)
			{
				menor_preco = valor1
			}
			senao
			{
				menor_preco = valor3
			}
		}
		senao se(valor2 < valor3)
		{
			menor_preco = valor2
		}
		senao
		{
			menor_preco = valor3
		}

		//verificador de recomendação
		se(menor_preco == valor1)
		{
			escreva("Te recomendo comprar ", nome1)
		}
		senao se(menor_preco == valor2)
		{
			escreva("Te recomendo comprar ", nome2)
		}
		senao
		{
			escreva("Te recomendo comprar ", nome3)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 80; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
