programa
{
	
	funcao inicio()
	{
		inteiro idade, crianca = 0, pre_adolescente = 0, adolescentes = 0, adultos = 0, idosos = 0

		para(inteiro i = 1; i<=10; i++)
		{
			escreva("Digite a idade da pessoa ", i, ": ")
			leia(idade)
			se(idade <= 9)
			{
				crianca += 1
			}

			senao se(idade <= 14)
			{
				pre_adolescente += 1
			}

			senao se(idade <= 21)
			{
				adolescentes += 1
			}

			senao se(idade <= 64)
			{
				adultos += 1
			}

			senao
			{
				idosos += 1
			}
		}

		quebra_de_linha()
		escreva("Quantidade de crianças: ", crianca)
		quebra_de_linha()
		escreva("Quantidade de pré-adolescentes: ", pre_adolescente)
		quebra_de_linha()
		escreva("Quantidade de adolescentes: ", adolescentes)
		quebra_de_linha()
		escreva("Quantidade de adultos: ", adultos)
		quebra_de_linha()
		escreva("Quantidade de idosos: ", idosos)
	}

	funcao vazio quebra_de_linha()
	{
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 557; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
