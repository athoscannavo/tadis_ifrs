programa
{
	/*divisao manual automatizada
	1 declarar dividendo, divisor, quociente
	2 realizar subtração consecutiva
	3 corrigir bugs*/
	funcao inteiro div(inteiro dividendo, inteiro divisor)
	{
		inteiro i , quociente = 0
		enquanto(dividendo >= divisor)
		{
			se (divisor == 0){
				escreva("erro: divisor igual a zero")
				retorne 0
			}
			senao{
				enquanto(dividendo>= divisor){
					dividendo = dividendo - divisor
					quociente = quociente +1
				}
			}
			
		}
		retorne quociente
	}	
	



	
	funcao inicio()
	{
	inteiro dividendo, divisor, quociente
	leia(dividendo, divisor)
	quociente = div(dividendo, divisor)
	escreva (quociente)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 423; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */