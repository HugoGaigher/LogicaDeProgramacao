programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u

	const inteiro AGUARDAR = 200
	
	funcao inicio()
	{
		escreva(">>>> Olá, Seja Bem-Vindo(a) ao Setor de RH da Fábrica de Softwares")
		u.aguarde(AGUARDAR)
		limpa()
		escreva(">>>> Logo abaixo se encontram algumas informações que você usuário pode nos solicitar\n")
		u.aguarde(AGUARDAR)
		limpa()

		menu()
	}
	
	funcao menu()
	{
		cadeia opcao
		
		escreva(" ______________BEM-VINDO AO MENU_____________\n")
		escreva("|                                            |\n")
		escreva("| [1] - Desconto do INSS                     |\n")
		escreva("| [2] - Cálculo de Férias                    |\n")
		escreva("| [3] - Desconto de IRRF (Imposto de Renda)  |\n")
		escreva("| [4] - Benefício de Depósito de FGTS        |\n")
		escreva("| [5] - Multa do FGTS                        |\n")
		escreva("| [6] - Tenho direito ao Seguro-Desemprego?  |\n")
		escreva("| [7] - Custo-Benefício do Vale-Transporte   |\n")
		escreva("| [8] - Tenho direito ao abono do PIS?       |\n")
		escreva("| [9] - Valor do adicional noturno           |\n")
		escreva("| [10] - Adicional de hora extra             |\n")
		escreva("| [11] - Adicional de periculosidade         |\n")
		escreva("| [12] - Imprimir contracheque               |\n")
		escreva("| [13] - SAIR                                |\n")
		escreva("|____________________________________________|\n")

		escreva("\nDigite o número à esquerda para acessar a informação: ")
		leia(opcao)

		limpa()

		se(opcao == "1")
		{
			//SOLICITA DESCONTO DO INSS
				solicita_inss()
		}
		senao se(opcao == "2")
		{
			//SOLICITA O ADICIONAL DE FERIAS
				solicita_ferias()
		}
		senao se(opcao == "3")
		{
			//SOLICITA O IMPOSTO DE RENDA
				solicita_irrf()
		}
		senao se(opcao == "4")
		{
			//SOLICITA BENEFICIO FGTS
				solicita_beneficio_fgts()
		}
		senao se(opcao == "5")
		{
			//SOLICITA MULTA DO FGTS
				solicita_multa_fgts()
		}
		senao se(opcao == "6")
		{
			
		}
		senao se(opcao == "7")
		{
			//SOLICITA O CUSTO-BENEFICIO DO VALE TRANSPORTE
				solicita_custo_beneficio_vale_transporte()
		}
		senao se(opcao == "8")
		{
				solicita_direito_abono_pis()
		}
		senao se(opcao == "9")
		{
			//SOLICITA O ADICIONAL DA HORA NOTURNA
				solicita_adicional_hora_noturna()
		}
		senao se(opcao == "10")
		{
			//SOLICITA O ADICIONAL DE HORA EXTRA
			solicita_adicional_hora_extra()
		}
		senao se(opcao == "11")
		{
			solicita_adicional_periculosidade()
		}
		senao se(opcao == "12")
		{
			solicita_contracheque()
		}
		senao se(opcao == "13")
		{
			escreva(" ____________________ATÉ MAIS_________________\n")
			escreva("|                                             |\n")
			escreva("|        Foi muito bom te ter conosco!        |\n")
			escreva("|               VOLTE SEMPRE!                 |\n")
			escreva("|                                             |\n")
			escreva("|_____________________________________________|")
		}
		senao
		{
			escreva("Digite uma opção válida!\n\n")
			menu()
		}
		
	}
	funcao solicita_inss()
	{
		escreva("|-----DESCONTO DO INSS-----|\n\n")
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real desconto_inss = calculo_desconto_do_inss(salario_bruto)

		escreva("\nINSS: R$", desconto_inss)

		deseja_continuar()
	}
	funcao solicita_ferias()
	{
		escreva("|-----ADICIONAL DE FÉRIAS-----|\n\n")
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real adicional_ferias = calculo_ferias(salario_bruto)
		
		escreva("\nVocê receberá a mais pelo mês que esteve de férias: R$", adicional_ferias)

		deseja_continuar()
	}
	funcao solicita_irrf()
	{
		escreva("|-----DESCONTO DO IRRF-----|\n\n")
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real imposto_de_renda = calculo_imposto_de_renda(salario_bruto)

		escreva("IRRF: R$", imposto_de_renda)

		deseja_continuar()
	}
	funcao solicita_beneficio_fgts()
	{
		escreva("|-----BENEFÍCIO DO FGTS-----|\n\n")
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real beneficio_fgts = calculo_beneficio_do_fgts(salario_bruto)

		escreva("FGTS: R$", beneficio_fgts)

		deseja_continuar()
	}
	funcao solicita_multa_fgts()
	{
		escreva("|-----MULTA DO FGTS-----|\n\n")
		
		real deposito_total
		
		escreva("Informe qual foi o depósito total recebido no período: ")
		leia(deposito_total)
	
		real multa_fgts = calculo_multa_fgts(deposito_total)

		escreva("\nMULTA FGTS: R$", multa_fgts)

		deseja_continuar()
	}
	funcao solicita_direito_ao_seguro_desemprego()
	{
		escreva("|-----VERIFICAÇÃO DO DIREITO AO SEGURO_DESEMPREGO-----|\n\n")
	}
	funcao solicita_custo_beneficio_vale_transporte()
	{
		escreva("|-----CUSTO BENEFÍCIO DO VALE TRANSPORTE-----|\n\n")
		const real VALOR_DA_PASSAGEM = 4.20
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)
		
		real desconto_vale_transporte = calculo_vale_transporte(salario_bruto)

		inteiro usos_de_transporte_no_mes

		escreva("\nAgora informe a quantidade de vezes que você utiliza transporte público no mês: ")
		leia(usos_de_transporte_no_mes)

		escreva("\n\nVocê gastaria: R$", VALOR_DA_PASSAGEM*usos_de_transporte_no_mes)
		escreva("\n\nSerá descontado, caso opte pelo vale-transporte: R$", desconto_vale_transporte)
		
		se(VALOR_DA_PASSAGEM*usos_de_transporte_no_mes >= desconto_vale_transporte)
		{
			escreva("\n\nNós recomendamos o uso do vale_transporte!")
		}

		senao
		{
			escreva("\nNós não recomendamos o uso do vale_transporte!")
		}

		deseja_continuar()
	}
	funcao solicita_adicional_hora_noturna()
	{
		escreva("|-----ADICIONAL DE HORAS NOTURNAS-----|\n\n")
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real horas_trabalhadas_no_mes

		escreva("\nQuantas horas você trabalhou no mês? ")
		leia(horas_trabalhadas_no_mes)

		real horas_noturnas_trabalhadas

		escreva("\nQuantas horas noturnas você trabalhou? ")
		leia(horas_noturnas_trabalhadas)

		real adicional_horas_noturnas = calculo_adicional_noturno(horas_noturnas_trabalhadas, salario_bruto, horas_trabalhadas_no_mes)

		escreva("\nVocê receberá pelas horas noturnas trabalhadas: R$", adicional_horas_noturnas)

	}
	funcao solicita_adicional_hora_extra()
	{
		escreva("|-----ADICIONAL DE HORAS EXTRAS-----|\n\n")
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real horas_trabalhadas_no_mes

		escreva("\nQuantas horas você trabalhou no mês? ")
		leia(horas_trabalhadas_no_mes)

		real horas_extras_trabalhadas

		escreva("\nQuantas horas extras você trabalhou? ")
		leia(horas_extras_trabalhadas)

		real taxa_da_hora_extra
		escreva("\nQual a taxa da hora extra? ")
		leia(taxa_da_hora_extra)

		real adicional_horas_extras = calculo_hora_extra( salario_bruto, horas_trabalhadas_no_mes, horas_extras_trabalhadas, taxa_da_hora_extra)

		escreva("\nVocê receberá pelas horas extras trabalhadas: R$", adicional_horas_extras)

		deseja_continuar()
	}
	funcao solicita_adicional_periculosidade()
	{
		escreva("|-----ADICIONAL DE PERICULOSIDADE-----|\n\n")
		
		real salario_bruto

		escreva("Informe seu salário bruto: ")
		leia(salario_bruto)

		real adicional_periculosidade = calculo_adicional_periculosidade(salario_bruto)

		escreva("\nValor do adicional de periculosidade: R$", adicional_periculosidade)
		escreva("\nValor total a receber: R$", salario_bruto + adicional_periculosidade)

		deseja_continuar()
	}
	funcao solicita_contracheque()
	{

		escreva("|-----SOLICITAR CONTRACHEQUE-----|\n\n")
		
		real salario_bruto
		real horas_noturnas
		real horas_extras
		real horas_trabalhadas_no_mes
		real taxa_da_hora_extra

		escreva("Salário Bruto: R$")

		leia(salario_bruto)
		

		escreva("\nHoras trabalhadas no mês: ")
	
		leia(horas_trabalhadas_no_mes)
		

		escreva("\nQual a taxa da hora extra (%)? ")
		
		leia(taxa_da_hora_extra)

		taxa_da_hora_extra /= 100
		
	
		escreva("\nHoras extras: ")
	
		leia(horas_extras)
		
		real adicional_hora_extra = calculo_hora_extra(salario_bruto, horas_trabalhadas_no_mes, horas_extras, taxa_da_hora_extra)
		
		
		escreva("\nNoturno: ")
	
		leia(horas_noturnas)
	
		real adicional_noturno = calculo_adicional_noturno(horas_noturnas, salario_bruto, horas_trabalhadas_no_mes)

		
		
		logico auxiliar_de_verificacao = verdadeiro

		cadeia apresenta_periculosidade
		real valor_adicional_periculosidade = 0.0
		
		faca
		{
			escreva("\nPericulosidade: ")
			leia(apresenta_periculosidade)
			
			apresenta_periculosidade = txt.caixa_alta(apresenta_periculosidade)
		
		
			se(apresenta_periculosidade == "S" ou apresenta_periculosidade == "SIM")
			{
				valor_adicional_periculosidade = calculo_adicional_periculosidade(salario_bruto)
				auxiliar_de_verificacao = falso
			}
			senao se(apresenta_periculosidade == "N" ou apresenta_periculosidade == "NÃO")
			{
				auxiliar_de_verificacao = falso
			}
			senao
			{
				escreva("\nEscreva uma resposta válida!\n")
			}
		}enquanto(auxiliar_de_verificacao)

		
		
		auxiliar_de_verificacao = verdadeiro

		cadeia deseja_vale_transporte
		real desconto_vale_transporte = 0.0

		faca
		{
			escreva("\nVale-transporte: ")
			leia(deseja_vale_transporte)
			
			deseja_vale_transporte = txt.caixa_alta(deseja_vale_transporte)	
		
			se(deseja_vale_transporte == "S" ou deseja_vale_transporte == "SIM")
			{
				desconto_vale_transporte = calculo_vale_transporte(salario_bruto)
				auxiliar_de_verificacao = falso
			}
			
			senao se(deseja_vale_transporte == "N" ou deseja_vale_transporte == "SIM")
			{
				auxiliar_de_verificacao = falso
			}
			senao
			{
				escreva("\nEscreva uma resposta válida!\n")
			}
		}enquanto(auxiliar_de_verificacao)

		limpa()
		
		escreva("----------DETALHAMENTO----------")
		escreva("\n\n|Salário base:            R$", salario_bruto)
		escreva("\n\n|Horas extras:          + R$", adicional_hora_extra)
		escreva("\n\n|Noturno:               + R$", adicional_noturno)
		escreva("\n\n|Periculosidade:        + R$", valor_adicional_periculosidade)

		real beneficio_fgts = calculo_beneficio_do_fgts(salario_bruto)

		escreva("\n\n|FGTS:                  + R$", beneficio_fgts, " (depósito)")
		escreva("\n\n|Vale Transporte:       - R$", desconto_vale_transporte)

		real desconto_inss = calculo_desconto_do_inss(salario_bruto)

		escreva("\n\n|INSS:                  - R$", desconto_inss)

		real desconto_irrf = calculo_imposto_de_renda(salario_bruto)

		escreva("\n\n|IRRF:                  - R$", desconto_irrf)

		escreva("\n\n------------RESULTADO-----------")

		real total_adicional = adicional_hora_extra + adicional_noturno + valor_adicional_periculosidade
		escreva("\n\n|Total adicionais:        R$", total_adicional)

		real total_descontos = desconto_inss + desconto_irrf + desconto_vale_transporte
		escreva("\n\n|Total descontos:         R$", total_descontos)

		escreva("\n\n--------------------------------")

		real salario_liquido = salario_bruto + total_adicional - total_descontos
		escreva("\n\n|Salário líquido:         R$", salario_liquido)
		
		deseja_continuar()
		
			
		
	}
	funcao solicita_direito_abono_pis()
	{
		escreva("|-----SOLICITAR DIREITO AO PIS-----|\n\n")

		logico auxiliar_de_verificacao = verdadeiro

		cadeia resposta

		faca{
			escreva("\n\nVocê trabalha de carteira assinada há pelo menos 5 anos? ")
			
			leia(resposta)

			resposta = txt.caixa_alta(resposta)

			se(resposta == "S" ou resposta == "SIM")
			{
				real salario_bruto
				const real SALARIO_MINIMO_ATUAL = 1302.0
			
				faca
				{
				escreva("\nQual o seu salário bruto? ")
				leia(salario_bruto)

				se(salario_bruto/SALARIO_MINIMO_ATUAL <= 2)
				{
					faca
					{
						const inteiro QUANTIDADE_DE_DIAS_NO_MES = 30
					
						escreva("\nVocê trabalhou quantos dias no ano-base? ")
	
						inteiro dias_trabalhados_no_ano_base
	
						leia(dias_trabalhados_no_ano_base)
	
						se(dias_trabalhados_no_ano_base >= QUANTIDADE_DE_DIAS_NO_MES e dias_trabalhados_no_ano_base <= 12*QUANTIDADE_DE_DIAS_NO_MES)
						{
							faca
							{
								escreva("\nVocê informou corretamente os seus dados ao Relatório Anual de Informações Sociais? ")
		
								cadeia segunda_resposta
		
								leia(segunda_resposta)
		
								segunda_resposta = txt.caixa_alta(segunda_resposta)
		
								se(segunda_resposta == "S" ou segunda_resposta == "SIM")
								{
									auxiliar_de_verificacao = falso
									
									inteiro meses_trabalhados = dias_trabalhados_no_ano_base/QUANTIDADE_DE_DIAS_NO_MES
									
									real abono_pis = calculo_abono_pis(meses_trabalhados)

									escreva("\n\n __________________\n")
									escreva("|                  |\n")
									escreva("|                  |\n")
									escreva("|TEM DIREITO AO PIS|\n")
									escreva("|                  |\n")
									escreva("|__________________|")
									escreva("")
									escreva("\n\nVOCÊ RECEBERÁ: R$", abono_pis)
									
								}
								senao se(segunda_resposta == "NÃO" ou segunda_resposta == "N")
								{
									auxiliar_de_verificacao = falso
									escreva("\nNão tem direito ao PIS")
								}
								senao
								{
									escreva("\nEscreva uma opção válida!\n")
								}
							}enquanto(auxiliar_de_verificacao)
						}
						senao
						{
							auxiliar_de_verificacao = falso
							escreva("\nNão tem direito ao PIS")
						}
					}enquanto(auxiliar_de_verificacao)
				}

				senao
				{
					auxiliar_de_verificacao = falso
					escreva("\nNão tem direito ao PIS")
				}

			
			}enquanto(auxiliar_de_verificacao)
			}
			senao se(resposta == "N" ou resposta == "NÃO")
			{
				auxiliar_de_verificacao = falso
				escreva("\nNão tem direito ao PIS")
			}
			senao
			{
				escreva("\nEscreva uma resposta válida!\n")
			}
			
		}enquanto(auxiliar_de_verificacao)

			
		
	}

	funcao real calculo_desconto_do_inss(real salario_bruto)
	{
		real desconto_inss = 0.0

		const real PISO_SALARIAL_1 = 1302.0
		const real PISO_SALARIAL_2 = 2571.29
		const real PISO_SALARIAL_3 = 3856.94
		const real PISO_SALARIAL_4 = 7507.49

		se(salario_bruto <= PISO_SALARIAL_1)
		{
			desconto_inss = salario_bruto*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_2)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_3)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao se(salario_bruto <= PISO_SALARIAL_4)
		{
			desconto_inss = (salario_bruto - PISO_SALARIAL_3)*0.14 + (PISO_SALARIAL_3 - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}
		senao
		{
			desconto_inss = (PISO_SALARIAL_4 - PISO_SALARIAL_3)*0.14 + (PISO_SALARIAL_3 - PISO_SALARIAL_2)*0.12 + (PISO_SALARIAL_2 - PISO_SALARIAL_1)*0.09 + PISO_SALARIAL_1*0.075
		}

		retorne mat.arredondar(desconto_inss, 2)
	}
	funcao real calculo_ferias(real salario_bruto)
	{
		real adicional_ferias = 0.0

		adicional_ferias = salario_bruto/3

		retorne mat.arredondar(adicional_ferias, 2)
	}
	funcao real calculo_imposto_de_renda(real salario_bruto)
	{
		real desconto_ir = 0.0
		real desconto_inss = calculo_desconto_do_inss(salario_bruto)
		real salario_base = salario_bruto - desconto_inss
		const real FAIXA_01 = 1903.98
		const real FAIXA_02 = 2826.65
		const real FAIXA_03 = 3751.06
		const real FAIXA_04 = 4664.68

		const real ALIQUOTA_01 = 142.80
		const real ALIQUOTA_02 = 354.80
		const real ALIQUOTA_03 = 636.13
		const real ALIQUOTA_04 = 869.36

		se(salario_base <= FAIXA_01)
		{
			desconto_ir = 0.0
		}
		senao se(salario_base <= FAIXA_02)
		{
			desconto_ir = salario_base*0.075 - ALIQUOTA_01
		}
		senao se(salario_base <= FAIXA_03)
		{
			desconto_ir = salario_base*0.15 - ALIQUOTA_02
		}
		senao se(salario_base <= FAIXA_04)
		{
			desconto_ir = salario_base*0.225 - ALIQUOTA_03
		}
		senao
		{
			desconto_ir = salario_base*0.275 - ALIQUOTA_04
		}
		
		retorne mat.arredondar(desconto_ir, 2)
	}
	funcao real calculo_beneficio_do_fgts(real salario_bruto)
	{
		real beneficio_fgts = 0.0

		beneficio_fgts = 0.08*salario_bruto

		retorne beneficio_fgts
	}
	funcao real calculo_multa_fgts(real deposito_total)
	{
		real valor_multa_fgts= 0.0

		valor_multa_fgts = 0.4 * deposito_total

		retorne mat.arredondar(valor_multa_fgts, 2)
	}
	funcao real calculo_vale_transporte(real salario_bruto)
	{
		real valor_vale_transporte = 0.0
		
		valor_vale_transporte = 0.06*salario_bruto

		retorne valor_vale_transporte
	}
	funcao real calculo_adicional_noturno(real horas_noturnas_trabalhadas, real salario_bruto, real horas_trabalhadas_no_mes)
	{
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real taxa_noturna = 0.2
		real adicional_noturno = 0.0
		real horas_noturnas = 60*horas_noturnas_trabalhadas/52.5
		
		adicional_noturno = taxa_noturna*valor_hora_trabalhada*horas_noturnas

		retorne mat.arredondar(adicional_noturno, 2)
	}
	funcao real calculo_hora_extra(real salario_bruto, real horas_trabalhadas_no_mes, real horas_extras, real taxa_da_hora_extra)
	{
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real adicional_hora_extra = 0.0
		real valor_hora_extra = valor_hora_trabalhada + taxa_da_hora_extra*valor_hora_trabalhada

		adicional_hora_extra = valor_hora_extra*horas_extras

		retorne mat.arredondar(adicional_hora_extra, 2)
	}
	funcao real calculo_adicional_periculosidade(real salario_bruto)
	{
		real adicional_periculosidade = 0.0

		adicional_periculosidade = salario_bruto*0.3

		retorne mat.arredondar(adicional_periculosidade, 2)
	}
	funcao real calculo_abono_pis(inteiro meses_trabalhados)
	{
		const real SALARIO_MINIMO_ATUAL = 1302.0
		
		real abono_pis = 0.0

		abono_pis = SALARIO_MINIMO_ATUAL*meses_trabalhados/12

		retorne abono_pis
		
	}

	funcao deseja_continuar()
	{
		cadeia resposta

		escreva("\n\nDeseja obter mais informações? ")
		leia(resposta)

		resposta = txt.caixa_alta(resposta)

		se(resposta == "SIM")
		{
			limpa()
			menu()
		}
		senao se(resposta == "NÃO")
		{
			limpa()
			escreva("Conte conosco sempre que precisar!")
		}
		senao
		{
			escreva("\nDigite uma resposta válida!\n")
			deseja_continuar()
		}

	}
}

/*
algoritmo para retornar ao menu ou continuar na função

logico auxiliar_de_verificacao = verdadeiro

faca
{
	cadeia resposta_sim_ou_nao

	escreva("\n\nDeseja retornar ao menu? ")
	leia(resposta_sim_ou_nao)

	resposta_sim_ou_nao = txt.caixa_alta(resposta_sim_ou_nao)

	se(resposta_sim_ou_nao == "SIM" ou resposta_sim_ou_nao == "S")
	{
		menu()
	}
	senao se(resposta_sim_ou_nao == "NÃO" ou resposta_sim_ou_nao == "N")
	{
		funcao()
	}
	senao
	{
		escreva("\nEscreva uma opção válida!\n")
	}

enquanto(auxiliar_de_verificacao)

*/

/*
*posso usar o enquanto para que ele faça verificações

*corrigir o cálculo da multa do fgts (caso tenha sido feito acordo, o desconto é de 20%)

*usar o número de anos trabalhados na funcão solicita_direito_abono_pis() ao invés de sim ou não
*/


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 18826; 
 * @DOBRAMENTO-CODIGO = [111, 20, 118, 132, 146, 161, 176, 191, 220, 195, 227, 251, 280, 296, 436, 547, 579, 587, 625, 633, 641, 649, 660, 670, 678, 690];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */