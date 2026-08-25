programa
{
	funcao inicio()
	{
		const inteiro ESPACOS = 8 
		
		cadeia nomes[ESPACOS] , nome_busca, pausa
		inteiro quantidades[ESPACOS] , qtd_produtos = 0 , opcao = -1 , posicao_encontrada

		enquanto(opcao != 6)
		{
			opcao = menu()

			escolha(opcao)
			{
				caso 1:
					escreva("\n=== INSERÇÃO ===\n")
					
					se(qtd_produtos>= ESPACOS)
					{
						escreva("ERRO! LIMITE ATINGIDO! REMOVA UM ITEM E TENTE NOVAMENTE!")	
					}
					senao
					{
						escreva("\nDigite o nome do produto: \n")
						leia(nome_busca)

						posicao_encontrada = localizar(nomes, nome_busca, qtd_produtos)

						se(posicao_encontrada!= -1)
						{
							escreva("\nERRO! PRODUTO REPETIDO! TENTE NOVAMENTE!\n\n")
						}
						senao
						{
							nomes[qtd_produtos] = nome_busca
							escreva("Digite quantos produtos deseja comprar: \n")
							leia(quantidades[qtd_produtos])

							qtd_produtos++
							escreva("\n SUCESSO\n")
							
						}
					}
				escreva("\n Digite ENTER para continuar: ")
				leia(pausa) 
				pare



				caso 2: 
					escreva("\n=== LISTAGEM DE PRODUTOS ===\n\n")

					se(qtd_produtos == 0)
					{
						escreva("\nSem itens na lista. Insira um item e tente novamente.\n")
					}
					senao
					{
						para(inteiro i = 0; i < qtd_produtos; i++)
						{
							exibir_produto(nomes, quantidades, i)

						}
					}
				escreva("\n Digite ENTER para continuar: ")
				leia(pausa) 
				pare




				caso 3:
					escreva("\n=== CONSULTA ÚNICA ===\n")
					escreva("\nDigite o nome exato do produto que deseja consultar: \n")
					leia(nome_busca)

					posicao_encontrada = localizar(nomes, nome_busca, qtd_produtos)

					se (posicao_encontrada == -1)
					{
						escreva("\n O nome digitado não corresponde a nenhum produto da lista.\n")
					}
					senao
					{
						escreva("\n SUCESSO! \n")
						exibir_produto(nomes, quantidades, posicao_encontrada)
					}

					escreva("\n Digite ENTER para continuar: ")
					leia(pausa)
					pare





				caso 4:
					escreva("\n=== REMOVER PRODUTO ===\n")
					escreva("\nDigite o nome do produto que deseja remover: \n")
					leia(nome_busca)

					posicao_encontrada = localizar(nomes , nome_busca, qtd_produtos)

					se(posicao_encontrada == -1)
					{
						escreva("\n O nome digitado não corresponde a nenhum produto da lista.\n")
					}
					senao
					{
						para(inteiro i= posicao_encontrada; i< qtd_produtos -1; i++)
						{
							nomes[i] = nomes[i+1]
							quantidades[i] = quantidades [i+1]
							
						}
						qtd_produtos--
						escreva("\nSUCESSO! Item removido e lista reorganizada. \n")
					}
					escreva("\n Digite ENTER para continuar: ")
					leia(pausa)
					pare





				caso 5:
					escreva("\n=== ALTERAR QUANTIDADE ===\n")
					escreva("\nDigite o nome do produto cuja quantidade deseja alterar: \n")
					leia(nome_busca)

					posicao_encontrada = localizar(nomes, nome_busca, qtd_produtos)

					se(posicao_encontrada == -1)
					{
						escreva("\n O nome digitado não corresponde a nenhum produto da lista.\n")
					}
					senao
					{
						escreva("\nPRODUTO ENCONTRADO!\n")
						escreva("\n", nomes[posicao_encontrada])
						escreva("\nQuantidade Atual : ", quantidades[posicao_encontrada])

						escreva("\n\nDigite a quantidade desejada para o produto: ")
						leia(quantidades[posicao_encontrada])

						escreva("\nSUCESSO! Quantidade alterada com sucesso!\n")
						
					}
					escreva("\n Digite ENTER para continuar: ")
					leia(pausa)
					pare
					
				
				
				
				caso 6:
					escreva("\nPROGRAMA FINALIZADO!\n")
					retorne

				caso contrario:
					escreva("\nERRO! OPÇÃO INVALIDA! TENTE NOVAMENTE!\n")
				escreva("\n Digite ENTER para continuar: ")
				leia(pausa) 
				pare
					
			}
		}
	}

	funcao inteiro menu()
	{	
		inteiro opcao_escolhida
		
		escreva("\n=== MENU DE SELEÇÃO ===\n")
		escreva("\n1. Inserir\n2. Listar\n3. Consultar\n4. Removar\n5. Alterar\n6. Sair\n\n")
		leia(opcao_escolhida)
		retorne opcao_escolhida
	}



	funcao inteiro localizar(cadeia lista_nomes[], cadeia nome_buscado, inteiro qtd_produtos)
	{
		para (inteiro i= 0; i< qtd_produtos;i++)
		{
			se(lista_nomes[i] == nome_buscado)
			{
				retorne i
			}
		}
		retorne -1
	}



	funcao exibir_produto(cadeia lista_nomes[], inteiro lista_qtds[], inteiro posicao)
	{
		escreva("\n========")
		escreva("\nNome: " , lista_nomes[posicao] , "\n")
		escreva("Quantidade: " , lista_qtds[posicao], "\n")
		escreva("\n========")
	}




	

	


	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3210; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */