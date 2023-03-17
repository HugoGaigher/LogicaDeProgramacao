programa
{
	
	funcao inicio()
	{
		real nota1, nota2, media
		const real MEDIA_PARA_APROVACAO = 6.0

		escreva("Qual sua primeira nota?\n\n ")
		leia(nota1)
		escreva("\n\nQual sua segunda nota?\n\n ")
		leia(nota2)
		escreva("\n\n")

		media = (nota1 + nota2)/2

		escreva("Sua média foi ", media, ".\n\n")

		se(media >= MEDIA_PARA_APROVACAO){
			escreva("-----------------------------\n\n\n")
			escreva("Parabéns você foi aprovado.")
			escreva("\n\n\n-----------------------------")
		}
		senao{
			escreva("-----------------------------\n\n\n")
			escreva("Infelizmente você foi reprovado.")
			escreva("\n\n\n-----------------------------")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */