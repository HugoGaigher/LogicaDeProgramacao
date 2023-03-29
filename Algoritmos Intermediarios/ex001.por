programa
{
	
	funcao inicio()
	{
		real numero, soma = 0.0
		caracter quer_continuar = 's'

		faca
		{
			escreva("Digite um número: ")
			leia(numero)
			
			soma += numero
			
			escreva("Quer fornecer outro (s/n)? ")
			leia(quer_continuar)
			
		}enquanto(quer_continuar == 's')

		escreva("A soma dos números é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */