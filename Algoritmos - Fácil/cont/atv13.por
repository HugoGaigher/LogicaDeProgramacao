programa
{
	
	funcao inicio()
	{
		real peso
		inteiro idade
		logico possui_tatuagem, ingeriu_bebida_alcoolica

		escreva("Qual sua idade? ")
		leia(idade)

		se(idade > 19 e idade < 69)
		{
			escreva("Qual seu peso? ")
			leia(peso)
			
			se(peso >= 50)
			{
				escreva("Você fez alguma tatuagem no último ano? (VERDADEIRO ou FALSO) ")
				leia(possui_tatuagem)

				se(possui_tatuagem == falso)
				{
					escreva("Você ingeriu álcool nas últimas 12 horas? (VERDADEIRO ou FALSO) ")
					leia(ingeriu_bebida_alcoolica)

					se(ingeriu_bebida_alcoolica == falso)
					{
						escreva("Parabéns, você pode doar sangue.")
					}
					senao
					{
						escreva("Infelizmente você não pode ser doador")
					}
				}
				senao
				{
					escreva("Infelizmente você não pode ser doador")
				}
			}
			senao
			{
				escreva("Infelizmente você não pode ser doador")
			}
		}
		senao
		{
			escreva("Infelizmente você não pode ser doador")
		}



		/*
		se(idade > 19)
		{
			se(idade < 69)
			{
				se(peso >= 50.0)
				{
					se(possui_tatuagem == falso)
					{
						se(ingeriu_bebida_alcoolica == falso)
						{
							escreva("Parabéns, você pode doar sangue.")
						}
					}
				}
			}
			
		}
		senao
		{
			escreva("Infelizmente você não pode ser doador")
		}
		*/
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 658; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
