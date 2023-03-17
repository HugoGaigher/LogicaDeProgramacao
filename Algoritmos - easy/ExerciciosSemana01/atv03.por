programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, n3
		escreva("Insira os números a serem comparados: \n")
		leia(n1)
		leia(n2)
		leia(n3)

		limpa()

		escreva("O menor número é: ")
		
		se(n1 < n2){
			
			se(n1 < n3){
				escreva(n1)
			}
			
			senao{
				escreva(n3)
			}
			
		}
		
		senao se(n2 < n3){
			escreva(n2)
			
		}
		
		senao{
			escreva(n3)
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 110; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */