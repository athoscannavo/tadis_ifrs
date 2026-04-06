programa
{
	
	funcao inicio()
	{
		cadeia nome
		real n1,n2,md,somamd=0.0
		inteiro cont=0
		caracter executa= 's'


		enquanto(executa=='s'){
			leia(nome)
	 		escreva("informe as duas notas")
			leia(n1,n2)
			md = (n1+n2)/2.0
			escreva(nome," - Média: ",md)
			cont++
			somamd = somamd + md
			escreva ("\nDeseja informar outro aluno? (s/n)")
			leia(executa)
		
		}
		somamd=somamd/cont
		escreva("\nForam informados os dados de ",cont," alunos, sendo que a média entre esses alunos foi de ",somamd," pontos.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */