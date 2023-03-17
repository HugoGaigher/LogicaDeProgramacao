programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, maior_num, menor_num

		escreva("Informe o primeiro número: ")
		leia(n1)
		escreva("\nInforme o segundo número: ")
		leia(n2)
		escreva("\nInforme o terceiro número: ")
		leia(n3)
		escreva("\n\n")
		escreva("**************************")
		escreva("\n\nJÁ SEI A RESPOSTA\n\n")
		

		se(n1 > n2){
			se(n2 > n3){
				maior_num = n1
				menor_num = n3
			}
			senao se(n1 > n3){
				maior_num = n1
				menor_num = n2
			}
			senao{
				maior_num = n3
				menor_num = n2
			}
		}
		senao se(n1 > n3){
				maior_num = n2
				menor_num = n3
		}
		senao se(n2 > n3){
				maior_num = n2
				menor_num = n1
		}
		senao{
			maior_num = n3
			menor_num = n1
		}

		escreva("O maior número digitado é: ", maior_num, "\n\n")
		escreva("O menor número digitado é: ", menor_num, "\n\n")

		
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */