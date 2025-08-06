programa
{
	
	funcao inicio()
	{
		// Declaração de variáveis
		inteiro decimal // O número a ser convertido
		inteiro numero_temp // Variável temporária para o processo de divisão
		inteiro resto // O resto da divisão
		cadeia binario = "" // A cadeia de caracteres para armazenar o resultado binário

		// 1. Ler o número inteiro positivo
		escreva("Digite um número inteiro positivo: ")
		leia(decimal)

		// 2. Tratar o caso especial onde o número é 0
		se (decimal == 0) {
			escreva("A representação binária de 0 é: 0")
		} 
		// 3. Processar números positivos
		senao se (decimal > 0)
		{
			numero_temp = decimal
			
			// O algoritmo de divisões sucessivas
			enquanto (numero_temp > 0)
			{
				resto = numero_temp % 2
				
				// Converte o resto (0 ou 1) para texto e adiciona ao início da cadeia 'binario'
				// Adicionar ao início garante que o número seja montado na ordem correta
				se (resto == 1) {
					binario = "1" + binario
				} senao {
					binario = "0" + binario
				}
				
				// Divisão inteira
				numero_temp = numero_temp / 2
			}
			
			// Exibição do resultado final
			escreva("A representação binária de ", decimal, " é: ", binario)
		}
		// 4. Tratar o caso de número negativo
		senao {
			escreva("Por favor, digite um número inteiro positivo.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1293; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */