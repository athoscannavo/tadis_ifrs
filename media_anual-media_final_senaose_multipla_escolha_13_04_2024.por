programa
{
	
	funcao inicio()
	{
		/* Construa um algoritmo que leia o conceito atribuído um aluno (A, B, C, ou D) e a sua média anual e exiba uma
mensagem conforme as observações abaixo:
a) Conceito A: este ganha um ponto na média.
b) Conceito B: ganha 0,5 ponto na média.
c) Conceito C: não ganha nenhum ponto na média.
d) Conceito D: perde 0,5 ponto na média.
Exiba ao final se o aluno passou ou não sabendo que o aluno só passa de ano se consegue uma nota igual ou
superior a sete */
		real media_anual, media_final=0.0
		caracter conceito


		escreva("Qual o valor da sua média anual?\n")
		leia(media_anual)
		
		se(media_anual > 10.0)
		{
			escreva("ERRO - media_anual superior a 10")
		}
		senao se(media_anual<0.0)
		{
			escreva("ERRO - media_anual inferior a 0.0")
		}
		senao
		{
			escreva("Qual o conceito obtido? A, B, C ou D?\n")
			leia(conceito)


			escolha(conceito){
				caso 'A': caso 'a':
					media_final=(media_anual+1.0)
					escreva("Sua média final agora têm o valor de ", media_final," pontos!\n")
					se(media_final>=7.0)
					{
						escreva("Aprovado!")
					}
					senao
					{
						escreva("Reprovado")
					}
					pare
				caso 'B': caso 'b':
					media_final=(media_anual+0.5)
					escreva("Sua média final agora têm o valor de ", media_final," pontos!\n")
					se(media_final>=7.0)
					{
						escreva("Aprovado!")
					}
					senao
					{
						escreva("Reprovado")
					}
					pare
				caso 'C': caso 'c':
					media_final=(media_anual)
					escreva("Sua média final agora têm o valor de ", media_final," pontos!\n")
					se(media_final>=7.0)
					{
						escreva("Aprovado!")
					}
					senao
					{
						escreva("Reprovado")
					}
					pare
				caso 'D': caso 'd':
					media_final=(media_anual-0.5)
					escreva("Sua média final agora têm o valor de ", media_final," pontos!\n")
					se(media_final>=7.0)
					{
						escreva("Aprovado!")
					}
					senao
					{
						escreva("Reprovado")
					}
					pare
				caso contrario:
					escreva("Conceito inválido. Tente Novamente.")
					se(media_final>=7.0)
					{
						escreva("Aprovado!")
					}
					senao
					{
						escreva("Reprovado")
					}
					pare
		}




				
		}




















		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1707; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */