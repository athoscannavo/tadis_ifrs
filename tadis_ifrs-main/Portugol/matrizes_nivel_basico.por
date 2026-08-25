programa
{
	
	
	funcao inicio()
	{
		/*Faça um programa que preencha uma matriz M(2x2),
calcule e mostre a matriz R, resultante da
multiplicação dos elementos de M pelo seu maior
elemento*/
	 	inteiro m[2][2], r[2][2], linha, coluna, maior = 1

	 	para(linha = 0; linha<2; linha++){
	 		para(coluna = 0; coluna<2; coluna ++){
	 			leia(m[linha][coluna])
	 			se(m[linha][coluna] >= maior){
	 				maior = m[linha][coluna] 
	 			}
	 		}
	 	}

		para(linha = 0; linha<2; linha++){
	 		para(coluna = 0; coluna<2; coluna ++){
	 			r[linha][coluna] = m[linha][coluna] * maior
	 		}
	 	}
	 	escreva("\n")
		para(linha = 0; linha<2; linha++){
	 		para(coluna = 0; coluna<2; coluna ++){
	 			escreva(r[linha][coluna], "\t")
	 		}
	 	escreva("\n")	
		}
			
	 	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */