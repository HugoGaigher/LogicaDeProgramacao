programa
{
	
	funcao inicio()
	{
		
		
		caracter operacao_escolhida = '1'
		real numero
		faca
		{
			escreva("===============================\n")
			escreva("Calculator Gourmet Premium\n")
			escreva("===============================")
			escreva("\n 1 - Adição\n 2 - Subtração\n 3 - Multiplicação\n 4 - Divisão\n 5 - Sair\n\n")
			leia(operacao_escolhida)
			escreva("\n")

			escolha(operacao_escolhida)
			{

		

				caso '1':

					escreva("Digite o número que deseja somar: ")
					leia(numero)
					escreva("\n")
					para(inteiro var_controle = 1; var_controle<=10; var_controle++)
					{
						escreva(numero, " + ", var_controle, " = ", numero + var_controle, "\n")
					}
						
				pare

				caso '2':

					escreva("Digite o número que deseja subtrair: ")
					leia(numero)
					escreva("\n")
					para(inteiro var_controle = 1; var_controle<=10; var_controle++)
					{
						escreva(numero, " - ", var_controle, " = ", numero - var_controle, "\n")
					}

				pare

				caso '3':

					escreva("Digite o número que deseja multiplicar: ")
					leia(numero)
					escreva("\n")
					para(inteiro var_controle = 1; var_controle<=10; var_controle++)
					{
						escreva(numero, " x ", var_controle, " = ", numero * var_controle, "\n")
					}
						
				pare

				caso '4':

					escreva("Digite o número que deseja dividir: ")
					leia(numero)
					escreva("\n")
					para(inteiro var_controle = 1; var_controle<=10; var_controle++)
					{
						escreva(numero, " / ", var_controle, " = ", numero / var_controle, "\n")
					}
					
				pare

				caso '5':

					escreva("Te espero na próxima!")
					
				pare

				caso contrario:
					limpa()
					escreva("Escreva uma opção válida\n\n")
			}

			escreva("\n")

			
			
		} enquanto(operacao_escolhida != '5')
	    
	


	 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1699; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */