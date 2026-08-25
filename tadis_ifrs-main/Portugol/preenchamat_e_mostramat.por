programa
{
	inclua biblioteca Util
	
	funcao MostraMat(real matriz[][], inteiro linha, inteiro coluna){
		para (inteiro i=0;i<linha;i++){
			para (inteiro j=0;j<coluna;j++){
			escreva("\t",matriz[i][j])
		}
			escreva("\n")
		}
	}


	funcao PreenchaMat(real matriz[][], inteiro linha, inteiro coluna){
		para (inteiro i=0;i<linha;i++){
			para (inteiro j=0;j<coluna;j++){
				matriz[i][j] = Util.sorteia(0,100)*1.0
			}
		}
	}


	
	funcao inicio()
	{
		real m[10][10], n[4][6]
		PreenchaMat(m, 10,10)
		PreenchaMat(n,4,6)
		escreva("\n matriz nº 1: \n")
		MostraMat(m,10,10)
		escreva("\n matriz nº 2: \n")
		MostraMat(n,4,6)
		
	}





	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 605; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */