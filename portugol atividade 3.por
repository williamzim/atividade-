

programa
{
    funcao inicio()
    {
        // Declaração do vetor para 10 números
        inteiro numeros[10]
        
        // Vetor para armazenar os números repetidos já encontrados
        inteiro repetidos_encontrados[10]
        inteiro total_repetidos = 0

        // Ler os 10 números do usuário
        para (inteiro i = 0; i < 10; i++)
        {
            escreva("Digite o ", i + 1, "º número: ")
            leia(numeros[i])
        }

        // Encontrar os números repetidos
        para (inteiro i = 0; i < 10; i++)
        {
            para (inteiro j = i + 1; j < 10; j++)
            {
                // Se o número atual (numeros[i]) for igual a outro número (numeros[j])...
                se (numeros[i] == numeros[j])
                {
                    // ...e se este número ainda não foi exibido como repetido...
                    se (nao ja_foi_exibido(numeros[i], repetidos_encontrados, total_repetidos))
                    {
                        // Exibir o número repetido
                        escreva("\nNúmero repetido encontrado: ", numeros[i])

                        // Armazenar o número no vetor de repetidos para evitar avisos duplicados
                        repetidos_encontrados[total_repetidos] = numeros[i]
                        total_repetidos++
                    }
                }
            }
        }
        
        // Mensagem final caso nenhum número repetido seja encontrado
        se (total_repetidos == 0)
        {
            escreva("\nNenhum número repetido foi encontrado.")
        }
    }

    // Função auxiliar para verificar se um número já foi exibido
    funcao logico ja_foi_exibido(inteiro numero, inteiro vetor_repetidos[], inteiro total)
    {
        para (inteiro k = 0; k < total; k++)
        {
            se (numero == vetor_repetidos[k])
            {
                retorne verdadeiro
            }
        }
        retorne falso
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */