programa
{
	
	funcao inicio()
	{
		cadeia nome
		real n1,n2,md,somamd=0.0, quant
		inteiro cont=0

		escreva("\nInforme o nome do aluno ou 'fim' para encerrar: ")
		leia(nome)
		enquanto(nome != "fim"){
	 		escreva("informe as duas notas : ")
			leia(n1,n2)
			md = (n1+n2)/2.0
			escreva(nome," - Média: ",md)
			cont++
			somamd = somamd + md


			escreva("\nInforme o nome do aluno ou 'fim' para encerrar: ")
			leia(nome)
		
		}
		se(cont != 0){
			
			somamd=somamd/cont
			escreva("\nForam informados os dados de ",cont," alunos, sendo que a média entre esses alunos foi de ",somamd," pontos.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */