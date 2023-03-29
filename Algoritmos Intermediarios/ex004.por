programa
{
	
	funcao inicio()
	{
		inteiro quantidade_alunos
		real media_da_turma, notas, soma_notas = 0.0

		escreva("Digite o número de alunos na turma: ")
		leia(quantidade_alunos)

		para(inteiro i = 1; i <= quantidade_alunos; i++)
		{
			escreva("Digite as notas do aluno ", i,":\n")
			para(inteiro j = 1; j<=2; j++)
			{
				leia(notas)
				soma_notas += notas
			}
		}

		media_da_turma = soma_notas/(2*quantidade_alunos)

		escreva("A média da turma foi: ", media_da_turma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */