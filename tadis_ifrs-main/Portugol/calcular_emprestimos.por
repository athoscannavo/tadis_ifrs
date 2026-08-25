programa
{
	
	funcao inicio()
	{
		/*A prefeitura de Contagem abriu uma linha de crédito para os funcionários estatutários. O valor 
máximo da prestação não poderá ultrapassar 30% do salário bruto. Fazer um algoritmo que permita 
entrar com o salário bruto e o valor da prestação, e informar se o empréstimo pode ou não ser 
concedido.*/

		real salb, valprest, prestmax
		

		escreva("informe seu salario bruto e, depois, o valor do emprestimo.")
		leia(salb, valprest)
		prestmax = (salb*0.3)
		se (valprest >= prestmax){
			escreva("O valor inserido é maior que 30% do salário bruto e não foi aprovado. Tente novamente.")
			
			
		}senao  escreva("Empréstimo aprovado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */