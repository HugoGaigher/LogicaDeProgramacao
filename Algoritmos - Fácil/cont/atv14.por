programa
{
	
	funcao inicio()
	{
		real km_por_litro  
		real litros_de_gasolina
		real distancia_que_deseja_percorrer
		real quanto_falta

		escreva("Quantos quilômetros o carro percorre por litro?\n")
		leia(km_por_litro)
		escreva("Quantos litros têm no carro atualmente?\n")
		leia(litros_de_gasolina)
		escreva("Qual a distância (em Km) que você deseja percorrer?\n")
		leia(distancia_que_deseja_percorrer)

		se(distancia_que_deseja_percorrer <= capacidade_atual)
		{
			escreva("Você não precisa abastecer")
		}
		senao
		{
			quanto_falta = distancia_que_deseja_percorrer/km_por_litro - litros_de_gasolina
			escreva("Você precisa abastecer ", quanto_falta, " litros")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 435; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
