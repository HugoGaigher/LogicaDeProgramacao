programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia nome
		caracter sexo

		escreva("Qual seu nome?\n\n")
		leia(nome)
		escreva("\n\nQual seu sexo? \n\n")
		leia(sexo)

		

		se(sexo == 'f'){
			escreva("\nBom dia, senhora ", nome)
		}
		senao se(sexo == 'm'){
			escreva("\nBom dia, senhor ", nome)
		}
		senao{
			escreva("Informe um sexo válido")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */