programa
{
	
	funcao inicio()
	{

	/*Faça um programa que preencha um vetor com oito
números inteiros, calcule e mostre dois vetores resultantes. O
primeiro deve conter os números positivos; o segundo deve
conter os números negativos. Cada vetor resultante vai ter, no
máximo, oito posições, que poderão não ser completamente
utilizadas.*/
	inteiro v[8], vp[8], vn[8]
	inteiro i=0,p=0,n=0

		para(i=0;i<8;i++){
			leia(v[i])
			se(v[i]>0){
				vp[p] = v[i]
				p++
			}
			senao se(v[i]<0){
				vn[n] = v[i]
				n++
			}
			
		}
		
		
		
		
		escreva("\nNumeros Positivos: ")
		
		para(p=0 ; p<8; p++){
			escreva(vp[p], " ")
		}

		escreva("\nNumeros Negativos: ")
		
		para(n=0 ; n<8; n++){
			escreva(vn[n], " ")
		}

	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */