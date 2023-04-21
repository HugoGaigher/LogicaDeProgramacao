programa
{
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		escreva(">>>> Olá, Seja Bem-Vindo(a) ao Setor de RH da Fábrica de Softwares <<<<")
		u.aguarde(2000)
		limpa()
		escreva(">>>> Logo abaixo se encontram algumas informações que você usuário pode nos solicitar <<<<")
		u.aguarde(2000)
		limpa()

		menu()
	}
	funcao menu()
	{
		escreva("-------------------------------------------\n")
		escreva("[1] - Desconto do INSS\n")
		escreva("[2] - Cálculo de Férias\n")
		escreva("[3] - Desconto de IRRF (Imposto de Renda)\n")
		escreva("[4] - Benefício de Depósito de FGTS\n")
		escreva("[5] - Multa do FGTS\n")
		escreva("[6] - Tenho direito ao Seguro-Desemprego?\n")
		escreva("[7] - Custo-Benefício do Vale-Transporte\n")
		escreva("[8] - Tenho direito ao abono do PIS?\n")
		escreva("[9] - Valor do adicional noturno\n")
		escreva("[10] - Adicional de hora extra\n")
		escreva("[11] - Adicional de periculosidade")
		escreva("\n-----------------------------------------\n")

		escreva("\nDigite o número à esquerda para acessar a informação: ")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 43; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */