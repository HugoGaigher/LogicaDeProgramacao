programa
{
	
	funcao inicio()
	{
		inteiro controle = 1, qtd_eleitores
		cadeia numero_eleitoral, candidato_eleito = "NINGUÉM"
		inteiro votos_batman = 0
		inteiro votos_coringa = 0
		inteiro votos_labareda = 0
		inteiro votos_robim = 0
		inteiro votos_batgirl = 0
		inteiro votos_brancos_ou_nulos = 0
		inteiro maior_numero_de_votos = 0
		

		escreva("Informe a quantidade de eleitores: ")
		leia(qtd_eleitores)

		faca
		{
			escreva("Eleitor ", controle, " em quem você vota: ")
			leia(numero_eleitoral)

			se(numero_eleitoral == "55")
			{
				votos_labareda += 1
				se(votos_labareda > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_labareda
					candidato_eleito = "LABAREDA"
				}
			}
			
			senao se(numero_eleitoral == "13")
			{
				votos_coringa += 1
				se(votos_coringa > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_coringa
					candidato_eleito = "CORINGA"
				}
			}

			senao se(numero_eleitoral == "12")
			{
				votos_robim += 1
				se(votos_robim > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_robim
					candidato_eleito = "ROBIM"
				}
			}

			senao se(numero_eleitoral == "60")
			{
				votos_batgirl += 1
				se(votos_batgirl > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_batgirl
					candidato_eleito = "BATGIRL"
				}
			}

			senao se(numero_eleitoral == "22")
			{
				votos_batman += 1
				se(votos_batman > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_batman
					candidato_eleito = "BATMAN"
				}
			}
			
			senao
			{
				votos_brancos_ou_nulos += 1
				se(votos_brancos_ou_nulos > maior_numero_de_votos)
				{
					maior_numero_de_votos = votos_brancos_ou_nulos
					candidato_eleito = "NULO"
				}
			}
			

			controle += 1
		}enquanto(controle <= qtd_eleitores)

		escreva("\n")
		escreva("Quem obteve mais votos foi: ", candidato_eleito, " com ", maior_numero_de_votos)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1763; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */