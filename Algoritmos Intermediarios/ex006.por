programa
{
	
	funcao inicio()
	{
		inteiro numero, soma = 0

		escreva("Digite um número: ")
		leia(numero)

		//soma = (numero*(numero+1))/2
		para(inteiro i = 1; i<=numero; i++)
		{
			soma += i
			
		}

		escreva("A soma dos número é igual a ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 201; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */