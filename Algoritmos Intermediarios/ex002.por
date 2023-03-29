programa
{
	
	funcao inicio()
	{

		inteiro numero

		escreva("Digite um número: ")
		leia(numero)

		para(inteiro i = 0; i<=numero; i++)
		{
			se(i%2 != 0)
			{
				se(i == numero ou i == numero - 1)
				{
					escreva(i)
				}
				senao
				{
					escreva(i, ", ")
				}
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 150; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */