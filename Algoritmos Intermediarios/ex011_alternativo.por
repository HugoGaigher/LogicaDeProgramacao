programa
{
	
	funcao inicio()
	{
		inteiro valor, qtd_de_cedulas[7] = {0,0,0,0,0,0,0}
		const inteiro CEDULAS[7] = {100, 50, 20, 10, 5, 2, 1}

		escreva("Digite um número inteiro: ")
		leia(valor)

		para(inteiro i = 0; i < 7; i++)
		{
			enquanto(valor >= CEDULAS[i])
			{
				se(valor - CEDULAS[i] >= 0)
				{
					valor -= CEDULAS[i]
					qtd_de_cedulas[i] += 1
				}
			}	

			se(qtd_de_cedulas[i] >= 1)
			{
				escreva("\nQuantidade de cédulas de ", CEDULAS[i], ": ", qtd_de_cedulas[i])
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */