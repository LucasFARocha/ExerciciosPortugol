programa
{
	inclua biblioteca Texto-->T
	funcao inicio()
	{
		inteiro n, i, par=0, impar=0, t=0, maior=0, menor=0, p1=0, p2=0, som=0
		cadeia resp
		faca{
			limpa()
			para(i=1;i<=10;i++){
				
				escreva("Digite o "+i+"º número: ")
				leia(n)
				se(i==1 ou n>maior){
					maior=n
					p1=i
				}
				se(i==1 ou n<menor){
					menor=n
					p2=i
				}
				som=som+n
				se(n%2==0){
					par++
				}
				senao{
					impar++
				}
			}
			limpa()
			escreva("\n\nHá "+impar+" número(s) ímpar(es)")
			escreva("\nHá "+par+" número(s) par(es)")
			escreva("\nO maior número da lista é "+maior+" e foi o "+p1+"º da lista")
			escreva("\nO menor número da lista é "+menor+" e foi o "+p2+"º da lista")
			escreva("\nA somatória de todos os números é "+som)
			
			escreva("\n\nDeseja continuar?\n")
			leia(resp)
			resp=T.caixa_baixa(resp)
		}enquanto(resp=="s" ou resp=="sim")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 874; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */