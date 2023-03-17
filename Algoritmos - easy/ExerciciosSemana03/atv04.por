programa
{
	
	funcao inicio()
	{
		real altura, peso, imc
		const real OBESIDADE3 = 40.0 
		const real OBESIDADE2 = 39.99
		const real OBESIDADE1 = 34.99
		const real ACIMA_DO_PESO = 29.99
		const real PESO_NORMAL = 24.99
		const real ABAIXO_DO_PESO = 18.49
		const real MUITO_ABAIXO_DO_PESO = 17.0

		escreva("Qual seu peso?\n\n")
		leia(peso)
		escreva("\n\nQual sua altura?\n\n")
		leia(altura)

		imc = peso/(altura*altura)

		escreva("\n\nIMC = ", imc, "\n\n")

		se(imc > OBESIDADE3){
			escreva("Obesidade III (mórbida)")
		}
		senao se (imc > OBESIDADE1){
			escreva("Obesidade II (severa)")
		}
		senao se (imc > ACIMA_DO_PESO){
			escreva("Obesidade I")
		}
		senao se (imc > PESO_NORMAL){
			escreva("Acima do Peso")
		}
		senao se (imc > ABAIXO_DO_PESO){
			escreva("Peso Normal")
		}
		senao se (imc > MUITO_ABAIXO_DO_PESO){
			escreva("Abaixo do Peso")
		}
		senao{
			escreva("Muito abaixo do peso")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 917; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */