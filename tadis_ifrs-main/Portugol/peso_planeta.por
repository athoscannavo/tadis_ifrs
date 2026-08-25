programa
{
	funcao inicio()
	{
		real peso_terra, peso_planeta = 0.0
		inteiro num_planeta

		escreva("Digite o peso do item na terra: \n")
		leia(peso_terra)

		escreva("\nEscreva o número do planeta cujo novo peso queres obter: \n\n")
		escreva("1 - Mercúrio\n")
		escreva("2 - Vênus\n")
		escreva("3 - Marte\n")
		escreva("4 - Júpiter\n")
		escreva("5 - Saturno\n")
		escreva("6 - Urano\n")

		escreva("Número Escolhido:  \n")
		leia(num_planeta)

		escolha(num_planeta)
		{
			caso 1:
				peso_planeta = (peso_terra*0.37)
				pare
			caso 2:
				peso_planeta = (peso_terra*0.88)
				pare
				caso 3: 
				peso_planeta = (peso_terra*0.38)
				pare
			caso 4: 
				peso_planeta = (peso_terra*2.64)
				pare
			caso 5:
				peso_planeta = (peso_terra*1.15)						
				pare
			caso 6:
				peso_planeta = (peso_terra*1.17)
				pare
			caso contrario:
				escreva("Número de planeta inválido. tente novamente.\n\n")
				pare
		}
		escreva(peso_terra, "Kg é equivalente a ", peso_planeta,"Kg no planeta escolhido.")
		



		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1024; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */