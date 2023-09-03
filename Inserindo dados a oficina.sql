

							-- 	INSERINDO DADOS --
                                                                
                                                                
-- INSERINDO DADOS NA TABELA CLIENTE --


insert into Cliente values(1, 1, 'Venancio', 'Silva', 18273837483, 31989673452),
			  (2, 0, 'Ivanete', 'Silva', 18276537483, 31459673452),
                          (3, 1, 'Luiza', 'Silva', 62718293784, 21983728374),
                          (4, 1, 'Alfrida', 'Candida', 89281736749, 11928394637),
                          (5, 1, 'Sandra', 'Moraes', 73829382738, 41768003017),
                          (6, 1, 'Joao', 'Vasco', 71827381928, 56829381728),
                          (7, 0, 'Maristela', 'Fontes', 81728391273, 89283728398),
                          (8, 1, 'Rodriga', 'Silva', 61728293862, 31989673672),
                          (9, 1, 'Quanchi', 'Tova', 78273837483, 41989673452);
                          

-- INSERINDO VALORES A TABELA SERVICOS --

insert into Servicos values(1, 'Manutenção corretiva', 'Refazer o motor', 1273838), 
			   (2, 'Manutenção corretiva', 'Troca fárois dianteiros', 1273882), 
			   (3, 'Manutenção corretiva', 'Remoção e Inseerção de novo Para-Choque traseiro', 1273883), 
			   (4, 'Revisão periódica', 'Checagem de óleo', 0123763),
			   (5, 'Revisão periódica', 'Consumo de pastilhas de freio', 0123838),
			   (6, 'Manutenção corretiva', 'Troca jogo de Molas da suspensão', 1273884),
			   (7, 'Manutenção corretiva', 'Troca da Caixa de Câmbio', 1273385); 
                           
                           
-- INSERINDO VALORES A TABELA PECAS --

insert into Pecas values(1, 'Carroceria', 'Para-Choque traseiro'), 
			(2, 'Sistema de transmissão', 'Caixa de Câmbio'), 
                        (3, 'Sistema de Suspensão', 'Molas da suspensão'), 
                        (4, 'Sistema de Freio', 'Jogo de Discos'), 
                        (5, 'Componentes elétricos', 'Fárois dianteiros'),
                        (6, 'Motor', 'Óleo Petronos'),
                        (7, 'Sistema de Suspensão', 'Amortecedor'), 
                        (8, 'Sistema de Freio', 'Pastilhas de Aço'),
                        (9, 'Componentes elétricos', 'Faroletes'), 
                        (10, 'Componentes elétricos', 'Som Bass'); 
		

-- INSERINDO VALORES A TABELA EQUIPE --

insert into Equipe values(1, 'Carroceria e Componentes elétricos'),
			 (2, 'Motor e Sistema de transmissão'),
                         (3, 'Sistema de Suspensão e Sistema de Freio');
                         
-- INSERINDO VALORES A TABELA MECANICOS --

insert into Mecanicos values(1, 14982736748, 'Alfredo', 'Eisten', 'BeloHorizonte-Jardim\Rua Manguabeiras 43 - MG', 'Carroceria', 1),
			    (2, 28378192893, 'Alberto', 'Erigon', 'BeloJardim-Cascata\Rua fernao dias 98 - MG', 'Sistema de transmissão', 2),
                            (3, 12738392838, 'Pablo', 'Victor', 'Ibirito-Borda\Rua Jatola 43 - MG', 'Carroceria', 1),
                            (4, 14982776787, 'Rich', 'Vacuo', 'Jatoba-Guajura\Rua França 52 - MG', 'Componentes elétricos', 1),
                            (5, 14982736123, 'Socrates', 'Marx', 'QuintaFeira-Jurdua\Rua Caratinga 89 - MG', 'Sistema de Freio', 3),
                            (6, 14982736790, 'Cristian', 'Frido', 'BeloHorizonte-Jardim\Rua Sumalina 43 - MG', 'Carroceria', 1),
                            (7, 14982736767, 'Yagao', 'Eisten', 'BeloHorizonte-Jardim\Rua Manguabeiras 115 - MG', 'Motor', 2),
                            (8, 14982736782, 'Brenda', 'Venancio', 'BeloHorizonte-Jardim\Rua Portugal 12 - MG', 'Sistema de Freio', 3),
                            (9, 14982736715, 'Travis', 'Eisten', 'CostaMartinense-Juazeiro\Rua Baneiras 121 - MG', 'Sistema de Suspensão', 3),
                            (10, 14982273656, 'Scott', 'Eisten', 'UniaoJacinto-Damia\Rua Huraci - 43 - MG', 'Motor', 2);
                           
   
--  INSERINDO VALORES A TABELA OS(ORDEM DE SERVIÇO) --
																						
insert into OrdemServico values(1,1,1,00001, '2023-09-02', 'Orçamento Aprovado', '2023-09-10', 2551.39), 
			       (2,2,2,00002, '2023-09-02', 'Orçamento Reprovado', '2023-12-31', 15071.20), 
                               (3,3,3,00003, '2023-09-02', 'Orçamento Aprovado', '2023-09-02', 500.67), 
                               (4,2,4,00004, '2023-09-02', 'Orçamento Aprovado', '2023-09-10', 4050.70), 
                               (5,1,5,00005, '2023-09-11', 'Orçamento Aprovado', '2023-09-11', 25.90), 
                               (6,1,6,00006, '2023-09-12', 'Orçamento Aprovado', '2023-09-12', 50.50), 
                               (7,3,7,00007, '2023-09-02', 'Orçamento Reprovado', '2023-09-06', 1102.3), 
                               (8,3,8,00008, '2023-09-03', 'Orçamento Aprovado', '2023-09-04', 1901.6), 
                               (9,3,9,00009, '2023-09-04', 'Orçamento Aprovado', '2023-09-04', 1035.7); 


-- INSERINDO VALORES A TABELA DE RELACAO N PARA M ENTRE PECAS E OS --

insert into Relacao_Os_Pecas values(1,1,1,1,1550.50),
				   (2,2,6,1,70.70),
                                   (3,4,2,1,2550.70),
                                   (4,5,5,2,5.50),
                                   (5,7,3,4,150.45),
                                   (6,8,8,1, 400.50),
                                   (7,8,7,1, 1000.50),
                                   (8,8,4,1, 500.60),
                                   (9,9,9,4, 8.90),
                                   (10,9,10,1, 1000.10);
                                   
-- INSERINDO VALORES A TABELA DE RELACAO N PARA M ENTRE PECAS E OS --

insert into Relacao_Os_Servicos values(1,1,3, 1000.89),
				      (2,2,1, 15000.50),
                                      (3,3,5, 500.67),
                                      (4,4,7, 1500),
                                      (5,5,2, 5.50),
                                      (6,6,4, 50.50),
                                      (7,7,6, 500.50);
                           
