programa
{
	

	funcao real media3(real n1,real n2,real n3){
		real resp
		resp=(n1+n2+n3)/3
		retorne resp
	}


	funcao inicio()
	{
		real nota1, nota2, nota3, md
		escreva(" informe 3 notas: ")
		leia( nota1 , nota2, nota3)
		md = media3(nota1, nota2, nota3)
		escreva(md)
		
		
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */