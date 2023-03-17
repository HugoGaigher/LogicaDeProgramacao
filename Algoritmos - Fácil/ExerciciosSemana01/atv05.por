programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real P, E, M

		escreva("Informe o peso pescado: ")
		leia(P)
		limpa()

		se(P>50){
			E = P - 50
			M = 4*E
			E = m.arredondar(E, 2)
			M = m.arredondar(M, 2)		
			}
		senao{
			E = 0.0
			M = 0.0
		}
		escreva("Valor da multa: R$", M)
		escreva("\nValor excedente: ", E, "kg")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */