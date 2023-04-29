programa
{
	inclua biblioteca ServicosWeb --> WS
	inclua biblioteca Texto --> txt
	inclua biblioteca Arquivos --> arq

	cadeia caminho = "./banco_dados.txt"

	inteiro quantidade_de_funcionarios_cadastrados = 0
	
	funcao inicio()
	{
		const inteiro QUANTIDADE_MAXIMA_DE_CADASTROS = 10

		inteiro banco_dados
		
		cadeia nome

		escreva("NOME: ")
		leia(nome)

		nome = txt.caixa_alta(nome)

		cadeia telefone

		escreva("\nTELEFONE: ")
		leia(telefone)

		cadeia email

		escreva("\nE-MAIL: ")
		leia(email)

		email = txt.caixa_alta(email)

		cadeia idade

		escreva("\nIDADE: ")
		leia(idade)

		cadeia cep

		escreva("\nCEP: ")
		leia(cep)

		
		se(arq.arquivo_existe(caminho) e quantidade_de_funcionarios_cadastrados < 10)
		{
			banco_dados = arq.abrir_arquivo(caminho, arq.MODO_ACRESCENTAR)
			cadastro_funcionario(banco_dados, nome, telefone, email, idade, cep)
		}
		senao
		{
			banco_dados = arq.abrir_arquivo(caminho, arq.MODO_ESCRITA)
			cadastro_funcionario(banco_dados, nome, telefone, email, idade, cep)
		}
	}

	funcao cadastro_funcionario(inteiro banco_dados, cadeia nome, cadeia telefone, cadeia email, cadeia idade, cadeia cep)
	{

			cadeia endereco_sem_cep = formata_endereco(cep)

			arq.escrever_linha("----------------------------------", banco_dados)
			arq.escrever_linha("NOME: " + nome, banco_dados)
			arq.escrever_linha("TELEFONE: " + telefone, banco_dados)
			arq.escrever_linha("E-MAIL: " + email, banco_dados)
			arq.escrever_linha("IDADE: " + idade, banco_dados)
			arq.escrever_linha(endereco_sem_cep, banco_dados)
			arq.escrever_linha("----------------------------------", banco_dados)
			
			arq.escrever_linha("\n", banco_dados)
			arq.escrever_linha("\n", banco_dados)

			quantidade_de_funcionarios_cadastrados++
			
			escreva("\nDeseja cadastrar mais um funcionário? ")

			cadeia novo_cadastro

			leia(novo_cadastro)

			novo_cadastro = txt.caixa_alta(novo_cadastro)

			se(novo_cadastro == "SIM" ou novo_cadastro == "S")
			{
				limpa()
				
				arq.fechar_arquivo(banco_dados)
				
				inicio()
			}

			senao se(novo_cadastro == "NÃO" ou novo_cadastro == "N")
			{
				arq.fechar_arquivo(banco_dados)
			
				escreva("Muito obrigado! Volte sempre!")
			}
	}

	funcao cadeia formata_endereco(cadeia cep)
	{
		cadeia endereco = WS.obter_dados("https://viacep.com.br/ws/" + cep + "/json/")
		inteiro quantidade_de_caracteres = txt.numero_caracteres(endereco)

		inteiro posicao_de_corte = txt.posicao_texto("ibge", endereco, 0) - 1
		
		cadeia endereco_sem_cep = txt.extrair_subtexto(endereco, 0 , posicao_de_corte)
		endereco_sem_cep = txt.substituir(endereco_sem_cep, ",", "\n")
		endereco_sem_cep = txt.substituir(endereco_sem_cep, "{", "")
		endereco_sem_cep = txt.substituir(endereco_sem_cep, "\"", "")
		endereco_sem_cep = txt.caixa_alta(endereco_sem_cep)

		retorne endereco_sem_cep
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1524; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {quantidade_de_funcionarios_cadastrados, 9, 9, 38};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */