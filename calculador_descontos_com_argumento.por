programa
{
	
	funcao inicio()
	{
		real preco, preco_final
		inteiro metodo

		escreva("Insira o valor inicial do produto\n")
		leia(preco)

		escreva("escolha seu método de pagamento:\n")
		escreva("1. À Vista em dinheiro(-10%)\n")
		escreva("2. À Vista no cartão(-5%)\n")
		escreva("3. 2 vezes(-5% se acima de R$200,00)\n")
		escreva("4. 3 vezes(+10% sobre o valor da etiqueta)\n")

		escreva("\nMétodo de pagamento escolhido: \n")
		leia(metodo)

		escolha(metodo)
		{
			caso 1:
			{
				preco_final = (preco*0.9)
				escreva("O valor a ser pago com esse método de pagamento é de R$ ", preco_final, " !")
				pare
			}		
			caso 2:
			{
				preco_final = (preco*0.95)
				escreva("O valor a ser pago com esse método de pagamento é de R$ ", preco_final, " !")
				pare
			}		
			caso 3:
			{
				se(preco>=200.0)
				{
					preco_final = (preco*0.95)
					escreva("O valor a ser pago com esse método de pagamento é de R$ ", preco_final, " !")
					pare
				}
				senao
				{
					preco_final = (preco)
					escreva("O valor a ser pago com esse método de pagamento é de R$ ", preco_final, " !")
					pare
				}
			}		
			caso 4:
			{
				preco_final = (preco*1.10)
				escreva("O valor a ser pago com esse método de pagamento é de R$ ", preco_final, " !")
				pare
			}		
			caso contrario:
			{
				escreva("ERRO - MÉTODO INVÁLIDO")
			}


				
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 386; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */