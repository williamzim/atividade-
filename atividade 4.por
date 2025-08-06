programa
{
	// Inclui a biblioteca para manipulação de texto
	inclua biblioteca Texto

	funcao inicio()
	{
		// Declaração de Variáveis
		cadeia frase_original
		cadeia frase_processada
		caracter letra // <-- MUDANÇA 1: Usando o tipo 'caracter'
		inteiro total_vogais = 0
		inteiro total_consoantes = 0
		inteiro tamanho_frase

		// --- Entrada de Dados ---
		escreva("Digite uma frase para análise: ")
		leia(frase_original)

		// --- Processamento ---
		frase_processada = Texto.caixa_baixa(frase_original)
		tamanho_frase = Texto.numero_caracteres(frase_processada)

		para (inteiro i = 0; i < tamanho_frase; i++)
		{
			// <-- MUDANÇA 2: Usando a função correta para obter um 'caracter'
			letra = Texto.obter_caracter(frase_processada, i)

			// <-- MUDANÇA 3: Comparações com 'caracter' usam aspas simples
			se (letra == 'a' ou letra == 'e' ou letra == 'i' ou letra == 'o' ou letra == 'u' ou
			    letra == 'á' ou letra == 'é' ou letra == 'í' ou letra == 'ó' ou letra == 'ú' ou
			    letra == 'â' ou letra == 'ê' ou letra == 'ô' ou letra == 'ã' ou letra == 'õ')
			{
				total_vogais = total_vogais + 1
			}
			// Agora a comparação de 'maior' e 'menor' funciona com o tipo 'caracter'
			senao se ((letra >= 'a' e letra <= 'z') ou (letra == 'ç'))
			{
				total_consoantes = total_consoantes + 1
			}
		}

		// --- Saída de Dados ---
		limpa()
		escreva("=======================================\n")
		escreva("       Análise da Frase\n")
		escreva("=======================================\n")
		escreva("Frase original: ", frase_original, "\n\n")
		escreva("Total de Vogais: ", total_vogais, "\n")
		escreva("Total de Consoantes: ", total_consoantes, "\n")
		escreva("=======================================\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1727; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */