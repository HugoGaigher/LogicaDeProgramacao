programa
{
	
	funcao inicio()
	{
		const inteiro MAIORIDADE = 18
		real idade
		logico maior_de_idade

		escreva("Qual sua idade? ")
		leia(idade)

		se(idade > MAIORIDADE)
		{
			maior_de_idade = verdadeiro
		}
		senao
		{
			maior_de_idade = falso
		}

		escreva("Maior de idade = ", maior_de_idade)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 306; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */