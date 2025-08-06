programa
{
	
	funcao inicio()
	{
		
		// Declaração da matriz 4x4 de inteiros
		inteiro matriz[4][4]
		// Variável para armazenar a soma dos elementos da diagonal principal
		inteiro somaDiagonal = 0
		// Variável para armazenar a média da diagonal principal
		real mediaDiagonal = 0.0

		// Loop para preencher a matriz
		para (inteiro i = 0; i < 4; i++)
		{
			para (inteiro j = 0; j < 4; j++)
			{
				escreva("Digite o valor para a posição [", i, "][", j, "]: ")
				leia(matriz[i][j])
			}
		}

		// Loop para calcular a soma dos elementos da diagonal principal
		// A diagonal principal é onde i é igual a j
		para (inteiro i = 0; i < 4; i++)
		{
			somaDiagonal = somaDiagonal + matriz[i][i]
		}
		
		// Calcula a média da diagonal principal
		// A diagonal principal de uma matriz 4x4 tem 4 elementos
		mediaDiagonal = somaDiagonal / 4.0
		
		// Exibição da matriz completa
		escreva("\n--- Matriz Completa ---\n")
		para (inteiro i = 0; i < 4; i++)
		{
			para (inteiro j = 0; j < 4; j++)
			{
				escreva(matriz[i][j], "\t")
			}
			escreva("\n")
		}
		
		// Exibição do resultado
		escreva("\n--- Resultado ---\n")
		escreva("A soma da diagonal principal é: ", somaDiagonal, "\n")
		escreva("A média da diagonal principal é: ", mediaDiagonal, "\n")
	}



0

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */