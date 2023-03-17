programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real distancia_andada, passos
		const real METRO_POR_PASSO = 0.82
		
		escreva("Qual a distância em KM? ")
		leia(distancia_andada)
		escreva("Distância em KM = ", distancia_andada)
		
		passos = distancia_andada/(METRO_POR_PASSO/1000)

		escreva("\nQuantidade de passos: ", passos)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */