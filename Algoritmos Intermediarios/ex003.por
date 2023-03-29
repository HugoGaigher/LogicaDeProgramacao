programa
{
	
	funcao inicio()
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

		escreva("O maior número foi: ", maior)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 112; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */