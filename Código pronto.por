programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Sons --> s

		inteiro res_problemas = 10, forca = 10, carisma = 10, int = 10, persuasao = 10, classe = 10, acao = 0, musica = 10
		logico quest_barata = falso, alma_rato = falso
		logico quest_barata_feita = falso, barata_morta = falso, canalizador = falso, magiaLouvaDeus = falso, armaLouvaDeus = falso
		logico encarnacao_do_caos = falso

		logico magia = verdadeiro
		inteiro vida = 10
		real dano = 10
		inteiro stamina = 0
		inteiro ataque = 10
		inteiro defesa = 10
		inteiro agua = 10
		inteiro sangramento = 0

	funcao pontinhos()
	{
		u.aguarde(900)
		escreva(".")
		u.aguarde(900)
		escreva(".")
		u.aguarde(900)
		escreva(".")
		u.aguarde(900)
	}

	funcao lutaLouvaDeus()
	{	
		inteiro vidaLD = 14
		real danoLD = 1
		inteiro staminaLD = 2
		inteiro acaoLD = 1
		inteiro ataqueLD = 1

		vida = forca + int / 2
		dano = forca / 10
		stamina = forca / 10 + res_problemas / 10
		defesa = forca / 10
		agua = 5

		//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
		//s.reproduzir_som(musica, verdadeiro)
		
		enquanto(vida > 0 e vidaLD > 0){
		
			staminaLD = 2
			
			enquanto(stamina > 0){
				defesa = defesa / 3
				
				escreva("A lagartixa se encontra com um Louva Deus\n")
				escreva("1.atacar\n")
				escreva("2.beber frasco de água\n")
				escreva("3.defender(acaba turno)\n")
				escreva("\nVida:", vida)
				escreva("\nVida do Louva Deus:", vidaLD)
				escreva("\nFrascos de água:", agua)
				escreva("\nStamina:", stamina)
				escreva("\n\nQual sua ação?:")
				leia(acao)
				limpa()

				escolha(acao){
					caso 1:
						stamina--
						ataque = u.sorteia(1, 10) * dano
						vidaLD = vidaLD - ataque
						escreva("Você ataca o Louva-Deus com sua calda, dando ", ataque, " de dano")
						u.aguarde(1000)
						limpa()
					pare

					caso 2:
						stamina--
						vida = vida + 5
						escreva("Você cura 5 de vida, sua vida agora é:", vida)
						u.aguarde(1000)
						limpa()
					pare

					caso 3:
						stamina = 0
						escreva("Você se prepara para o que está por vir...")
						u.aguarde(1000)
						defesa = defesa * 3
					pare
					
				}
			}
			limpa()
			stamina = forca / 5
			escreva("Seu turno acabou.")
			u.aguarde(2000)
			limpa()
		se(vidaLD > 0){
			enquanto(staminaLD > 0){
				acaoLD = u.sorteia(1, 3)

				escolha(acaoLD){
					caso 1:
					staminaLD--
					ataqueLD = danoLD * u.sorteia(1, 5)
					vida = vida - ataqueLD
					escreva("O Louva Deus ataca com suas garras, tira ", ataqueLD, " de vida")
					u.aguarde(2000)
					limpa()
					pare

					caso 2:
					staminaLD--
					ataqueLD = danoLD * u.sorteia(1, 5)
					vida = vida - ataqueLD
					escreva("O Louva Deus ataca com suas garras, tira ", ataqueLD, " de vida")
					u.aguarde(2000)
					limpa()
					pare

					caso 3:
					staminaLD = 0
					escreva("O Louva Deus só fica parado...")
					u.aguarde(2000)
					limpa()
					pare
				}
			}

					escreva("É seu turno novamente.")
					u.aguarde(2000)
					limpa()
					
				
			}senao{
				se(vida <= 0){
					escreva("Você morreu...")
					u.aguarde(1000000000)
					pare
				}senao{
					escreva("Predador abatido")
					u.aguarde(2000)
					limpa()
					u.aguarde(1000)
				}
			}
		}
	//s.interromper_som(musica)
	} // fim lutaLouvaDeus()

	funcao lutaLagartixas(){

			logico tontura = falso
			inteiro veneno = 0
			inteiro vidaLagartixas = 20
			real danoLagartixas = 1.5
			inteiro staminaLagartixas = 3
			inteiro acaoLagartixas = 1
			inteiro ataqueLagartixas = 1
			inteiro magiaLagartixas = 1
			inteiro sangramentoLagartixas = 0
			
			
		
			//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
			//s.reproduzir_som(musica, verdadeiro)
			
			enquanto(vida > 0 e vidaLagartixas > 0){
			
				staminaLagartixas = 2
				magiaLagartixas = 1
				
				enquanto(stamina > 0){
					
					defesa = defesa / 3
					
					se(tontura == verdadeiro){
						escreva("Você está tonto.")
						stamina = stamina / 2
					}
					
					escreva("As lagartixas radicais tentam te impedir, mas você está decidida.\n")
					escreva("1.atacar\n")
					escreva("2.beber frasco de água\n")
					escreva("3.defender(acaba turno)\n")
					
					se(magiaLouvaDeus == verdadeiro){
						escreva("4.velocidade do louva-deus")
					}
					
					escreva("\nVida:", vida)
					escreva("\nVida das Lagartixas Radicais:", vidaLagartixas)
					escreva("\nFrascos de água:", agua)
					escreva("\nStamina:", stamina)
					escreva("\n\nQual sua ação?:")
					leia(acao)
					limpa()
	
					escolha(acao){
						caso 1:
							stamina--
							ataque = u.sorteia(1, 10) * dano
							vidaLagartixas = vidaLagartixas - ataque
							escreva("Você ataca as Lagartixas com sua cauda, dando ", ataque, " de dano")
							u.aguarde(1000)
							limpa()
						pare
	
						caso 2:
							stamina--
							vida = vida + 5
							escreva("Você cura 5 de vida, sua vida agora é: ", vida)
							u.aguarde(1000)
							limpa()
						pare
	
						caso 3:
							stamina = 0
							escreva("Você se prepara para o que está por vir...")
							u.aguarde(1000)
							defesa = defesa * 3
						pare

						caso 4:
							se(magiaLouvaDeus == verdadeiro){
								se(magia == verdadeiro){
									stamina++
									magia = falso
									escreva("Você obtem um turno extra por causa da magia")
									u.aguarde(2000)
								}senao{
									escreva("Vocẽ não tem magia o suficiente")
									u.aguarde(2000)
								}
							}senao{
								escreva("Essa ação não existe")
								u.aguarde(2000)
							}
						pare

						caso contrario:
							escreva("Essa ação não existe")
							u.aguarde(2000)
						pare
					}
				}
				limpa()
				stamina = forca / 5
				magia = verdadeiro
				
				escreva("Seu turno acabou.")
				u.aguarde(2000)
				limpa()
			se(vidaLagartixas > 0){
				enquanto(staminaLagartixas > 0){
					acaoLagartixas = u.sorteia(1, 3)
	
					escolha(acaoLagartixas){
						caso 1:
						staminaLagartixas = staminaLagartixas - 2
						ataqueLagartixas = danoLagartixas * u.sorteia(1, 4)
						vida = vida - ataqueLagartixas
						escreva("As Lagartixas avançam em cima de você, tira ", ataqueLagartixas, " de vida\n")
						u.aguarde(2000)
						limpa()
						pare
	
						caso 2:
						vidaLagartixas = vidaLagartixas + 10
						escreva("As lagartixas bebem um frasco de caixa d'agua, elas recuperam 10 de vida.")
						u.aguarde(2000)
						limpa()
						pare
	
						caso 3:
						sangramento++
						stamina--
						ataqueLagartixas = danoLagartixas * u.sorteia(1, 2)
						vida = vida - ataqueLagartixas
						
						escreva("Uma das lagartixas te ataca com a espada, tomando ", ataqueLagartixas, " de dano.")

						se(sangramento > 3){
							sangramento = 0
							vida = vida - 5
							escreva(" Após o golpe você sangra muito. e toma mais 5 de dano")
						}
						pare
					}
				}
	
						escreva("É seu turno novamente.")
						u.aguarde(2000)
						limpa()
						
					
				}senao{
					se(vida <= 0){
						escreva("Você morreu...")
						u.aguarde(1000000000)
						pare
					}senao{
						escreva("Predador Abatido")
						u.aguarde(3000)
					}
				}
			}
		//s.interromper_som(musica)
		} // fim lutaLagartixas()

	funcao lutaRato(){

	

			inteiro veneno = 0
			inteiro vidaRato = 50
			real danoRato = 1.5
			inteiro staminaRato = 3
			inteiro acaoRato = 1
			inteiro ataqueRato = 1
		
			//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
			//s.reproduzir_som(musica, verdadeiro)
			
			enquanto(vida > 0 e vidaRato > 0){
			
				staminaRato = 2
				
				enquanto(stamina > 0){
					defesa = defesa / 3
					
					escreva("A lagartixa se encontra com o Rato do Esgoto Profano\n")
					escreva("1.atacar\n")
					escreva("2.beber frasco de água\n")
					escreva("3.defender(acaba turno)\n")
					escreva("\nVida:", vida)
					escreva("\nVida do Rato:", vidaRato)
					escreva("\nFrascos de água:", agua)
					escreva("\nStamina:", stamina)
					escreva("\n\nQual sua ação?:")
					leia(acao)
					limpa()
	
					escolha(acao){
						caso 1:
							stamina--
							ataque = u.sorteia(1, 10) * dano
							vidaRato = vidaRato - ataque
							escreva("Você ataca o Rato com sua cauda, dando ", ataque, " de dano")
							u.aguarde(1000)
							limpa()
						pare
	
						caso 2:
							stamina--
							vida = vida + 5
							escreva("Você cura 5 de vida, sua vida agora é: ", vida)
							u.aguarde(1000)
							limpa()
						pare
	
						caso 3:
							stamina = 0
							escreva("Você se prepara para o que está por vir...")
							u.aguarde(1000)
							defesa = defesa * 3
						pare
						
					}
				}
				limpa()
				stamina = forca / 5
				escreva("Seu turno acabou.")
				u.aguarde(2000)
				limpa()
			se(vidaRato > 0){
				enquanto(staminaRato > 0){
					acaoRato = u.sorteia(1, 3)
	
					escolha(acaoRato){
						caso 1:
						staminaRato = staminaRato - 2
						ataqueRato = danoRato * u.sorteia(1, 5)
						vida = vida - ataqueRato
						escreva("O Rato rola pra frente jogando todo o seu peso em você, você perde ", ataqueRato, " de vida\n")
						u.aguarde(2000)
						limpa()
						pare
	
						caso 2:
						staminaRato--
						ataqueRato = danoRato * u.sorteia(1, 3)
						vida = vida - ataqueRato
						escreva("O Rato ataca com suas patas, tira ", ataqueRato, " de vida\n")
						u.aguarde(2000)
						limpa()
						pare
	
						caso 3:
						se(veneno < 3){
						staminaRato = 0
						escreva("O rato vomita em você, isso te faz sentir um pouco mal mas pode lutar facilmente ainda\n")
						veneno++
						u.aguarde(5000)
						limpa()
						}senao{
							ataqueRato = danoRato * u.sorteia(1, 10)
							vida = vida - ataqueRato
							escreva("O vomito do rato te enfraquece, tira ", ataqueRato, " de vida\n")
							u.aguarde(5000)
						}
						pare
					}
				}
	
						escreva("É seu turno novamente.")
						u.aguarde(2000)
						limpa()
						
					
				}senao{
					se(vida <= 0){
						escreva("Você morreu...")
						u.aguarde(3000)
						pare
					}senao{
						escreva("Predador abatido")
						u.aguarde(1000)
						limpa()
						escreva("Após o último golpe, o Rato solta um enorme grito e então cai no chão.")
						u.aguarde(4000)
						limpa()
						escreva("Do seu corpo sai uma aura preta, ela entra em você.")
						u.aguarde(3000)
						limpa()
						escreva("Você obteve a Alma do Lorde do Rato")
						alma_rato = verdadeiro
						u.aguarde(5000)
						limpa()
						cidade()
					}
				}
			}
		//s.interromper_som(musica)
		} // fim lutaRato()

	funcao lutaReduvidae()
		{	
		limpa()
		escreva("O inseto assassino olha para cima e estende sua mão para cima.\n")
		u.aguarde(3000)
		escreva("??? - VENHA, IRMÃ! VAMOS BATALHAR UMA ÚLTIMA VEZ!\n")
		u.aguarde(3000)
		escreva("A barata cujo você recusou ajudar aparece ao lado do inseto, ainda com metade do seu rosto faltando.\n")
		u.aguarde(5000)
		escreva("??? - MEU NOME É REDUVIDAE! LEMBRE-SE POIS SERÁ O ÚLTIMO NOME QUE OUVIRÁ")
		u.aguarde(3000)
		limpa()
		
		inteiro vidaIA = 35
		real danoIA = 1
		inteiro staminaIA = 2
		inteiro acaoIA = 1
		inteiro ataqueIA = 1
		inteiro fogo = 0

		vida = forca + int / 2
		dano = forca / 10
		stamina = forca / 10 + res_problemas / 10
		defesa = forca / 10
		agua = 5

		//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
		//s.reproduzir_som(musica, verdadeiro)
		
		enquanto(vida > 0 e vidaIA > 0){
		
			staminaIA = 2
			
			enquanto(stamina > 0){
				defesa = defesa / 3

				se(fogo < 0){
					escreva("Você está em chamas você toma 1 de dano cada turno.\n")
					vida--
					fogo--
				}
				escreva("A lagartixa se encontra com Reduvidae e a Barata\n")
				escreva("1.atacar\n")
				escreva("2.beber frasco de água\n")
				escreva("3.defender(acaba turno)\n")
				escreva("\nVida:", vida)
				escreva("\nVida de Reduvidae:", vidaIA)
				escreva("\nFrascos de água:", agua)
				escreva("\nStamina:", stamina)
				escreva("\n\nQual sua ação?:")
				leia(acao)
				limpa()

				escolha(acao){
					caso 1:
						stamina--
						ataque = u.sorteia(1, 10) * dano
						vidaIA = vidaIA - ataque
						escreva("Você ataca os dois com sua calda, dando ", ataque, " de dano")
						u.aguarde(1000)
						limpa()
					pare

					caso 2:
						stamina--
						vida = vida + 5
						escreva("Você cura 5 de vida, sua vida agora é:", vida)
						u.aguarde(1000)
						limpa()
					pare

					caso 3:
						stamina = 0
						escreva("Você se prepara para o que está por vir...")
						u.aguarde(1000)
						defesa = defesa * 3
					pare

					caso 4:
						se(magiaLouvaDeus == verdadeiro){
							se(magia == verdadeiro){
								stamina++
								magia = falso
								escreva("Você obtem um turno extra por causa da magia")
								u.aguarde(2000)
							}senao{
								escreva("Vocẽ não tem magia o suficiente")
								u.aguarde(2000)
							}
						}senao{
							escreva("Essa ação não existe")
							u.aguarde(2000)
						}
					pare

					caso contrario:
						escreva("Essa ação não existe")
						u.aguarde(2000)
					pare
					
				}
			}
			limpa()
			stamina = forca / 5
			magia = verdadeiro
			
			escreva("Seu turno acabou.")
			u.aguarde(2000)
			limpa()
		se(vidaIA > 0){
			enquanto(staminaIA > 0){
				acaoIA = u.sorteia(1, 3)

				escolha(acaoIA){
					caso 1:
					staminaIA--
					ataqueIA = danoIA * u.sorteia(1, 5)
					vida = vida - ataqueIA
					escreva("Reduvidae avança na sua direção junto com a barata. Seu ataque tira ", ataqueIA, " de vida")
					u.aguarde(3000)
					limpa()
					pare

					caso 2:
					staminaIA = staminaIA - 2
					escreva("Reduvidae assopra um jato de fogo, você está em chamas agora. ")
					fogo = 2
					u.aguarde(2000)
					limpa()
					pare

					caso 3:
					staminaIA--
					ataqueIA = danoIA * u.sorteia(1, 5)
					vida = vida - ataqueIA
					escreva("Reduvidae manda a barata te atacar, ela te morde e arranca um pedaço da sua pele")
					u.aguarde(2000)
					limpa()
					pare
				}
			}

					escreva("É seu turno novamente.")
					u.aguarde(2000)
					limpa()
					
				
			}senao{
				se(vida < 0){
					escreva("Você morreu...")
					u.aguarde(1000000000)
					pare
					
				}senao{
					escreva("Predador abatido")
					u.aguarde(2000)
					limpa()
					u.aguarde(1000)
					escreva("Após a longa batalha, você olha ao seu lado e há uma borboleta gigante\n")
					u.aguarde(4000)
					escreva("Borboleta - Prazer conhece-la, Lagartixa Tropical.\n")
					u.aguarde(4000)
					escreva("Lagartixa T. - O prazer é todo meu.\n")
					u.aguarde(4000)
					escreva("Borboleta - Pensei que viria para mim com ódio.\n")
					u.aguarde(4000)
					escreva("Lagartixa T. - Eu vim aqui por você, mas não para te matar. Quero uma aliança.\n")
					u.aguarde(4000)
					escreva("Quero me tornar a única lagartixa viva, a única capaz de descansar, você me acompanha nesta jornada?\n")
					u.aguarde(4000)
					escreva("Borboleta - Interessante, você gostaria de exterminar as demais lagartixas?\n")
					u.aguarde(4000)
					escreva("Lagaratixa T. - Exato.")
					u.aguarde(4000)
					limpa()
					escreva(" Vamos começar com as Lagartixas Radicais, bem a nossa frente.")
					u.aguarde(4000)
					limpa()
					u.aguarde(1000)
					escreva("Final 3/4\nEncarnação do caos")
					u.aguarde(3000)
					escreva("\nMuito obrigado por jogar até aqui, espero que tenha se divertido jogando.\nCréditos\n \nProgramação de bosses:Vinícius Brevesteky Teixeira\nProgramação de áreas:Sarah Elizabete\nRoteiro:Rebeca Schmidt\nProfessor:Jefferson Chaves")
					u.aguarde(10000000)
					pare
				}
			}
		}
	//s.interromper_som(musica)
	} // fim lutaReduvidae()

	funcao lutaBesouro()
	{	
		inteiro vidaBES = 35
		real danoBES = 1
		inteiro staminaBES = 2
		inteiro acaoBES = 1
		inteiro ataqueBES = 1
		logico tontura = falso

		vida = forca + int / 2
		dano = forca / 10
		stamina = forca / 10 + res_problemas / 10
		defesa = forca / 10
		agua = 5

		//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
		//s.reproduzir_som(musica, verdadeiro)
		
		enquanto(vida > 0 e vidaBES > 0){
		
			staminaBES = 1
			
			
			enquanto(stamina > 0){
				defesa = defesa / 3
				
				limpa()
				escreva("A lagartixa se encontra com o Besouro, protetor da caixa d'agua\n")
				escreva("1.atacar\n")
				escreva("2.beber frasco de água\n")
				escreva("3.defender(acaba turno)\n")
				escreva("\nVida:", vida)
				escreva("\nVida do Besouro:", vidaBES)
				escreva("\nFrascos de água:", agua)
				escreva("\nStamina:", stamina)
				escreva("\n\nQual sua ação?:")
				leia(acao)
				limpa()

				escolha(acao){
					caso 1:
						stamina--
						ataque = u.sorteia(1, 10) * dano
						vidaBES = vidaBES - ataque
						escreva("Você ataca o Besouro com sua calda, dando ", ataque, " de dano")
						u.aguarde(1000)
						limpa()
					pare

					caso 2:
						stamina--
						vida = vida + 5
						escreva("Você cura 5 de vida, sua vida agora é: ", vida)
						u.aguarde(1000)
						limpa()
					pare

					caso 3:
						stamina = 0
						escreva("Você se prepara para o que está por vir...")
						u.aguarde(1000)
						defesa = defesa * 3
					pare

					caso 4:
						se(magiaLouvaDeus == verdadeiro){
							se(magia == verdadeiro){
								stamina++
								magia = falso
								escreva("Você obtem um turno extra por causa da magia")
								u.aguarde(2000)
							}senao{
								escreva("Vocẽ não tem magia o suficiente")
								u.aguarde(2000)
							}
						}senao{
							escreva("Essa ação não existe")
							u.aguarde(2000)
						}
					pare
	
					caso contrario:
						escreva("Essa ação não existe")
						u.aguarde(2000)
					pare
					
				}
			}
			limpa()
			stamina = forca / 5
			magia = verdadeiro
			
			se(tontura == verdadeiro){
				stamina = stamina / 2
			}
			
			escreva("Seu turno acabou.")
			u.aguarde(2000)
			limpa()
		se(vidaBES > 0){
			enquanto(staminaBES > 0){
				acaoBES = u.sorteia(1, 3)

				escolha(acaoBES){
					caso 1:
					staminaBES--
					ataqueBES = danoBES * u.sorteia(1, 5)
					vida = vida - ataqueBES
					escreva("O Besouro joga seu machado pesado em cima da Lagartixa, tira ", ataqueBES, " de vida")
					u.aguarde(2000)
					limpa()
					pare

					caso 2:
					tontura = verdadeiro
					staminaBES--
					ataqueBES = danoBES * u.sorteia(1, 5)
					vida = vida - ataqueBES
					escreva("O Besouro pula para cima e senta no chão causando um enorme terromoto no lugar, tira ", ataqueBES, " de vida e você está tonto")
					u.aguarde(2000)
					limpa()
					pare

					caso 3:
					staminaBES = 0
					escreva("O Besouro só fica parado...")
					u.aguarde(2000)
					limpa()
					pare
				}
			}

					escreva("É seu turno novamente.")
					u.aguarde(2000)
					limpa()
					
				
			}senao{
				se(vida < 0){
					escreva("Você morreu...")
					pare
				}senao{
					escreva("Predador abatido")
					u.aguarde(2000)
					limpa()
					u.aguarde(1000)
				}
			}
		}
	//s.interromper_som(musica)
	} // fim lutaBesouro()

	funcao lutaBorboleta(){

			logico tontura = falso
			inteiro veneno = 0
			inteiro vidaBorboleta = 100
			real danoBorboleta = 1.5
			inteiro staminaBorboleta = 3
			inteiro acaoBorboleta = 1
			inteiro ataqueBorboleta = 1
			inteiro magiaBorboleta = 1
			inteiro soninho = 1
		
			//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Hornet.mp3")
			//s.reproduzir_som(musica, verdadeiro)
			
			enquanto(vida > 0 e vidaBorboleta > 0){
			
				staminaBorboleta = 2
				magiaBorboleta = 1
				
				enquanto(stamina > 0){
					defesa = defesa / 3
					se(tontura == verdadeiro){
						escreva("Você está tonto.")
						stamina = stamina / 2
					}
					
					escreva("A lagartixa se encontra com a borboleta, a Deusa da caixa d'agua\n")
					escreva("1.atacar\n")
					escreva("2.beber frasco de água\n")
					escreva("3.defender(acaba turno)\n")
					escreva("\nVida:", vida)
					escreva("\nVida da Borboleta:", vidaBorboleta)
					escreva("\nFrascos de água:", agua)
					escreva("\nStamina:", stamina)
					escreva("\n\nQual sua ação?:")
					leia(acao)
					limpa()
	
					escolha(acao){
						caso 1:
							stamina--
							ataque = u.sorteia(1, 10) * dano
							vidaBorboleta = vidaBorboleta - ataque / soninho
							escreva("Você ataca a Borboleta com sua cauda, dando ", ataque / soninho, " de dano")
							u.aguarde(1000)
							limpa()
						pare
	
						caso 2:
							stamina--
							vida = vida + 5
							escreva("Você cura 5 de vida, sua vida agora é: ", vida)
							u.aguarde(1000)
							limpa()
						pare
	
						caso 3:
							stamina = 0
							escreva("Você se prepara para o que está por vir...")
							u.aguarde(1000)
							defesa = defesa * 3
						pare

						caso 4:
							se(magiaLouvaDeus == verdadeiro){
								se(magia == verdadeiro){
									stamina++
									magia = falso
									escreva("Você obtem um turno extra por causa da magia")
									u.aguarde(2000)
								}senao{
									escreva("Vocẽ não tem magia o suficiente")
									u.aguarde(2000)
								}
							}senao{
								escreva("Essa ação não existe")
								u.aguarde(2000)
							}
						pare

						caso contrario:
							escreva("Essa ação não existe")
							u.aguarde(2000)
						pare
						
					}
				}
				limpa()
				stamina = forca / 5
				magia = verdadeiro
				
				escreva("Seu turno acabou.")
				u.aguarde(2000)
				limpa()
			se(vidaBorboleta > 0){
				enquanto(staminaBorboleta > 0){
					acaoBorboleta = u.sorteia(1, 2)
	
					escolha(acaoBorboleta){
						caso 1:
						staminaBorboleta = staminaBorboleta - 2
						ataqueBorboleta = danoBorboleta * u.sorteia(1, 5)
						vida = vida - ataqueBorboleta
						escreva("A Borboleta joga uma rajada de vento com suas asas em você, tira ", ataqueBorboleta, " de vida\n")
						u.aguarde(2000)
						limpa()
						pare
	
						caso 2:
						stamina--
						se(magiaBorboleta > 1){
							escreva("A Borboleta joga um pózinho que te deixa com soninho, seus ataques estão piores.")
							soninho = 2
							magiaBorboleta--
						}senao{
							escreva("A Borboleta tenta usar magia mas não tem mais mana")
						}
						pare
					}
				}
	
						escreva("É seu turno novamente.")
						u.aguarde(2000)
						limpa()
						
					
				}senao{
					se(vida < 0){
						escreva("Você morreu...")
						u.aguarde(1000000000)
						pare
					}senao{
						escreva("Predador Abatido")
						u.aguarde(3000)
					}
				}
			}
		//s.interromper_som(musica)
		} // fim lutaBorboleta()
	
	funcao cidade(){

      		
			//musica = s.carregar_som("/home/lab/Lagartoxa_Tropical_2/Tema_Majula.mp3")
			//s.reproduzir_som(musica, verdadeiro)
		
      		escreva("Você está na cidade, aonde você vai?\n1. Esgoto Profano\n2. Pântano\n3. Loja da barata\n4. Estádio do Maracanã\n")

      		leia(acao)
      		limpa()

      			escolha(acao){
      				caso 1:
      					se(alma_rato == falso){
      					limpa()
      					escreva("Você abre a tampa no esgoto e cai ao lado de um rio de lixo humano, o lugar é escuro, mas dá para ver o que tem na frente.\n1.continuar\n0.voltar\n")
      					leia(acao)
      					u.aguarde(1000)
      					limpa()
      					escolha(acao){
      					caso 1:
      						se(barata_morta == falso){
      						escreva("Há uma pequena ratoeira ao lado, você vê por dentro e há uma barata sendo atacada por um Louva Deus.\n1.Ajudar\n0.Não fazer nada\n")
      						leia(acao)
      						u.aguarde(1000)
      						limpa()
      						escolha(acao){
      							caso 1:
      							escreva("Vocẽ entra na ratoeira e o Louva Deus olha lentamente para você")
      							pontinhos()
      							u.aguarde(3000)
      							limpa()
      							lutaLouvaDeus()

      							escreva("A barata tenta se levantar do chão, metade de seu rosto aparenta ter sido devorado pelo Louva-Deus.\n")
      							u.aguarde(5000)
      							escreva("Você oferece um frasco de aguá para ela? \n1.Sim \n2.Não\n")
      							leia(acao)
      							limpa()

      							escolha(acao){
      								caso 1:
      									escreva("A barata pega o frasco de você, ainda em pânico seu braço treme, um pouco de água respinga mas ela consegue beber.\n")
      									u.aguarde(7000)
      									limpa()
      									escreva("Após ela beber seu rosto começa a voltar ao normal, todos os seus ferimentos estão curados\n")
      									u.aguarde(5000)
      									limpa()
      									escreva("Barata - Uau! Você luta bem. Eu teria morrido se não fosse você, obrigado\n")
      									u.aguarde(5000)
      									limpa()
      									escreva("Lagartixa T. - Não há de que")
      									pontinhos()
      									u.aguarde(4000)
      									limpa()
      									escreva("Largatixa T. - Espera, você é a baratinha?\n")
      									u.aguarde(4000)
      									limpa()
      									escreva("Barata - Você!!! A lagartixa que visitou minha loja uma vez! Eu lembro de você.\n")
      									u.aguarde(5000)
      									limpa()
      									escreva("Lagatixa T. - Era você mesmo que eu estava procurando! Vamos para a minha casa, precisamos cuidar de seus ferimentos!\n")
      									u.aguarde(5000)
      									limpa()
      									escreva("Barata - Capaz! Vamos para a minha casa, eu tenho um kit de 'ultimos socorros' rs")
      									u.aguarde(5000)
      									limpa()
      									escreva("*Elas vão até a casa da Baratinha*")
      									u.aguarde(6000)
      									limpa()
      									escreva("Lagartixa T. - Ué, essa não é sua loja?")
      									u.aguarde(5000)
      									limpa()
      									escreva("Barata - Bom, era. Mas aquele maldito boato")
      									pontinhos()
      									limpa()
      									escreva("Barata - Cada vez mais, fiquei sem clientela. Você foi uma das últimas compradoras.")
      									u.aguarde(5000)
      									limpa()
      									escreva("Lagartixa T. - Aliás, sobre essa compra. Era isso que eu queria conversar com você.\nEsse colar me ajudou muito! Ele é mágico!\n")
      									u.aguarde(5000)
      									limpa()
      									escreva("Barata - Mágico?!?! Como assim? Eu o achei na beira da estrada, enquanto passava pela ponte Niterói!\n")
      									u.aguarde(5000)
      									escreva("Barata - Foi justamente por esse colar que a maldita da Borboleta me difamou!\nQuando eu estava pretes a sair com o colar, ela entrou no meu caminho e exigiu-o de volta.")
      									u.aguarde(6000)
      									limpa()
      									escreva("Lagartixa T. - Mas, o que ela tanto queria com o colar? O que ela é?")
      									u.aguarde(5000)
      									limpa()
      									escreva("Barata - Dizem que ela é uma das maiores manipuladoras dessas bandas! Não se deve confiar, nem mexer com ela.\nAprendi isso da pior forma")
      									pontinhos()
      									u.aguarde(7000)
      									limpa()
      									escreva("Barata - Exclusive, lembra desse lançe das caixas dágua? Ela comentou nesse mesmo dia, de uma tal de caixa primordial")
      									pontinhos()
      									u.aguarde(6000)
      									limpa()
      									escreva("Lagartixa T. -")
      									pontinhos()
      									u.aguarde(6000)
      									limpa()
      									escreva("Lagartixa T. - Hm, um tempo atrás algumas crianças vieram com esse mesmo papo pra cima de mim.\n")
      									u.aguarde(6000)
      									limpa()
      									escreva("Lagartixa T. - Se esse assunto te interessar também, nós podemos ir juntas perguntar a esse grupo, Lagartixas Radicais o nome.\n")
      									u.aguarde(6000)
      									escreva("Barata - Eu aceito. Mas antes, me ajude a derrotar um inimigo antigo")
      									pontinhos()
      									escreva("O Rato do Esgoto.")
      									u.aguarde(5000)
      									limpa()
      									escreva("Você deseja ajudar a Barata?\n1-Sim\n0-Não\n")
      									leia(acao)
      									
      									escolha(acao){
      										caso 1:
      											limpa()
      											quest_barata = verdadeiro
      											escreva("Lagartixa T. - Claro!, vamos agora!")
      											u.aguarde(4000)
      											escreva("\nBarata - Beleza!")
      											u.aguarde(4000)
      											limpa()
      											
      											escreva("Na sua frente há uma ratoeira com uma parede de névoa, gostaria de atravessar?\n1-Adentrar a névoa\n0-Voltar\n")
      											leia(acao)
      											u.aguarde(1000)
      											limpa()
      											escolha(acao){
      											caso 1:
													lutaRato()
      											pare
      											
      											caso 0:
      												cidade()
      											pare
      												
      											}
      										pare
      											
      										caso 0:
      											quest_barata = falso
      											u.aguarde(3000)
      											escreva("Lagartixa T. - Quem você pensa que é? Eu salvo sua vida e ainda pede mais. Óbvio que não.")
      											u.aguarde(5000)
      											limpa()
      											
      										pare
      									}
      							
      									pare
      									
      									caso 2:
      										encarnacao_do_caos = verdadeiro

      										g.iniciar_modo_grafico(verdadeiro)
      										g.definir_dimensoes_janela(1200, 800)
      										para(inteiro i = 0; i < 3000; i++){
      											//eu não sei o que caralhos eu fiz mas deu bom e eu gostei
      										
												g.definir_cor(g.COR_VERMELHO)
												g.desenhar_elipse(200 * 2, 150 * 2, 15 * 2, 15 * 2, verdadeiro)
												g.desenhar_elipse(300 * 2, 175 * 2, 15 * 2, 15 * 2, verdadeiro)												
												g.desenhar_texto(200 * 2, 300 * 2, "Lembre-se do meu nome, eu sou o inseto assassino,")
												g.desenhar_texto(200 * 2, 325 * 2, "vou garantir que seu destino acabe num futuro")
												g.desenhar_texto(200 * 2, 350 * 2, "não tão distante")
									
												g.renderizar()
										
													
												
													
												g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
												g.desenhar_elipse(300, 175, 15, 15, verdadeiro)
												g.desenhar_texto(400, 300, "Ela estava tentando te ajudar, seu verme.")											
													
												g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
												g.desenhar_elipse(300, 175, 15, 15, verdadeiro)
												g.desenhar_texto(400, 300, "Lembre-se do meu nome, eu sou o inseto assassino,\n vou garantir que seu destino acabe num futuro\n não tão distante")
												g.renderizar()
											}
											g.encerrar_modo_grafico()
      									pare
      							}
      							pare

      							caso 0:
      								barata_morta = verdadeiro
      								escreva("Essa ação terá consequências...")
      								u.aguarde(3000)
      								limpa()
      								pare
      						}
      						}//fim se(barata_morta == falso)
      						}
      						
      							
      							
      							
      						
      						limpa()
      						escreva("Seguindo em frente você encontra um pneu com água parada, quer descansar?\n1.Sim\n0.Não\n")
      						leia(acao)
      						u.aguarde(1000)
      						limpa()
      						escolha(acao){
      							caso 1:
      								inteiro vida = forca + int / 2
									inteiro agua = 5

									escreva("Você se sente revigorado, sua vida fica no máximo e seus frascos de caixa d'agua se enchem\n")
									u.aguarde(5000)
									limpa()
								pare
      						}
      						escreva("Na sua frente há uma ratoeira com uma parede de névoa, gostaria de atravessar?\n1-Adentrar a névoa\n0-Voltar\n")
							leia(acao)
							u.aguarde(1000)
							limpa()
							escolha(acao){
								caso 1:
									lutaRato()
								pare
								
								caso 0:
									cidade()
								pare
							}				
      						
      						

      					pare
      					}senao{
      						escreva("Você já fez o que deveria ser feito aqui.")
      						u.aguarde(3000)
      						cidade()
      						
      					}
      				pare


      				caso 2:
      					se(canalizador == falso)
      					{
      						escreva("*Você entra no pantano*")
      						u.aguarde(3000)
      						limpa()
      						escreva("*Há dois lugares*")
      						u.aguarde(3000)
      						limpa()
      						escreva("Onde você vai?\n1.Uma aura magica que te faz sentir meio hipinotizado\n2.Um cénario que parece ser de uma guerra que ocorreu há muito tempo\n")
      						leia(acao)
      						
      						escolha(acao)
      						{
      									caso 1:
      											limpa()
      											escreva("*Você vê uma lojinha muito aconchegante, nela há uma senhorinha de aproximadamente 80 anos*")
												u.aguarde(4000)
												limpa()
												escreva("*Você tenta entrar, mas ela aponta para uma plaquinha que tem os dizeres*\nNÃO ENTRE SEM ARTEFATOS")
												u.aguarde(4000)
												limpa()
												escreva("VOLTE OUTRA HORA")
												u.aguarde(4000)
												limpa()
												cidade()

										pare
												
      									caso 2:
      											limpa()
      											escreva("*Você vê uma lojinha nada aconchegante, um homem barbudo olha para você*")
												u.aguarde(4000)
												limpa()
												escreva("*Você tenta entrar, mas ele aponta para uma plaquinha que tem os dizeres*\nNÃO ENTRE SEM ARTEFATOS")
												u.aguarde(4000)
												limpa()
												escreva("VOLTE OUTRA HORA")
												u.aguarde(4000)
												limpa()
												cidade()
										pare
      						}
      					}
      					senao{
      						escreva("*Você entra no pantano*")
      						u.aguarde(3000)
      						limpa()
      						escreva("*Há dois lugares*")
      						u.aguarde(3000)
      						limpa()
      						escreva("Onde você vai?\n1.Uma aura magica que te faz sentir meio hipinotizado\n2.Um cénario que parece ser de uma guerra que ocorreu há muito tempo\n")
      						leia(acao)
      						
      						escolha(acao)
      						{
      									caso 1:
      											limpa()
      											escreva("*Você entra em uma lojinha*")
												u.aguarde(4000)
												limpa()
												escreva("*Uma senhora muito simpática lhe atende*")
												u.aguarde(4000)
												limpa()
												escreva("Senhorinha - Bom dia, senhora lagartixa! O que você deseja?")
												u.aguarde(4000)
												limpa()
												escreva("Lagartixa T. - E-Eu, tenho um artefato! ")
												u.aguarde(4000)
												limpa()
												escreva("*Você tira o artefato do bolso e ela te interrompe*")
												u.aguarde(4000)
												limpa()
												escreva("Senhorinha - ESSE ARTEFATO! ONDE..?")
												u.aguarde(4000)
												limpa()
												escreva("Senhorinha - hum....")
												u.aguarde(4000)
												limpa()
												escreva("Senhorinha - Eu posso te ajudar!")
												u.aguarde(4000)
												limpa()
												escreva("Senhorinha - O artefato que você possui, pode lhe dar um grande poder. O poder da velocidade do Louva-Deus")
												u.aguarde(4000)
												limpa()
												escreva("*Ela se vira, e alguns instantes depois, te entrega uma bola de energia*")
												u.aguarde(4000)
												limpa()
												escreva("MAGIA OBTIDA: Velocidade do Louva-Deus")
												u.aguarde(4000)
												limpa()
												magiaLouvaDeus = verdadeiro
												canalizador = falso
												u.aguarde(1000)
												cidade()
												

										pare
												
												
      									caso 2:
      											limpa()
      											escreva("*Você entra na loja*")
												u.aguarde(4000)
												limpa()
												escreva("*Um homem barbudo forte lhe atende*")
												u.aguarde(4000)
												limpa()
												escreva("Homem - Olá, meu jovem! O que você deseja?")
												u.aguarde(4000)
												limpa()
												escreva("Lagartixa T. - E-Eu, tenho um artefato! ")
												u.aguarde(4000)
												limpa()
												escreva("*Você tira o artefato do bolso e ele te interrompe*")
												u.aguarde(4000)
												limpa()
												escreva("Homem - ESSE ARTEFATO! ONDE..?")
												u.aguarde(4000)
												limpa()
												escreva("Homem - hum....")
												u.aguarde(4000)
												limpa()
												escreva("Homem - Eu posso te ajudar!")
												u.aguarde(4000)
												limpa()
												escreva("Homem - O artefato que você possui, pode lhe dar um grande poder. Ele pode usar o poder da alma de alguém, posso coloca-lo em uma espada para você!")
												u.aguarde(6000)
												limpa()
												escreva("*Ele se vira, e alguns instantes depois, te entrega a espada*")
												u.aguarde(4000)
												limpa()
												escreva("Homem - A espada fica de presemte para você.")
												u.aguarde(4000)
												limpa()
												escreva("ARMA OBTIDA: Espada do Louva-Deus")
												u.aguarde(4000)
												limpa()
												armaLouvaDeus = verdadeiro
												forca = forca + 10
												canalizador = falso
												u.aguarde(1000)
												cidade()

										pare
      						
      						}
      					
      					
      					}
      					 
      				pare
      				
      				caso 3:
      					se(quest_barata == verdadeiro){
      						escreva("Lagartixa T. - É realmente mais aconchegante no lado de dentro.")
      						u.aguarde(3000)
      						limpa()
      						escreva("*Você se move até uma prateleira com um artefato brilhante*")
      						u.aguarde(5000)
      						limpa()
      						escreva("Lagartixa T. - O que é isto?")
      						u.aguarde(3000)
      						limpa()
      						escreva("*Você sente uma magia inexplicavel, parecida com a que você obteu do colar*")
      						u.aguarde(5000)
      						limpa()
      						escreva("*Artefato 'CANALIZADOR' obtido +1*")
      						canalizador = verdadeiro
      						u.aguarde(5000)
      						limpa()
      						cidade()
      							
      					}senao{
      						escreva("Você chega na loja e todas as luzes estão apagadas e a porta trancada com uma placa escrita: \n|fechado|")
      						u.aguarde(3000)
      						limpa()
      						cidade()
      					}
      				pare

      				caso 4:
      					se(alma_rato == verdadeiro){
	      					escreva("Lagartixa T. - Finalmente, chegamos. Todos vocês tem as suas almas de Lorde?\n")
	      					u.aguarde(5000)
	      					escreva("Lagartixas R. - Sim!")
	      					u.aguarde(1000)
	      					limpa()
	      					
	      					se(encarnacao_do_caos == verdadeiro){
	      						escreva("Você anda para frente com confiança para frente.\n")
	      						pontinhos()
	      						escreva("Até que um inseto assassino cai na sua frente o parando, ele se lança para te atacar mas você desvia.\n")
	      						u.aguarde(4000)
	      						escreva("??? - Se lembra de mim, Lagartixa?\n")
	      						u.aguarde(3000)
	      						escreva("Lagartixa T. - Quem é você?\n")
	      						u.aguarde(3000)

								g.iniciar_modo_grafico(verdadeiro)
	      						para(inteiro i = 0; i < 2000; i++){
									g.definir_cor(g.COR_VERMELHO)
									g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
									g.desenhar_elipse(300, 175, 15, 15, verdadeiro)												
									g.desenhar_texto(400, 300, "Você matou minha irmã.")
						
									g.renderizar()																	
								}
								g.encerrar_modo_grafico()

								g.iniciar_modo_grafico(verdadeiro)
								para(inteiro i = 0; i < 3000; i++){
									g.definir_cor(g.COR_VERMELHO)
									g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
									g.desenhar_elipse(300, 175, 15, 15, verdadeiro)												
									g.desenhar_texto(400, 300, "")
						
									g.renderizar()																	
								}
								g.encerrar_modo_grafico()

								g.iniciar_modo_grafico(verdadeiro)
								para(inteiro i = 0; i < 3000; i++){
									g.definir_cor(g.COR_VERMELHO)
									g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
									g.desenhar_elipse(300, 175, 15, 15, verdadeiro)												
									g.desenhar_texto(400, 300, "Vocẽ se lembra desse momento, não?")
						
									g.renderizar()																	
								}
								g.encerrar_modo_grafico()

								g.iniciar_modo_grafico(verdadeiro)
								para(inteiro i = 0; i < 3000; i++){
									g.definir_cor(g.COR_VERMELHO)
									g.desenhar_elipse(200, 150, 15, 15, verdadeiro)
									g.desenhar_elipse(300, 175, 15, 15, verdadeiro)												
									g.desenhar_texto(400, 300, "Agora é hora de você morrer.")
						
									g.renderizar()																	
								}
								g.encerrar_modo_grafico()
								lutaReduvidae()
	      					}senao se(quest_barata == verdadeiro){
	      						escreva("Você segue em frente e encontra uma parede de névoa, gostaria de atravessar?\n1.Sim\n2.Não\n")
	      						leia(acao)
	      						escolha(acao){
	      							caso 1:
	      								limpa()
	      								escreva("Ao atravessar a névoa você se encontra com o besouro protetor da caixa d'agua\n")
	      								pontinhos()
	      								escreva("Ele vira seu corpo pesado para você e bate seu machado no chão\n")
	      								u.aguarde(3000)
	      								lutaBesouro()

	      								se(quest_barata == verdadeiro){
	      									limpa()
	      									escreva("Com o besouro derrotado, você se vê na frente da caixa d'agua")
	      									pontinhos()
	      									u.aguarde(3000)
	      									limpa()
	      									escreva("Mas há algo a mais na sala...")
	      									u.aguarde(3000)
	      									limpa()
	      									escreva("Você olha em volta e percebe a borboleta gigante ao lado da caixa d'agua.")
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Borboletinha - Parece que finalmente nos encontramos")
	      									pontinhos()
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Borboletinha - A famosa Lagartixa Tropical!")
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Lagartixa T. - Eu sabia... Você sempre esteve por trás de tudo")
	      									pontinhos()
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Lagartixa T. - Eu preciso tomar uma decisão definitiva!\n")
	      									u.aguarde(5000)
	      									
	      									
	      									escreva("1. Destruir a caixa d'agua\n2. Lutar pelo descanso\n")
	      									leia(acao)
	      									escolha(acao){
	      										caso 1:
	      											limpa()
	      											lutaLagartixas()
	      											limpa()
	      											escreva("Lagartixa T. - Eu não queria ter feito isso...")
	      											u.aguarde(3000)
	      											limpa()
	      											escreva("Lagartixa T. - Mas sou eu que precisa impedir que as caixas d'agua continuem fazendo das lagartixas, escravas")
	      											u.aguarde(5000)
	      											limpa()
	      											escreva("Final 3/4\n\"O FIM DE TUDO?\"\nMuito obrigado por jogar nosso jogo.\nProgramação de bosses:Vinícius Brevesteky Teixeira\nProgramação de áreas:Sarah Elizabete\nRoteiro:Rebeca Schmidt\nProfessor:Jefferson Chaves.")
	      											u.aguarde(100000)
	      											
	      									pare

	      									caso 2:
	      											limpa()
	      											lutaBorboleta()
	      											limpa()
	      											escreva("Após muito esforço, finalmente as lagartixas se encontram com a caixa d'agua, elas descansam em paz. Finalmente")
	      											pontinhos()
	      											u.aguarde(6000)
	      											limpa()
	      											escreva("Mas num fatídico dia... um enxame de mosquitos entra e taca uma pedra na caixa d'agua. A lagartixa nunca fica em paz mesmo")
	      											pontinhos()
	      											u.aguarde(7000)
	      											limpa()
	      											escreva("Final 1/4\n\"Tá de brincadeira, né?\"\nMuito obrigado por jogar nosso jogo.\nProgramação de bosses:Vinícius Brevesteky Teixeira\nProgramação de áreas:Sarah Elizabete\nRoteiro:Rebeca Schmidt\nProfessor:Jefferson Chaves.")
	      											u.aguarde(100000)
	      										pare
	      									
	      									}
	      								
	      								}senao{
	      									limpa()
	      									lutaBorboleta()
	      									limpa()
	      									escreva("Após muito esforço, finalmente as lagartixas se encontram com a caixa d'agua, elas descansam em paz. Finalmente")
	      									pontinhos()
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Mas num fatídico dia... um enxame de mosquitos entra e taca uma pedra na caixa d'agua. A lagartixa nunca fica em paz mesmo")
	      									pontinhos()
	      									u.aguarde(4000)
	      									limpa()
	      									escreva("Final 1/4\n\"Tá de brincadeira, né?\"\nMuito obrigado por jogar nosso jogo.\nProgramação de bosses:Vinícius Brevesteky Teixeira\nProgramação de áreas:Sarah Elizabete\nRoteiro:Rebeca Schmidt\nProfessor:Jefferson Chaves.")
	      									u.aguarde(100000)
	      									pare
	      								}

	      								
	      						}
	      						
	      					}
      					}senao{
      						escreva("Lagartixa T. - Finalmente, chegamos. Todos vocês tem as suas almas de Lorde?")
	      					u.aguarde(5000)
	      					limpa()
	      					escreva("Lagartixas R. - Sim!")
	      					u.aguarde(6000)
	      					limpa()
	      					escreva("Você anda pra frente com confiança, mas bate de cara numa parede invisível, você nao tem uma alma de lorde.")
	      					u.aguarde(7000)
	      					limpa()
	      					cidade()
      					}
      				pare

      				caso contrario:
      					escreva("Esse lugar não existe")
      					u.aguarde(1000)
      					limpa()
      				pare
      			}

      		
      	}
	
	funcao inicio()
	{

		escreva("Bem-vindo(a) caro(a) jogador(a)")
		pontinhos()
		u.aguarde(3000)
		limpa()
		escreva("Se você está aqui, significa que é alguem de cultura!")
		u.aguarde(4000)
		limpa()
		escreva("Aproveite a experiência, o jogo tem 4 finais possíveis.")
		u.aguarde(4000)
		limpa()
		escreva("Esperamos que goste")
		pontinhos()
		u.aguarde(1000)
		limpa()
		escreva("Bom Jogo!")
		u.aguarde(2000)
		limpa()

		enquanto(acao != 1)
		{
		
			escreva("ESCOLHA A PROFISSÃO DA SUA LAGARTIXA\n(Cuidado, isso define seu futuro!)\n1- Artista Freelancer\n2- Programadora\n3- Detetive\n4- Desesempregada\n")
			leia(classe)
			u.aguarde(1500)
			limpa()
			
			escolha(classe)
			{
			caso 1: 
			res_problemas = 10
			forca = 5
			carisma = 20
			int = 15
			persuasao = 10

			escreva("Você selecionou Artista Freelancer!\nSeus atributos são:\nResolução de Problemas: 10\nForça: 5\nCarisma: 20\nInteligência: 15\nPersuasão: 10")
			escreva("\nDeseja continuar com essa classe? (1-sim 0-não)\n")
			leia(acao)
			u.aguarde(1500)
			limpa()
			
			pare
			
			caso 2: 
			res_problemas = 20
			forca = 5
			carisma = 10
			int = 15
			persuasao = 10

			escreva("Você selecionou Programadora!\nSeus atributos são:\nResolução de Problemas: 20\nForça: 5\nCarisma: 10\nInteligência: 15\nPersuasão: 10")
			escreva("\nDeseja continuar com essa classe? (1-sim 0-não)\n")
			leia(acao)
			u.aguarde(1500)
			limpa()
			
			pare
			
			caso 3: 
			res_problemas = 15
			forca = 10
			carisma = 5
			int = 10
			persuasao = 20

			escreva("Você selecionou Detetive!\nSeus atributos são:\nResolução de Problemas: 15\nForça: 10\nCarisma: 5\nInteligência: 10\nPersuasão: 20")
			escreva("\nDeseja continuar com essa classe? (1-sim 0-não)\n")
			leia(acao)
			u.aguarde(1500)
			limpa()
			
			pare
			
			caso 4: 
			res_problemas = 5
			forca = 5
			carisma = 5
			int = 5
			persuasao = 5

			escreva("Você selecionou Desempregada!\nSeus atributos são:\nResolução de Problemas: 5\nForça: 5\nCarisma: 5\nInteligência: 5\nPersuasão: 5")
			escreva("\nDeseja continuar com essa classe? (1-sim 0-não)\n")
			leia(acao)
			u.aguarde(1500)
			limpa()
			
			pare
			
			caso 5: 
			res_problemas = 20
			forca = 20
			carisma = 20
			int = 20
			persuasao = 20

			escreva("Você selecionou  - [̲̅J̲̅є̲̅f̲̅f̲̅i̲̅и̲̅н̲̅σ̲̅] \nSeus atributos são:\nResolução de Problemas: 20\nForça: 20\nCarisma: 20\nInteligência: 20\nPersuasão: 20")
			escreva("\nDeseja continuar com essa classe? (1-sim 0-não)\n")
			leia(acao)
			u.aguarde(1500)
			limpa()
			
			pare
			
			}//fim escolha
		
		}//fim enquanto
		
		escreva("Você quer ver a intro? (1-sim 0-não)\n")
		leia(acao)
		se(acao == 1){
			limpa()
			escreva("Muito tempo se passou desde sua última aventura")
			pontinhos()
			limpa()
			escreva("Fadigada e decepcionada, cheirando a marlboro")
			pontinhos()
			u.aguarde(2500)
			limpa()
			escreva("Você se vê no buteco do seu zé, afogando suas mágoas com um whisky barato")
			pontinhos()
			u.aguarde(500)
			escreva("\nQuando, num quebrar de silêncio")
			pontinhos()
			u.aguarde(2000)
			limpa()
			escreva("??? - Nós finalmente te achamos! A lendária Lagartixa Tropical, que desbravou o mundo das caixas d'agua!\n")
			u.aguarde(4000)
			escreva("Lagartixa T. - Quem são vocês? E como ousam mencionar meu nome com tal intimidade?\n")
			u.aguarde(5000)
			escreva("Lagartixas R. - Nós somos as lagartixas radicais! Fomos inspirados pela sua história de vida,\nqueremos dar continuidade ao seu sonho, ajudando mais lagartixas a experimentarem a felicidade\nque só as caixas d'agua prop-\n")
			u.aguarde(10000)
			limpa()
			escreva("Lagartixa T. - CALEM A BOCA!!!")
			u.aguarde(2000)
			limpa()
			pontinhos()
			u.aguarde(1000)
			limpa()
			escreva("Lagartixa T. - VOCÊS NÃO SABEM DE NADA! Suas crianças tolas!")
			u.aguarde(2000)
			escreva("\nNão sabem do sofrimento que uma caixa d'agua pode trazer, disfarçada de felicidade...")
			u.aguarde(9000)
			escreva("\nDesistam dessa besteira!")
			u.aguarde(3000)
			limpa()
			escreva("Lagartixas R. - Mas... Senhora lagartixa...\n")
			u.aguarde(3000)
			escreva("Confie em nós! Descobrimos uma coisa que lhe interessaria...\n")
			u.aguarde(5000)
			limpa()
			escreva("*A lagartixa deixa uma gorjeta de 5 reais na mesa, e sai com a gangue...*\n")
			u.aguarde(3000)
			limpa()
			u.aguarde(5000)
			escreva("Lagartixa T. - O que vocês descobriram?\n")
			u.aguarde(3000)
			limpa()
			u.aguarde(500)
			escreva("Lagartixas R. - A gente pode acessar a caixa d'agua primordial. Obtendo as almas dos quatro lordes da caixa d'agua: ")
			u.aguarde(7000)
			escreva("\nO Rato do Esgoto Profano, O Jacaré Gigante, Vespas Vigilantes e por fim")
			pontinhos()
			u.aguarde(3000)
			limpa()
			escreva("O guardião da caixa d'agua")
			pontinhos()
			u.aguarde(3000)
			limpa()
			escreva(" O Besouro.")
			u.aguarde(3000)
			limpa()
			u.aguarde(3000)
			escreva("Lagartixa tropical 2")
   	  		u.aguarde(1000)
    		  	limpa()
      		escreva("𝕃𝕒𝕘𝕒𝕣𝕥𝕚𝕩𝕒 𝕥𝕣𝕠𝕡𝕚𝕔𝕒𝕝 𝟚")
 	    		u.aguarde(100)
	      	limpa()
      		escreva("L̶a̶g̶a̶r̶t̶i̶x̶a̶ t̶r̶o̶p̶i̶c̶a̶l̶ 2̶")
      		u.aguarde(500)
      		limpa()
      		escreva("L̷a̷g̷a̷r̷t̷i̷x̷a̷ t̷r̷o̷p̷i̷c̷a̷l̷ 2̷")
      		u.aguarde(200)
      		limpa()
      		escreva("𝔏𝔞𝔤𝔞𝔯𝔱𝔦𝔵𝔞 𝔱𝔯𝔬𝔭𝔦𝔠𝔞𝔩 2")
      		u.aguarde(100)
      		limpa()
      		escreva("㇄闩Ꮆ闩尺七讠〤闩 セ尺ㄖ尸讠⼕闩㇄ 己")
      		u.aguarde(100)
      		limpa()
			u.aguarde(1000)
      		escreva("A ultima caixa d'agua")
      		u.aguarde(1000)
      		limpa()
      		escreva("𝔸 𝕦𝕝𝕥𝕚𝕞𝕒 𝕔𝕒𝕚𝕩𝕒 𝕕❜𝕒𝕘𝕦𝕒")
      		u.aguarde(100)
      		limpa()
      		escreva("A̶ u̶l̶t̶i̶m̶a̶ c̶a̶i̶x̶a̶ d̶'̶a̶g̶u̶a̶")
      		u.aguarde(500)
      		limpa()
      		escreva("A̷ u̷l̷t̷i̷m̷a̷ c̷a̷i̷x̷a̷ d̷'̷a̷g̷u̷a̷")
      		u.aguarde(200)
      		limpa()
      		escreva("𝔄 𝔲𝔩𝔱𝔦𝔪𝔞 𝔠𝔞𝔦𝔵𝔞 𝔡'𝔞𝔤𝔲𝔞")
      		u.aguarde(100)
      		limpa()
      		escreva("闩 ㄩ㇄〸讠爪闩 ⼕闩讠〤闩 ᗪ丶闩Ꮆㄩ闩")
      		u.aguarde(100)
      		limpa()
      		u.aguarde(4000)
      		
		}senao{
			limpa()
			}
		
		logico ultimo_boss_morto = falso

		escreva("*A lagartixa vai para casa*")
		u.aguarde(3000)
		limpa()
		escreva("*Ela entra em seu quarto*")
		u.aguarde(3000)
		limpa()
		escreva("*Pensativa sobre a vida, ela resolve vasculhar seus antigos amigos de aventura*")
		u.aguarde(4000)
		limpa()
		escreva("*Então ela encontra seu melhor amigo...*")
		u.aguarde(4000)
		limpa()
		escreva("*O óculos*")
		u.aguarde(3000)
		limpa()
		escreva("*Todo sujo de poeira, com uma das lentes riscadas*")
		u.aguarde(4000)
		limpa()
		escreva("*Ela se emociona, e coloca novamente seus óculos*")
		u.aguarde(4000)
		limpa()
		escreva("Deseja continuar vasculhando a caixa?\n0-Sim\n1-Não\n")
		leia(acao)
			escolha(acao){

			caso 0: 
				limpa()	
				escreva("*Ela continua procurando em seu baú velho*")
				u.aguarde(3000)
				limpa()
				escreva("*Ela encontra seu amigo mágico*")
				u.aguarde(4000)
				limpa()
				escreva("*O colar que ganhou da sua amiga Baratinha*")
				u.aguarde(4000)
				limpa()
				escreva("Lagartixa T. - Nossa! Que saudade dela, ela me falou que quando sentisse sua falta\nera para eu aparecer por lá, se não me engano, ela mora na cidade.")
				u.aguarde(5000)
				limpa()
				escreva("*Ela vai até a cidade*")
				u.aguarde(3000)
				limpa()
				cidade()
			pare
			caso 1:
				limpa() 
				escreva("*Ela guarda suas coisas*")
				u.aguarde(3000)
				limpa()
				escreva("*Ela vai até a cidade*")
				u.aguarde(4000)
				limpa()
				cidade()
			pare
			caso contrario: 
				enquanto(acao != 0 ou acao != 1)
				{
					escreva("Opção inválida")
					u.aguarde(2000)
					limpa()
					escreva("Insira novamente:\n")
					leia(acao)
				}
			pare
		}

		enquanto(vida > 0){
			cidade()
		}
	}
}
