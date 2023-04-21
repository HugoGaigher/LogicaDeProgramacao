programa
{
	//REGISTRO DE CADASTRO
	funcao inicio()
	{
		
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

		retorne desconto_inss
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

		retorne valor_multa_fgts
	}
	funcao real calculo_adicional_periculosidade(real salario_bruto)
	{
		real adicional_periculosidade = 0.0

		adicional_periculosidade = salario_bruto*0.3

		retorne adicional_periculosidade
	}
	funcao real calculo_adicional_noturno(inteiro horas_noturnas_trabalhadas, real salario_bruto, real horas_trabalhadas_no_mes)
	{
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real taxa_noturna = 0.2
		real adicional_noturno = 0.0
		real horas_noturnas = 60*horas_noturnas_trabalhadas/52.5
		
		adicional_noturno = taxa_noturna*valor_hora_trabalhada*horas_noturnas

		retorne adicional_noturno
	}
	funcao real calculo_hora_extra(real salario_bruto, real horas_trabalhadas_no_mes, real horas_extras)
	{
		real taxa_hora_extra = 0.5
		real valor_hora_trabalhada = salario_bruto/horas_trabalhadas_no_mes
		real adicional_hora_extra = 0.0
		real valor_hora_extra = valor_hora_trabalhada + taxa_hora_extra*valor_hora_trabalhada

		adicional_hora_extra = taxa_hora_extra*valor_hora_trabalhada*horas_extras

		retorne adicional_hora_extra
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
		
		retorne desconto_ir
	}
	funcao real calculo_vale_transporte(real salario_bruto)
	{
		real valor_vale_transporte = 0.0
		
		valor_vale_transporte = 0.06*salario_bruto

		retorne valor_vale_transporte

		
	}
	funcao inteiro calculo_parcelas_seguro_desemprego(inteiro quantidade_de_solicitacoes, inteiro m)
	{
		inteiro quantidade_de_parcelas = 0
		
		escolha(quantidade_de_solicitacoes)
		{
			caso 1:

				se(m >= 12 e m <= 23)
				{
					quantidade_de_parcelas = 4
				}
				senao se(m >= 24)
				{
					quantidade_de_parcelas = 5
				}
				senao
				{
					quantidade_de_parcelas = 0
				}
				
			pare

			caso 2:

				se(m >= 9 e m <= 11)
				{
					quantidade_de_parcelas = 3
				}
				senao se(m >= 12 e m <= 23)
				{
					quantidade_de_parcelas = 4
				}
				senao se(m >= 24)
				{
					quantidade_de_parcelas = 5
				}
				senao
				{
					quantidade_de_parcelas = 0
				}
				
			pare

			caso 3:

				se(m >= 6 e m <= 11)
				{
					quantidade_de_parcelas = 3
				}
				senao se(m >= 12 e m <= 23)
				{
					quantidade_de_parcelas = 4
				}
				senao se(m >= 24)
				{
					quantidade_de_parcelas = 5
				}
				senao
				{
					quantidade_de_parcelas = 0
				}

			pare
			
		}

		retorne quantidade_de_parcelas
	}
	funcao real calculo_do_pis(inteiro meses_trabalhados)
	{
		const real SALARIO_MINIMO = 1302.00

		real abono_pis = 0.0

		abono_pis = SALARIO_MINIMO * meses_trabalhados / 12

		retorne abono_pis
	}
	funcao real calculo_ferias(caracter esteve_de_ferias, real salario_bruto)
	{
		real adicional_ferias = 0.0

		adicional_ferias = salario_bruto/3

		retorne adicional_ferias
	}
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4895; 
 * @DOBRAMENTO-CODIGO = [8, 40, 48, 56, 64, 75, 86, 124, 134, 203, 213];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {salario_base, 91, 7, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */