programa
{
	inclua biblioteca Matematica --> M
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T

	cadeia tabulacao
	
	funcao inicio()
	{
		inteiro opc 
		tabulacao = "\n\t\t\t\t\t\t\t"
		faca{
		
			 limpa()

			 escreva(tabulacao + "** Menu Principal **")
			 escreva(tabulacao + "====================")
			 escreva(tabulacao + "[1] Menu de cálculos")
			 escreva(tabulacao + "[2] Jogo do adivinha")
			 escreva(tabulacao + "[3] IMC")
			 escreva(tabulacao + "[4] Bhaskara")
			 escreva(tabulacao + "[5] Média")
			 escreva(tabulacao + "[6] Fim")
			 escreva(tabulacao + "====================")
			 escreva(tabulacao + "Escolha a opção desejada: ")
			 leia(opc)

			 escolha(opc){
			 	caso 1: submenu()
			 	pare
			 	caso 2: adivinha()
			 	pare
			 	caso 3: IMC()
			 	pare
			 	caso 4: bhaskara()
			 	pare
			 	caso 5: media()
			 	pare
			 	caso 6: escreva(tabulacao + "Fim do programa\n")
			 	pare
			 	caso contrario: escreva(tabulacao + "Opção inválida")
			 }
		}enquanto(opc!=6)
	}
	
	funcao submenu(){
		
		inteiro opc
		
		limpa()
		escreva(tabulacao + "Bem vindo ao menu de cálculos")
		escreva(tabulacao + "=============================")
		escreva(tabulacao + "[1] Todos os cálculos")
		escreva(tabulacao + "[2] Cálculo escolhido")
		escreva(tabulacao + "[3] Voltar")
		escreva(tabulacao + "=============================")
		escreva(tabulacao + "Escolha a opção desejada: ")
		leia(opc)

		escolha(opc){
			caso 1: todos()
			pare
			caso 2: escolhido()
			pare
			caso 3: inicio()
			pare
			caso contrario: escreva(tabulacao + "Opção inválida")
		}
	}

	funcao adivinha(){
		inteiro na, palpite
		cadeia resp

		faca{
			limpa()
			na=U.sorteia(0, 100)
			faca{
				escreva("\n" + tabulacao + "Digite seu palpite (de 0 a 100): ")
				leia(palpite)
				
				se(palpite>na){
					escreva(tabulacao + "O seu palpite é maior")
				}
				senao se(palpite<na){
					escreva(tabulacao + "O seu palpite é menor")
				}
				senao se(palpite==na){
					escreva(tabulacao + "Parabéns, você acertou!")
				}
				
			}enquanto(palpite!=na)

			escreva("\n" + tabulacao + "Deseja continuar?(s/n): ")
			leia(resp)

			resp=T.caixa_baixa(resp)
			}enquanto(resp=="sim" ou resp=="s")
	}

	funcao IMC(){
		real m, a, imc
		cadeia msg, resp
		faca{
			limpa()
			
			escreva(tabulacao + "Cálculo do IMC")
			escreva(tabulacao + "Informe a altura (use ponto ao invés de vírgula): ")
			leia(a)
			escreva(tabulacao + "Informe o peso (kg): ")
			leia(m)
			imc=m/(a*a)
			msg="Resultado: "
			
			se(imc<18.5){
				msg+="Magreza "
				se(imc>=17){
					msg+="leve"
				}
				se(imc<17 e imc>=16){
					msg+="moderada"
				}
				se(imc<16){
					msg+="severa"
				}
			}
			se(imc>=18.5 e imc<25){
				msg+="Peso normal"
			}
			se(imc>=25 e imc<30){
				msg+="Sobrepeso"
			}
			
			se(imc>=30){
				msg+="Obesidade "
				se(imc<35){
					msg+="classe I"
				}
				se(imc>=35 e imc<40){
					msg+="classe II"
				}
				se(imc>=40){
					msg+="classe III"
				}
			}
			escreva(tabulacao + msg, " - IMC = ", imc)
			U.aguarde(1500)
			escreva("\n" + tabulacao + "Deseja continuar?(s/n): ")
			leia(resp)
	
			resp=T.caixa_baixa(resp)
		}enquanto(resp=="sim" ou resp=="s")
	}
		
	funcao bhaskara(){
	     real a, b, c, x1, x2, delta
	     cadeia resp

	     faca{

	        limpa()
		  
	        escreva(tabulacao + "Digite o valor de [a]: ")
	        leia (a)
	        escreva(tabulacao + "Digite o valor de [B]: ")
	        leia (b)
	        escreva(tabulacao + "Digite o valor de [c]: ")
	        leia (c)
	        delta = M.potencia(b, 2.0) - (4*a*c)
	        escreva(tabulacao + "Delta = ", delta, "\n")
	        
	        se ((delta < 0) ou (a==0))
	        {
	            escreva(tabulacao + "Impossível Calcular", "\n") 
	        }
	        senao
	        {
	            x1 = (-b + M.raiz(delta, 2.0)) / (2*a)
	            x2 = (-b - M.raiz(delta, 2.0)) / (2*a)
	            escreva(tabulacao + "X1 = ", x1, "\n")
	            escreva(tabulacao + "X2 = ", x2, "\n")
	        }
	
	        U.aguarde(1500)
	        escreva(tabulacao + "Deseja continuar?(s/n): ")
	        leia(resp)
	
	        resp=T.caixa_baixa(resp)
	     }enquanto(resp=="sim" ou resp=="s")
	}

	funcao media(){
		inteiro mA, mB, a, b, c, d
		cadeia resp

		faca{
			limpa()
			
			escreva(tabulacao + "Nota do 1º bimestre: ")
			leia(a)
			escreva(tabulacao + "Nota do 2º bimestre: ")
			leia(b)
			escreva(tabulacao + "Nota do 3º bimestre: ")
			leia(c)
			escreva(tabulacao + "Nota do 4º bimestre: ")
			leia(d)
	
			mA=a+b+c+d
			mB=mA/4
	
			escreva("\n" + tabulacao + "Sua média é "+ mB)
			
			U.aguarde(1500)
			escreva("\n" + tabulacao + "Deseja continuar?(s/n): ")
			leia(resp)
			
		resp=T.caixa_baixa(resp)
		}enquanto (resp=="s" ou resp=="sim")
	}

	funcao todos(){
		real a, b, resultado1, resultado2, resultado3, resultado4
		cadeia resp

		limpa() 

		escreva(tabulacao + "** Bem vindo ao programa de cálculos **")
		escreva(tabulacao + "=======================================")

		faca{
			limpa()
			
			escreva(tabulacao + "Informe o primeiro número: ")
			leia(a) 
			escreva(tabulacao + "Informe o segundo número: ")
			leia(b)
			
			resultado1 = a + b
			resultado2 = a - b
			resultado3 = a * b
			resultado4 = a / b
	
			escreva(tabulacao + "Os resultados são:\n")
	
			escreva(tabulacao + a + " + " + b + " = " + resultado1)
			escreva(tabulacao + a + " - " + b + " = " + resultado2)
			escreva(tabulacao + a + " x " + b + " = " + resultado3)
			escreva(tabulacao + a + " / " + b + " = " + resultado4)
	
			U.aguarde(1500)
			escreva("\n" + tabulacao + "Deseja continuar?(s/n): ")
			leia (resp)
			
			resp=T.caixa_baixa(resp)
		}enquanto (resp=="s" ou resp=="sim")
		
		se (resp=="n" ou resp=="nao" ou resp=="não")
		{
			submenu()
		}
	}

	funcao escolhido(){
		real a, b, r1, r2, r3, r4, r5, p
	     cadeia resp
	     inteiro op

	faca{
		limpa()
		
		escreva(tabulacao + "Digite o primeiro número: ")
		leia(a)

		escreva(tabulacao + "Digite o segundo número: ")
		leia(b)

		limpa()

		escreva("\n" + tabulacao + "Que operação você deseja realizar?")
		escreva("\n" + tabulacao + "Adição(1), subtração(2), multiplicação(3), potenciação(4) ou divisão(5): ")
		leia(op)

		limpa()

		r1=a+b
		r2=a-b
		r3=a*b
		r4=a/b

		p=M.potencia (a,b)

		se(op==5 e b==0 ou a==0){
			escreva(tabulacao + "Para a divisão, o número deve ser maior que zero")
		}
		senao{
			escolha (op)
			{
				caso 1:escreva(tabulacao+a+" + "+b+" = "+r1)
				pare
				caso 2:escreva(tabulacao+a+" - "+b+" = "+r2)
				pare
				caso 3:escreva(tabulacao+a+" x "+b+" = "+r3)
				pare
				caso 4:escreva(tabulacao+a+" * "+b+" = "+p)
				pare
				caso 5:escreva(tabulacao+a+" / "+b+" = "+r4)
				pare
			}
		}
		
		U.aguarde(1500)
		escreva("\n"+tabulacao+"Deseja continuar?(s/n): ")
		leia(resp)
		
		resp=T.caixa_baixa(resp)
	}enquanto(resp=="sim" ou resp=="s")

	se (resp=="n" ou resp=="nao" ou resp=="não")
		{
			submenu()
		}
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6375; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */