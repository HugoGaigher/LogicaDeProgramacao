programa
{
	
	funcao inicio()
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 389; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */