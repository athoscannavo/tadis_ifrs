programa
{
	
	inclua biblioteca Matematica -->mat
	funcao inicio()
	{
		real n1,n2,resultado
		caracter operacao

		escreva("Insira o primeiro número:\n")
		leia(n1)
		escreva("Insira o segundo número:\n")
		leia(n2)

		escreva("\n\nInsira o símbolo correspondente à operação que deseja realizar:\n")

		escreva("+ - Soma")
		escreva("- - Subtração")
		escreva("* - Multiplicação")
		escreva("/ - Divisão")
		escreva("~ - Exponenciação\n")
		leia(operacao)
		escolha(operacao){
			caso '+':
			{
				resultado = (n1+n2)
				escreva("O resultado dessa operação foi : ", resultado," .")
				pare
			}
			caso '-':
			{
				resultado = (n1-n2)
				escreva("O resultado dessa operação foi : ", resultado," .")
				pare
			}
			caso '*':
			{
				resultado = (n1*n2)
				escreva("O resultado dessa operação foi : ", resultado," .")
				pare
			}
			caso '/':
			{
				resultado = (n1/n2)
				escreva("O resultado dessa operação foi : ", resultado," .")
				pare
			}
			caso '~':
			{
				resultado = mat.potencia(n1,n2)
				escreva("O resultado dessa operação foi : ", resultado," .")
				pare
			}		
			caso contrario:
			{
				escreva("ERRO - OPERAÇÃO INVÁLIDA")
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 47; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */