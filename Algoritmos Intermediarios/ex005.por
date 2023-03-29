programa
{
	
	funcao inicio()
	{
		cadeia nome
		caracter sexo
		inteiro quantidade_de_pessoas, quantidade_homens = 0, quantidade_mulheres = 0, i = 0

		escreva("Quantas pessoas? ")
		leia(quantidade_de_pessoas)

/*
		para(inteiro i = 1; i <= quantidade_de_pessoas; i++)
		{
			escreva("Informe seu sexo (f/m): ")
			leia(sexo)
			escreva("Informe seu nome: ")
			leia(nome)
			se(sexo == 'f')
			{
				quantidade_mulheres += 1
				escreva("Bom dia, Srta. ", nome)
			}

			senao se(sexo == 'm')
			{
				quantidade_homens += 1
				escreva("Bom dia, Sr. ", nome)
			}
			senao
			{
				escreva("Informe um sexo válido! ")
			}

			escreva("\n\n")
		}

		escreva("Homens cumprimentados: ", quantidade_homens)
		escreva("\n")
		escreva("Mulheres cumprimentadas: ", quantidade_mulheres)
*/
		faca
		{
			escreva("Informe seu sexo (f/m): ")
			leia(sexo)
			escreva("Informe seu nome: ")
			leia(nome)
			se(sexo == 'f')
			{
				quantidade_mulheres += 1
				escreva("Bom dia, Srta. ", nome)
				i++
			}

			senao se(sexo == 'm')
			{
				quantidade_homens += 1
				escreva("Bom dia, Sr. ", nome)
				i++
			}
			senao
			{
				escreva("Informe um sexo válido! ")
			}

			escreva("\n\n")
		}enquanto(i<quantidade_de_pessoas)

		escreva("Homens cumprimentados: ", quantidade_homens)
		escreva("\n")
		escreva("Mulheres cumprimentadas: ", quantidade_mulheres)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1360; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */