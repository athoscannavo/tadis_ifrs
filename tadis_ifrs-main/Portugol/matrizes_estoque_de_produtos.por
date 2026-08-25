programa
{
	funcao inicio()
	{
		// Configuração da matriz 5x3 (4 armazéns + 1 linha de custos X 3 produtos)
		constante inteiro LINHAS_TOTAL = 5
		constante inteiro COLUNAS_TOTAL = 3
		constante inteiro LINHA_CUSTO = 4 // Última linha (índice 4) guarda os custos

		real matriz[LINHAS_TOTAL][COLUNAS_TOTAL]
		inteiro l, c

		// 1. Entrada de Dados: Estoque dos Armazéns (Linhas 0 a 3)
		para (l = 0; l < 4; l++)
		{
			escreva("--- CADASTRO DE ESTOQUE: ARMAZÉM ", l + 1, " ---\n")
			para (c = 0; c < COLUNAS_TOTAL; c++)
			{
				escreva("Quantidade do Produto ", c + 1, ": ")
				leia(matriz[l][c])
			}
			escreva("\n")
		}

		// Entrada de Dados: Custo dos Produtos (Linha 4)
		escreva("--- CADASTRO DE CUSTOS UNITÁRIOS ---\n")
		para (c = 0; c < COLUNAS_TOTAL; c++)
		{
			escreva("Preço do Produto ", c + 1, ": R$ ")
			leia(matriz[LINHA_CUSTO][c])
		}

		// Variáveis para os cálculos dos itens
		real total_itens_armazem[4] = {0.0, 0.0, 0.0, 0.0} // Item A
		real maior_estoque_p2 = -1.0                      // Item B
		inteiro armazem_maior_p2 = 0                       // Item B
		real menor_estoque_geral                           // Item C
		inteiro armazem_menor_geral = 0                    // Item C
		real custo_total_produto[3] = {0.0, 0.0, 0.0}      // Item D
		real custo_total_armazem[4] = {0.0, 0.0, 0.0, 0.0} // Item E

		// 2. Processamento dos Dados
		para (l = 0; l < 4; l++)
		{
			para (c = 0; c < COLUNAS_TOTAL; c++)
			{
				// Item a: Acumula a quantidade total de itens de cada armazém (soma da linha)
				total_itens_armazem[l] = total_itens_armazem[l] + matriz[l][c]

				// Item d: Acumula a quantidade total de unidades vendidas do produto (soma da coluna)
				custo_total_produto[c] = custo_total_produto[c] + matriz[l][c]

				// Item e: Calcula o custo financeiro total por armazém (estoque atual x custo da linha 4)
				custo_total_armazem[l] = custo_total_armazem[l] + (matriz[l][c] * matriz[LINHA_CUSTO][c])
			}

			// Item b: Verifica qual armazém tem o maior estoque do produto 2 (coluna de índice 1)
			se (matriz[l][1] > maior_estoque_p2)
			{
				maior_estoque_p2 = matriz[l][1]
				armazem_maior_p2 = l + 1
			}
		}

		// Item c: Encontra o armazém com o menor estoque geral
		menor_estoque_geral = total_itens_armazem[0]
		armazem_menor_geral = 1
		para (l = 1; l < 4; l++)
		{
			se (total_itens_armazem[l] < menor_estoque_geral)
			{
				menor_estoque_geral = total_itens_armazem[l]
				armazem_menor_geral = l + 1
			}
		}

		// Finalização do Item d: Multiplica o total acumulado de itens pelo seu respectivo valor unitário
		para (c = 0; c < COLUNAS_TOTAL; c++)
		{
			custo_total_produto[c] = custo_total_produto[c] * matriz[LINHA_CUSTO][c]
		}

		// 3. Exibição do Relatório Final
		escreva("\n=================== RELATÓRIO DE LOGÍSTICA ===================\n")

		escreva("\na. QUANTIDADE DE ITENS ARMAZENADOS EM CADA ARMAZÉM:\n")
		para (l = 0; l < 4; l++)
		{
			escreva("Armazém ", l + 1, ": ", total_itens_armazem[l], " unidades.\n")
		}

		escreva("\nb. MAIOR ESTOQUE DO PRODUTO 2:\n")
		escreva("Armazém ", armazem_maior_p2, " com ", maior_estoque_p2, " unidades.\n")

		escreva("\nc. MENOR ESTOQUE GERAL ENTRE OS ARMAZÉNS:\n")
		escreva("Armazém ", armazem_menor_geral, " (Total de ", menor_estoque_geral, " itens).\n")

		escreva("\nd. CUSTO FINANCEIRO TOTAL EM ESTOQUE POR PRODUTO:\n")
		para (c = 0; c < COLUNAS_TOTAL; c++)
		{
			escreva("Produto ", c + 1, ": R$ ", custo_total_produto[c], "\n")
		}

		escreva("\ne. VALOR PATRIMONIAL TOTAL DE CADA ARMAZÉM:\n")
		para (l = 0; l < 4; l++)
		{
			escreva("Armazém ", l + 1, ": Valor em produtos = R$ ", custo_total_armazem[l], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3658; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */