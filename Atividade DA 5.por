programa
{
	inclua biblioteca Matematica 

	cadeia nome[10], cpf[10], correcao = "", quarto[10] = {"livre","livre","livre","livre","livre","livre","livre","livre","livre","livre"}
	cadeia nomeQuarto[10], name
	caracter determine
	inteiro sair = 0 , dias[10], cont = 0, conte = 0, numero = 0, i, r, diasQuarto[10], pos, opcao
	real diaria = 100.0, despesas[10], total [10] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0}
		
	funcao inicio()
	{
		enquanto(sair != 3)
		{
			escreva("1 – Cadastrar Hóspede\n2 – Exibir Hóspede Cadastrados\n3 – Exibir Quartos\n4 – Atribuir Hóspede a um quarto\n5 – Reservar Área de Lazer\n6 – Calcular Total a Pagar\n0 – Sair\n")
			leia(opcao)

			escolha (opcao)
			{
				caso 1:
				{
					cadastrarHospedes()
					pare
				}
				caso 2:
				{
					exibirHospedes()
					pare
				}
				caso 3:
				{
					exibirQuartos()
					pare
				}
				caso 4:
				{
					atribuirHospedeQuarto()
					pare
				}
				caso 5:
				{
					areasDeLazer()
					pare
				}
				caso 6:
				{
					checkOut()
					pare
				}
				caso 0:
				{
					escreva("Finalizando seção...")
					sair = 3
					pare
				}
			}
		}
	}

	funcao areasDeLazer()
	{
		escreva("\nNome do hóspede: ")
		leia(name)
		pos = 0
		
		enquanto ((pos<10) e (nome[pos] != name))
		{
			pos++
		}
		
		se (pos < 10)
		{
			escreva("Qual aréa de lazer deseja?\n")
			escreva("A-Academia\nS-Salão de Festas\nR-Restaurante\n")
			leia(determine)
	
			
			escolha (determine)
			{
				caso 'A':
				{
					escreva("área de lazer desejada - Academia\n")
					total[pos] = total[pos] + 20.0
					escreva("Obrigado, ", name," a Academia está reservada e o valor já foi adicionado a sua conta\n")
					pare
				}
				caso 'S':
				{
					escreva("área de lazer desejada - Salão de Festas\n")
					total[pos] = total[pos] + 50.0
					escreva("Obrigado, ", name," o Salão de Festas está reservado e o valor já foi adicionado a sua conta\n")
					pare
				}
				caso 'R':
				{
					escreva("área de lazer desejada - Restaurante\n")
					total[pos] = total[pos] + 35.0
					escreva("Obrigado, ", name," o Restaurante está reservado e o valor já foi adicionado a sua conta\n")
					pare
				}
			}
		}
		
	}
	
	funcao atribuirHospedeQuarto()
	{
		exibirHospedes()

		escreva("\nQual hóspede deseja atribuir a um quarto?\nInforme o Índice do hóspede: ")
		leia(i)
		se (i > cont)
		{
			escreva("Hóspede não existe\n\n")
		}

		senao
		{
			escreva("\nQual o numero do quarto?\nInforme o Índice do quarto: ")
			leia(r)
	
			se (quarto[r] == "ocupado")
			{
				escreva("Quarto ja esta ocupado\n\n")
			}
			senao
			{
				quarto[r] = "ocupado"

				nomeQuarto[r] = nome[i]
				diasQuarto[r] = dias[i]
			}
		}

		exibirQuartos()
	}

	funcao cadastrarHospedes()
	{
		se (cont <10)
		{
			faca{
				escreva("\nInforme os dados do hóspede:\n")
				
				escreva("Nome: ")
				leia(nome[cont])
	
				escreva("CPF: ")
				leia(cpf[cont])
	
				escreva("Quantos dias ficara hospedado: ")
				leia(dias[cont])
	
				despesas[cont] = dias[cont] * diaria
				total[cont] = despesas[cont] + total[cont]

				escreva("Valor total das despesas: R$", despesas[cont])
	
				escreva("os dados informados estão corretos?\nS-Sim ou N-Não\n")
				leia(correcao)
				se (correcao == "S")
				{
					cont ++
				}
			}enquanto (correcao != "S")
			escreva("\nTerminou o cadastro\n")
		}
		senao
		{
			escreva("numero máximo de cadastros")
		}
	}
	
	funcao exibirHospedes()
	{
		para (i = 0; i < cont; i ++)
		{
			escreva("\nÍndice: ", i)
			escreva("\nNome: ", nome[i])
			escreva("\nCPF: ", cpf[i])
			escreva("\nQuantidade de Dias: ", dias[i], "\n\n")
		}
	}
	
	funcao exibirQuartos()
	{
		para (r = 0; r < 10; r++)
		{
			se (quarto[r] == "ocupado")
			{
				escreva("Quarto ", r, " ocupado por: ", nomeQuarto[r], " por ", diasQuarto[r], " dias\n")
			}
			senao se (quarto[r] == "livre")
			{
				escreva("Quarto ", r, " esta livre\n")
			}
			conte = 0
			conte++
		}
	escreva("\n")
	}

	
	funcao checkOut()
	{
		exibirHospedes()

		i = 0
		
		escreva("\nQual o índice do hóspede? ")
		leia(i)
		
		pos = 0
		
		enquanto ((pos<10) e (nomeQuarto[pos] != nome[i]))
		{
			pos++
		}
		
		se (pos < 10)
		{
			quarto[pos] = "livre"

			escreva("Obrigado por usar o Hotel TDS, ", nomeQuarto[pos],"!\n")
			escreva("O total a ser pago é R$", total[i], " \n")
		}

		senao 
		{
			escreva("Obrigado por usar o Hotel TDS, ", nome[i],"!\n")
			escreva("O total a ser pago é R$", total[i], " \n")
		}
		
		exibirQuartos()
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {despesas, 9, 22, 8}-{total, 9, 36, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */