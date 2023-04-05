programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		const inteiro QUANTIDADE_DE_ALUNOS = 5
		real nota_da_prova_p1, nota_da_prova_p2, media_do_aluno[QUANTIDADE_DE_ALUNOS]
		real media_da_turma = 0.0, maior_media = 0.0, menor_media = 0.0
		cadeia nome_do_aluno[QUANTIDADE_DE_ALUNOS]
		inteiro contador = 0
	
		para(contador = 0; contador < QUANTIDADE_DE_ALUNOS; contador++)
		{
			escreva("Aluno ", contador+1, ": ")
			leia(nome_do_aluno[contador])
			
			escreva("Informe a nota da Prova 1: ")
			leia(nota_da_prova_p1)
			
			escreva("Informe a nota da Prova 2: ")
			leia(nota_da_prova_p2)

			media_do_aluno[contador] = (nota_da_prova_p1 + nota_da_prova_p2)/2

			media_da_turma += media_do_aluno[contador]

			escreva("\n")

			se(media_do_aluno[contador] > maior_media)
			{
				maior_media = media_do_aluno[contador]
			}
			
		}

		media_da_turma /= QUANTIDADE_DE_ALUNOS
		
		menor_media = maior_media

		para(contador = 0; contador < QUANTIDADE_DE_ALUNOS; contador++)
		{
			se(media_do_aluno[contador] < menor_media)
			{
				menor_media = media_do_aluno[contador]
			}
		}
		

		limpa()

		escreva("--------- ESTATÍSICAS DA TURMA ---------\n\n")
		
		para(contador = 0; contador < QUANTIDADE_DE_ALUNOS; contador++)
		{
			escreva("ALUNO: ", nome_do_aluno[contador], "\nMÉDIA: ", media_do_aluno[contador], "\n")
			escreva("---------------------------\n")
		}

		escreva("\n\nMédia da turma: ", media_da_turma)
		escreva("\nMaior média: ", maior_media)
		escreva("\nMenor média: ", menor_media)	
	}


}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {media_do_aluno, 8, 43, 14}-{maior_media, 9, 29, 11}-{menor_media, 9, 48, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */