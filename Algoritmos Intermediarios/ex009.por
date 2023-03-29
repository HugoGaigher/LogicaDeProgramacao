programa
{
	
	funcao inicio()
	{
		cadeia senha, login = "", login_anterior = ""

		enquanto(verdadeiro)
		{
			enquanto(login==login_anterior)
			{
				escreva("Digite seu login: ")
				leia(login)
				se(login == login_anterior)
				{
					escreva("Você não pode usar esse login!\n")
				}
			}

			senha = login

			enquanto(senha == login)
			{
				escreva("Digite sua senha: ")
				leia(senha)
				se(senha == login)
				{
					escreva("Esta senha não é segura. Escolha outra!\n")
				}
			}
			
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */