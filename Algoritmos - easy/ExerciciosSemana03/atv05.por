programa
{
	
	funcao inicio()
	{
		real valor
		const real NULO = 0.0

		escreva("Informe um número: \n\n")
		leia(valor)
		escreva("\n\n")

		se(valor == NULO){
			escreva("Valor nulo")
		}
		senao se(valor > NULO){
			escreva("Valor positivo")
		}
		senao{
			escreva("Valor negativo")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */