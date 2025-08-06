programa
{
	
	funcao inicio()
	{
		// Declaração de variáveis
		inteiro vetor[10] // Vetor para armazenar os 10 números
		inteiro i // Variável de controle do laço
		inteiro soma = 0 // Acumulador para a soma dos números
		real media // Variável para armazenar a média (tipo real para ter casas decimais)
		
		// Contadores
		inteiro acima_media = 0
		inteiro iguais_media = 0

		// PARTE 1: Ler os 10 números e preencher o vetor
		para (i = 0; i < 10; i++)
		{
			escreva("Digite o ", i + 1, "º número: ")
			leia(vetor[i])
			soma = soma + vetor[i] // Já aproveita para somar os valores
		}

		// PARTE 2: Calcular a média
		// A divisão por 10.0 garante que o resultado seja um número real
		media = soma / 10.0
		
		// PARTE 3: Contar quantos estão acima e quantos são iguais à média
		para (i = 0; i < 10; i++)
		{
			se (vetor[i] > media)
			{
				acima_media = acima_media + 1
			}
			senao se (vetor[i] == media)
			{
				iguais_media = iguais_media + 1
			}
		}
		
		// PARTE 4: Exibir os resultados
		escreva("\n--- Estatísticas do Vetor ---\n")
		escreva("Média dos valores: ", media, "\n")
		escreva("Números acima da média: ", acima_media, "\n")
		escreva("Números iguais à média: ", iguais_media, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1221; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */