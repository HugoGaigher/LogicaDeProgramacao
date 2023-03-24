programa
{
	//EX08
	funcao inicio()
	{
		inteiro x = 2, y = 4, z = 4, k = 6, w = 8

		se(x<3)
		{
			y = 2 * x + 2

			se(z>2)
			{
				k = 2 * y - z
				w = z * 2 - z 
			}

			x = w - 3 * k

		}

		senao se(y>4 ou x<w)
		{
			x = y - y * 2 
			y = z + 2 * x 
		}

		senao
		{
			z = 2 * k + w
 			k = k + 2 * y 
		}

		w = x - y * 2 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 21; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */