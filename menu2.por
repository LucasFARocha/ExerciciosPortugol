programa
{
	inclua biblioteca Texto --> T
	inclua biblioteca Util --> U
	inclua biblioteca Calendario --> C
	
	cadeia tab
	
	funcao inicio()
	{
		inteiro resp
		tab="\n\t\t\t\t\t\t\t"

		faca{
			limpa()

			escreva(tab+"** Menu Principal **")
			escreva(tab+"====================")
			escreva(tab+"[1] Consulta dia/mês")
			escreva(tab+"[2] Consulta sigla/estado")
			escreva(tab+"[3] Extenso de um número")
			escreva(tab+"[4] Fatorial")
			escreva(tab+"[5] Cálculo específico")
			escreva(tab+"[6] Fim")
			escreva(tab+"====================")
			escreva(tab+"Escolha a opção desejada: ")
			leia(resp)

			escolha(resp){
				caso 1: diames()
				pare
				caso 2: siglaestado()
				pare
				caso 3: extenso()
				pare
				caso 4: fatorial()
				pare
				caso 5: calcula1()
				pare
				caso 6: escreva(tab+"Fim do programa\n")
				pare
				caso contrario: escreva(tab+"Opção inválida")
			}
		}enquanto(resp!=6)
	}

	funcao traco(cadeia a, inteiro max){
	    para(inteiro i=0;i<max;i++){
	    
	        escreva(a)
	    }
	}
	
	funcao diames(){
		cadeia resp, diaSC, resp2
		inteiro diaS, diaM, mes, ano, mesC
	
		faca{
	
			limpa()
			
			escreva(tab+"Deseja saber que dia é hoje?(s/n): ")
			leia(resp)
			resp=T.caixa_baixa(resp)
		
			diaS=C.dia_semana_atual()
			diaSC=C.dia_semana_completo(diaS, verdadeiro, falso)
			diaM=C.dia_mes_atual()
			mes=C.mes_atual()
			ano=C.ano_atual()
		
			diaSC=T.caixa_baixa(diaSC)
			
			se (resp=="sim" ou resp=="s"){
				 escreva(tab+"Hoje é "+diaSC+", "+diaM+"/"+mes+"/"+ano+"\n")
			}
		
			U.aguarde(1500)
			traco("-",150)
		
			escreva(tab+"Deseja continuar?(s/n): ")
			leia(resp2)
			resp2=T.caixa_baixa(resp2)
	
		}enquanto (resp2=="sim" ou resp2=="s")
	}
	
	funcao siglaestado(){
		cadeia estado [27][2], texto, resp
		inteiro i
		logico achou

		estado[0][0]="AC" estado[0][1]="Acre"
		estado[1][0]="AL" estado[1][1]="Alagoas"
		estado[2][0]="AP" estado[2][1]="Amapá"
		estado[3][0]="AM" estado[3][1]="Amazonas"
		estado[4][0]="BA" estado[4][1]="Bahia"
		estado[5][0]="CE" estado[5][1]="Ceará"
		estado[6][0]="DF" estado[6][1]="Distrito Federal"
		estado[7][0]="ES" estado[7][1]="Espírito Santo"
		estado[8][0]="GO" estado[8][1]="Goiás"
		estado[9][0]="MA" estado[9][1]="Maranhão"
		estado[10][0]="MT" estado[10][1]="Mato Grosso"
		estado[11][0]="MS" estado[11][1]="Mato Grosso do Sul"
		estado[12][0]="MG" estado[12][1]="Minas Gerais"
		estado[13][0]="PA" estado[13][1]="Pará"
		estado[14][0]="PB" estado[14][1]="Paraíba"
		estado[15][0]="PR" estado[15][1]="Paraná"
		estado[16][0]="PE" estado[16][1]="Pernambuco"
		estado[17][0]="PI" estado[17][1]="Piauí"
		estado[18][0]="RJ" estado[18][1]="Rio de Janeiro"
		estado[19][0]="RN" estado[19][1]="Rio Grande do Norte"
		estado[20][0]="RS" estado[20][1]="Rio Grande do Sul"
		estado[21][0]="RO" estado[21][1]="Rondônia"
		estado[22][0]="RR" estado[22][1]="Roraima"
		estado[23][0]="SC" estado[23][1]="Santa Catarina"
		estado[24][0]="SP" estado[24][1]="São Paulo"
		estado[25][0]="SE" estado[25][1]="Sergipe"
		estado[26][0]="TO" estado[26][1]="Tocantins"

		faca{
			limpa()
			escreva(tab+"*** Pesquisando Estados ***")
			escreva(tab+"===========================\n")
			
			escreva(tab+"Informe uma sigla ou um estado: ")
			leia(texto)

			achou=falso
			para(i=0;i<27;i++){
				
				se(texto==estado[i][0]){
					escreva(tab+texto+" corresponde a "+estado[i][1]+"\n")
					achou=verdadeiro
					pare
				}
				senao se(texto==estado[i][1]){
					escreva(tab+texto+" corresponde a "+estado[i][0]+"\n")
					achou=verdadeiro
					pare
				}
			}
			se(achou==falso){
				escreva("\n"+tab+"Sigla ou estado não cadastrado\n")
			}

			U.aguarde(1500)
			traco("-",150)
			escreva(tab+"Deseja continuar?(s/n): ")
			leia(resp)

			resp=T.caixa_baixa(resp)
		}enquanto(resp=="sim" ou resp=="s")
	}
	
	funcao extenso(){
		cadeia unidade[]={"zero","um","dois","três","quatro","cinco","seis","sete","oito","nove","dez","onze","doze","treze","quartorze","quinze","dezesseis","dezessete","dezoito","dezenove"}
		cadeia dezena[]={"","","vinte","trinta","quarenta","cinquenta","sessenta","setenta","oitenta","noventa"}
		cadeia centena[]={"","cento","duzentos","trezentos","quatrocentos","quinhentos","seiscentos","setecentos","oitocentos","novecentos"}
		cadeia resp
		inteiro n, nd, ne, nn

		
		faca{
			limpa()

			escreva(tab+"Digite um número de 0 a 1000: ")
		     leia(n)

			se(n<0 ou n>1000){
				escreva("\n"+tab+"Número fora da faixa")
			}
			senao se(n==100){
				escreva(tab+"A forma extensa desse número é: cem")
			}
			senao se(n<20){
				escreva(tab+"A forma extensa desse número é: "+unidade[n])
			}
			senao se(n==1000){
				escreva(tab+"A forma extensa desse número é: mil")
			}
			senao se(n<100){
				ne=n/10
				nd=n%10
				escreva(tab+"A forma extensa desse número é: "+dezena[ne])
				
				se(nd>0){
					escreva(" e "+unidade[nd])
				}
			}
			senao se(n>100 e n<1000){
				ne=n/100
				nn=n%100
				escreva(tab+"A forma extensa desse número é: "+centena[ne])
				
				se(nn>0 e nn<=19){
					escreva(" e "+unidade[nn])
				}
				senao se(nn>=20){
					
					inteiro ee=nn%10
					escreva(" e "+dezena[nn/10])
					
					se(ee!=0){
						escreva(" e "+unidade[ee])
					}
				}
			}
	
			U.aguarde(1500)
			escreva("\n")
			traco("-",150)
			escreva(tab+"Deseja continuar?(s/n): ")
			leia(resp)
	
			resp=T.caixa_baixa(resp)
		}enquanto(resp=="s" ou resp=="sim")
	}

	funcao fatorial(){
		inteiro x, f=1	
		cadeia resp

		faca{
			limpa()
			f = 1
			
			faca{
				escreva(tab+"Digite um valor maior que zero: ")
				leia(x)
			}enquanto(x<1)
	
			enquanto(x>0){
				f=f*x
				x--
			}
			escreva(tab+"Fatorial = "+f)
	
			U.aguarde(1500)
			escreva("\n")
		     traco("-",150)
			escreva(tab+"Deseja continuar?(s/n): ")
			leia(resp)
		
			resp=T.caixa_baixa(resp)
		}enquanto(resp=="s" ou resp=="sim")
	}

     funcao calcula1(){
     	cadeia resp
     	faca{
     		limpa()
     		
			traco("-",150)
		     escreva(tab+"Bem Vindo!\n")
		     traco("-",150)
		     escreva(tab+"O primeiro cálculo será 3 x 3 + 4 x 4\n")
		     escreva(tab+"O segundo cálculo será 7 x 7 + 2 x 2\n")
		     traco("-",150)
		     
		     escreva(tab+"O resultado do primeiro cálculo é: "+calcula (3.0, 4.0)+"\n")
		     escreva(tab+"O resultado do segundo cálculo é: "+calcula (7.0, 2.0)+"\n")
		
		     traco("-",150)
		     escreva(tab+"!!!Tchau!!!\n")
		     traco("-",150)
		     
	     	U.aguarde(1500)
			escreva(tab+"Deseja continuar?(s/n): ")
			leia(resp)
		
			resp=T.caixa_baixa(resp)
		}enquanto(resp=="s" ou resp=="sim")
     }
     
    funcao real calcula (real a, real b){
	    real resultado
	    resultado=a*a+b*b
	
	    retorne resultado
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5473; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */