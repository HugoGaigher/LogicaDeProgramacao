programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{	
		//declarações
		real n1, n2, n3, media, resta

		//leituras
		escreva("Insira a nota 1: ")
		leia(n1)
		escreva("Insira a nota 2: ")
		leia(n2)
		escreva("Insira a nota 3: ")
		leia(n3)

		//cálculos
		media = (n1+n2+n3)/3
		media = m.arredondar(media, 1)
		limpa()

		escreva("Média: ", media, "\n")


		//verificações
		se(media >= 7){
			escreva("Aluno Aprovado")
		}
		
		senao se(media > 4.9){
			escreva("Aluno em prova final\n")
			resta = m.arredondar(10 - media, 1)
			escreva("Restante para aprovação: ", resta)
			
		}
		
		senao{
			escreva("Aluno em recuperação\n")
			resta = m.arredondar(10 - media + 2, 1)
			escreva("Restante para aprovação: ", resta)
		}	
		
	} 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 89; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */