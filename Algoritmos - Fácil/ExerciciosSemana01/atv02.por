programa
{
	
	/*
	"=" = atribuição
	"==" = igualdade
	*/
	funcao inicio()
	{
		inteiro cor_escolhida

		escreva("+-+-+-+CÓDIGO DAS CORES+-+-+-+\n")
		escreva("1 - Verde\n")
		escreva("2 - Azul\n")
		escreva("3 - Vermelho\n")
		escreva("4 - Preto\n")
		escreva("+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+\n")
		escreva("Insira a cor escolhida: ")
		leia(cor_escolhida)


		se(cor_escolhida == 1){
			escreva("Preço: R$10,00")
		}
		
		senao se(cor_escolhida == 2){
			escreva("Preço: R$20,00")
		}
		
		senao se(cor_escolhida == 3){
			escreva("Preço: R$30,00")
		}
		
		senao se( cor_escolhida == 4){
			escreva("Preço: R$40,00")
		}

		senao{
			escreva("Não temos essa opção")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 625; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */