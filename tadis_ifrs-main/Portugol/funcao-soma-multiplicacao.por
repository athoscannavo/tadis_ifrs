/*Crie uma função que calcule a soma e a multiplicação
entre 3 valores do tipo real. A exibição dos resultados
devem ser exibidos pelo módulo que chamou esta função.*/
programa{
	funcao real sm(real n1,real n2,real n3,real &mul){
	real soma
	soma = n1+n2+n3
	mul = n1*n2*n3
	retorne soma
	}
	funcao inicio(){
		real a,b,c, s, mul= 0.0
		leia(a,b,c)
		s = sm(a,b,c,mul)
		escreva(s,"\n",mul)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */