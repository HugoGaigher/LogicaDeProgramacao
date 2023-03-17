programa
{
	
	funcao inicio()
	{
		real salario, Exc, N, C, sal_total

		escreva("Insira o cadastro do funcionário: ")
		leia(C)
		escreva("Insira o número de horas trabalhadas: ")
		leia(N)
		limpa()

		se(N <= 50){
			Exc = 0.0
			sal_total = 10*N
		}
		senao{
			Exc = 20*(N - 50)
			sal_total = 500.0 + Exc
			
			
		}
		escreva("Salário total: ", sal_total)
		escreva("\nSalário excedente: ", Exc)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 205; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */