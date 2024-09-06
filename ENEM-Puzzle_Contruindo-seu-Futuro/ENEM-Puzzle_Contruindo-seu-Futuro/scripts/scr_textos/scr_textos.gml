// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
portugues=0
matematica=0
qumica=0
filosofia=0
sociologia=0
geografia=0
espanhol=0
edf=0
biologia=0
fisica=0
global.quest=0

function scr_textos(){
	switch npc_nome{
		case "nivel_1":
		ds_grid_add_text(" escolha qual materia quer começar a resolver ", spr_rosto_edi , 0, "Edi");
			add_op("ED Fisica", "n1 q1");
			add_op("Espanhol", "n2 q1");
		break;
		
		case "n1 q1":
			ds_grid_add_text("Em fila e em silencio"/*perguntas de ed fisica*/, spr_rosto_edi , 0, "Edi");
			ds_grid_add_text("Brincadeira, aqui vai as questões"/*perguntas de ed fisica*/, spr_rosto_edi , 0, "Edi");
			ds_grid_add_text("pergunta"/*perguntas de ed fisica*/, spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n1q1"/*trocar pra variar */);
			add_op("D) resposta D", "Resposta errada n1q1");
			add_op("C) resposta C", "Resposta certa n1q1");
			add_op("B) resposta B", "Resposta errada n1q1");
			add_op("A) resposta A", "Resposta errada n1q1");
		break;
		
		case "Resposta certa n1q1":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n1 q2");
			
		break;
			case "Resposta errada n1q1":
			ds_grid_add_text("ERROU A PRIMEIRA???",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n1 q2");
			add_op("tentar denovo", "n1 q1");
		break;
		
		
		case "n1 q2":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n1q2");
			add_op("D) resposta D", "Resposta errada n1q2");
			add_op("C) resposta C", "Resposta errada n1q2");
			add_op("B) resposta B", "Resposta errada n1q2");
			add_op("A) resposta A", "Resposta certa n1q2");
		break;
		
		case "Resposta certa n1q2":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n1 q3");
		break;
			case "Resposta errada n1q2":
			ds_grid_add_text("para bens",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n1 q3");
			add_op("tentar denovo", "n1 q2");
			break;
		
		case "n1 q3":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n1q3");
			add_op("D) resposta D", "Resposta errada n1q3");
			add_op("C) resposta C", "Resposta errada n1q3");
			add_op("B) resposta B", "Resposta errada n1q3");
			add_op("A) resposta A", "Resposta errada n1q3");
		break;
		
			case "Resposta certa n1q3":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n1 q4");
		break;
			case "Resposta errada n1q3":
			ds_grid_add_text("hmmmm",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n1 q4");
			add_op("tentar denovo", "n1 q3");
			break;
			
		case "n1 q4":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n1q4");
			add_op("D) resposta D", "Resposta certa n1q4");
			add_op("C) resposta C", "Resposta errada n1q4");
			add_op("B) resposta B", "Resposta errada n1q4");
			add_op("A) resposta A", "Resposta errada n1q4");
		break;
		
			case "Resposta certa n1q4":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n1 q5");
		break;
			case "Resposta errada n1q4":
			ds_grid_add_text("uau",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n1 q5");
			add_op("tentar denovo", "n1 q4");
		break;
			
		case "n1 q5":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n1q5");
			add_op("D) resposta D", "Resposta errada n1q5");
			add_op("C) resposta C", "Resposta errada n1q5");
			add_op("B) resposta B", "Resposta errada n1q5");
			add_op("A) resposta A", "Resposta certa n1q5");
		break;
		
			case "Resposta certa n1q5":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest+=1
			add_op("continuar","edi");
		break;
		
			case "Resposta errada n1q5":
			ds_grid_add_text("valeu",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("tentar denovo", "n1 q5");
			break;
			
			
			
		case "n2 q1":
		
			ds_grid_add_text(" insira a pergunta aqui "/*perguntas de espanhol*/, spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n2q1");
			add_op("D) resposta D", "Resposta certa n2q1");
			add_op("C) resposta C", "Resposta errada n2q1");
			add_op("B) resposta B", "Resposta errada n2q1");
			add_op("A) resposta A", "Resposta errada n2q1");
		break;
		
		case "Resposta certa n2q1":
			
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			add_op("Proxima questão", "n2 q2");
			global.quest++
			
		break;
			case "Resposta errada n2q1":
			ds_grid_add_text("errou, parabens",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n2 q2");
			add_op("tentar denovo", "n2 q1");
		break;
		
		
		case "n2 q2":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n2q2");
			add_op("D) resposta D", "Resposta errada n2q2");
			add_op("C) resposta C", "Resposta errada n2q2");
			add_op("B) resposta B", "Resposta errada n2q2");
			add_op("A) resposta A", "Resposta certa n2q2");
		break;
		
		case "Resposta certa n2q2":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n2 q3");
		break;
			case "Resposta errada n2q2":
			ds_grid_add_text("...",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n2 q3");
			add_op("tentar denovo", "n2 q2");
			break;
		
		case "n2 q3":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n2q3");
			add_op("D) resposta D", "Resposta errada n2q3");
			add_op("C) resposta C", "Resposta errada n2q3");
			add_op("B) resposta B", "Resposta errada n2q3");
			add_op("A) resposta A", "Resposta errada n2q3");
		break;
		
			case "Resposta certa n2q3":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n2 q4");
		break;
			case "Resposta errada n2q3":
			ds_grid_add_text("nam, uma facil dessas tu erra?",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n2 q4");
			add_op("tentar denovo", "n2 q3");
			break;
			
		case "n2 q4":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n2q4");
			add_op("D) resposta D", "Resposta errada n2q4");
			add_op("C) resposta C", "Resposta errada n2q4");
			add_op("B) resposta B", "Resposta errada n2q4");
			add_op("A) resposta A", "Resposta errada n2q4");
		break;
		
			case "Resposta certa n2q4":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("Proxima questão", "n2 q5");
		break;
			case "Resposta errada n2q4":
			ds_grid_add_text("macho horrivel",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("Proxima questão", "n2 q5");
			add_op("tentar denovo", "n2 q4");
		break;
			
		case "n2 q5":
			ds_grid_add_text(" insira a pergunta aqui ", spr_rosto_edi , 0, "Edi");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n2q5");
			add_op("D) resposta D", "Resposta errada n2q5");
			add_op("C) resposta C", "Resposta errada n2q5");
			add_op("B) resposta B", "Resposta certa n2q5");
			add_op("A) resposta A", "Resposta errada n2q5");
		break;
		
			case "Resposta certa n2q5":
			ds_grid_add_text("parabens voce acertou",spr_rosto_edi,0,"Edi")
			global.quest++
			add_op("continuar","edi_2");
		break;
		
			case "Resposta errada n2q5":
			ds_grid_add_text("macho ruim",ed_aborrecido,0,"Edi")
			global.vida --
			add_op("tentar denovo", "n2 q5");
			break;
	
		
		
		
		
		
		
		
		
		case "nivel_2":
			ds_grid_add_text("pronto pra quimica jovem?", spr_rosto_clara , 0, "Clara");
			add_op("vamooooos", "n3 q1");
			add_op("nam", "n3 q1");
		break;
		
		case "n3 q1":
		
			ds_grid_add_text("vamos lá", spr_rosto_clara , 0, "Clara");
			ds_grid_add_text(" pergunta aqui "/*quimica daqui pra baixo*/, spr_rosto_clara , 0, "Clara");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n3q1");
			add_op("D) resposta D", "Resposta errada n3q1");
			add_op("C) resposta C", "Resposta errada n3q1");
			add_op("B) resposta B", "Resposta errada n3q1");
			add_op("A) resposta A", "Resposta errada n3q1");
		break;
			case "Resposta certa n3q1":
			ds_grid_add_text("parabens voce acertou",spr_rosto_clara,0,"Clara")
			global.quest++
			add_op("Proxima questão", "n3 q2");
		break;
		
			case "Resposta errada n3q1":
			ds_grid_add_text("não, não esta certo jovem",spr_rosto_clara_1,0,"Clara")
			global.vida --
			add_op("Proxima questão", "n3 q2");
			add_op("tentar denovo", "n3 q1");
		break;
		
		
		case "n3 q2":
		
			ds_grid_add_text(" pergunta aqui ", spr_rosto_clara , 0, "Clara");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n3q2");
			add_op("D) resposta D", "Resposta errada n3q2");
			add_op("C) resposta C", "Resposta errada n3q2");
			add_op("B) resposta B", "Resposta certa n3q2");
			add_op("A) resposta A", "Resposta errada n3q2");
		break;
			case "Resposta certa n3q2":
			ds_grid_add_text("parabens voce acertou",spr_rosto_clara,0,"Clara")
			global.quest++
			add_op("Proxima questão", "n3 q2");
		break;
		
			case "Resposta errada n3q2":
			ds_grid_add_text("não,não ta certo não viu",spr_rosto_clara_1,0,"Clara")
			global.vida --
			add_op("Proxima questão", "n3 q3");
			add_op("tentar denovo", "n3 q2");
		break;
		
		
		case "n3 q3":
		
			ds_grid_add_text(" pergunta aqui ", spr_rosto_clara , 0, "Clara");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n3q3");
			add_op("D) resposta D", "Resposta errada n3q3");
			add_op("C) resposta C", "Resposta certa n3q3");
			add_op("B) resposta B", "Resposta errada n3q3");
			add_op("A) resposta A", "Resposta errada n3q3");
		break;
			case "Resposta certa n3q3":
			ds_grid_add_text("parabens voce acertou",spr_rosto_clara,0,"Clara")
			global.quest++
			add_op("Proxima questão", "n3 q4");
		break;
		
			case "Resposta errada n3q3":
			ds_grid_add_text("errado, jovem",spr_rosto_clara_1,0,"Clara")
			global.vida --
			add_op("Proxima questão", "n3 q4");
			add_op("tentar denovo", "n3 q3");
		break;
		
		
		case "n3 q4":
		
			ds_grid_add_text(" pergunta aqui ", spr_rosto_clara , 0, "Clara");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n3q4");
			add_op("D) resposta D", "Resposta errada n3q4");
			add_op("C) resposta C", "Resposta errada n3q4");
			add_op("B) resposta B", "Resposta errada n3q4");
			add_op("A) resposta A", "Resposta certa n3q4");
		break;
			case "Resposta certa n3q4":
			ds_grid_add_text("parabens voce acertou",spr_rosto_clara,0,"Clara")
			global.quest++
			add_op("Proxima questão", "n3 q5");
		break;
		
			case "Resposta errada n3q4":
			ds_grid_add_text("uau voce errou ",spr_rosto_clara_1,0,"Clara")
			global.vida --
			add_op("Proxima questão", "n3 q5");
			add_op("tentar denovo", "n3 q4");
		break;
		
		
			case "n3 q5":
		
			ds_grid_add_text(" que pena ", spr_rosto_clara , 0, "Clara");
			ds_grid_add_text(" pergunta aqui ", spr_rosto_clara , 0, "Clara");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n3q5");
			add_op("D) resposta D", "Resposta errada n3q5");
			add_op("C) resposta C", "Resposta errada n3q5");
			add_op("B) resposta B", "Resposta certa n3q5");
			add_op("A) resposta A", "Resposta errada n3q5");
		break;
			case "Resposta certa n3q5":
			ds_grid_add_text("parabens voce acertou",spr_rosto_clara,0,"Clara")
			global.quest++
			add_op("Continuar", "clara");
		break;
		
			case "Resposta errada n3q5":
			ds_grid_add_text("nem tenho mais criatividade pra dizer que tu errou.. ",spr_rosto_clara_1,0,"Clara")
			global.vida --
			
			add_op("tentar denovo", "n3 q5");
		break;
			
			
			
			
			
			
			
			
	
		case "nivel_3":
		ds_grid_add_text(" bom dia meu povo, digam-me, sociologia ou filosofia? ", spr_rosto_pm , 0, "Paulo Marcelo");
		add_op("Filosofia", "n4 q1");
		add_op("Sociologia", "n5 q1");
		
		
		break;
		case "n4 q1" :
			
			ds_grid_add_text("certo, pergunta aqui "/*filosofia questions aqui pra baixo*/ , spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n4q1");
			add_op("D) resposta D", "Resposta errada n4q1");
			add_op("C) resposta C", "Resposta errada n4q1");
			add_op("B) resposta B", "Resposta errada n4q1");
			add_op("A) resposta A", "Resposta errada n4q1");
		break;
			case "Resposta certa n4q1":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n4 q2");
		
			
		break;
			case "Resposta errada n4q1":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			
			global.vida --
			add_op("Proxima questão", "n4 q2");
			add_op("tentar denovo", "n4 q1");
		break;
		
		case "n4 q2" :
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n4q2");
			add_op("D) resposta D", "Resposta certa n4q2");
			add_op("C) resposta C", "Resposta errada n4q2");
			add_op("B) resposta B", "Resposta errada n4q2");
			add_op("A) resposta A", "Resposta errada n4q2");
		break;
			case "Resposta certa n4q2":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n4 q3");
		
			
		break;
			case "Resposta errada n4q2":
			ds_grid_add_text("errou feio ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n4 q3");
			add_op("tentar denovo", "n4 q2");
		break;
		
		case "n4 q3" :
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n4q3");
			add_op("D) resposta D", "Resposta errada n4q3");
			add_op("C) resposta C", "Resposta errada n4q3");
			add_op("B) resposta B", "Resposta errada n4q3");
			add_op("A) resposta A", "Resposta errada n4q3");
		break;
			case "Resposta certa n4q3":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n4 q4");
		
			
		break;
			case "Resposta errada n4q3":
			ds_grid_add_text("Necas ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n4 q4");
			add_op("tentar denovo", "n4 q3");
		break;
		
		case "n4 q4" :
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n4q4");
			add_op("D) resposta D", "Resposta certa n4q4");
			add_op("C) resposta C", "Resposta errada n4q4");
			add_op("B) resposta B", "Resposta errada n4q4");
			add_op("A) resposta A", "Resposta errada n4q4");
		break;
			case "Resposta certa n4q4":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n4 q5");
		
			
		break;
			case "Resposta errada n4q4":
			ds_grid_add_text("Negativo ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n4 q5");
			add_op("tentar denovo", "n4 q5");
		break;
		
		case "n4 q5" :
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n4q5");
			add_op("D) resposta D", "Resposta errada n4q5");
			add_op("C) resposta C", "Resposta errada n4q5");
			add_op("B) resposta B", "Resposta certa n4q5");
			add_op("A) resposta A", "Resposta errada n4q5");
		break;
			case "Resposta certa n4q5":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("continuar", "PM");
		
			
		break;
			case "Resposta errada n4q5":
			ds_grid_add_text("Não ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			
			add_op("tentar denovo", "n4 q5");
		break;
		
		
		
		
		
		
		case "n5 q1":
			
			ds_grid_add_text("certo, pergunta aqui "/*sociologia daqui pra baixo*/, spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n5q1");
			add_op("D) resposta D", "Resposta errada n5q1");
			add_op("C) resposta C", "Resposta errada n5q1");
			add_op("B) resposta B", "Resposta errada n5q1");
			add_op("A) resposta A", "Resposta errada n5q1");
		break;
			case "Resposta certa n5q1":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n5 q2");
		
			
		break;
			case "Resposta errada n5q1":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n5 q2");
			add_op("tentar denovo", "n5 q1");
		break;
		
		
		case "n5 q2":
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n5q2");
			add_op("D) resposta D", "Resposta certa n5q2");
			add_op("C) resposta C", "Resposta errada n5q2");
			add_op("B) resposta B", "Resposta errada n5q2");
			add_op("A) resposta A", "Resposta errada n5q2");
		break;
			case "Resposta certa n5q2":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n5 q3");
		
			
		break;
			case "Resposta errada n5q2":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n5 q3");
			add_op("tentar denovo", "n5 q2");
		break;
		
		
		case "n5 q3":
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n5q3");
			add_op("D) resposta D", "Resposta errada n5q3");
			add_op("C) resposta C", "Resposta errada n5q3");
			add_op("B) resposta B", "Resposta errada n5q3");
			add_op("A) resposta A", "Resposta certa n5q3");
		break;
			case "Resposta certa n5q3":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n5 q4");
		
			
		break;
			case "Resposta errada n5q3":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n5 q4");
			add_op("tentar denovo", "n5 q3");
		break;
		
		
		case "n5 q4":
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n5q4");
			add_op("D) resposta D", "Resposta errada n5q4");
			add_op("C) resposta C", "Resposta errada n5q4");
			add_op("B) resposta B", "Resposta certa n5q4");
			add_op("A) resposta A", "Resposta errada n5q4");
		break;
			case "Resposta certa n5q4":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Proxima questão", "n5 q5");
		
			
		break;
			case "Resposta errada n5q4":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("Proxima questão", "n5 q5");
			add_op("tentar denovo", "n5 q4");
		break;
		
		
		case "n5 q5":
			
			ds_grid_add_text("certo, pergunta aqui ", spr_rosto_pm , 0, "Paulo Marcelo");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n5q5");
			add_op("D) resposta D", "Resposta errada n5q5");
			add_op("C) resposta C", "Resposta errada n5q5");
			add_op("B) resposta B", "Resposta errada n5q5");
			add_op("A) resposta A", "Resposta errada n5q5");
		break;
			case "Resposta certa n5q5":
			ds_grid_add_text("correto",spr_rosto_pm,0,"Paulo Marcelo")
			global.quest++
			add_op("Continuar", "PM_2");
			
		
			
		break;
			case "Resposta errada n5q5":
			ds_grid_add_text("hmmm não é bem isso ",spr_rosto_pm_1,0,"Paulo Marcelo")
			global.vida --
			add_op("tentar denovo", "n5 q5");
		break;
		
		
		
		
		
		
		
		
		
			
			
		case "nivel_4":
		ds_grid_add_text(" oii gente, vamo commeçar com Geografia aqui ", spr_rosto_dayane , 0, "Dayane");
		add_op("proximo", "n6 q1");
		
		
		
		
		break;
		
		case "n6 q1":
			
			ds_grid_add_text(" perguntar ", spr_rosto_dayane /*geografia*/, 0, "Dayane");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n6q1");
			add_op("D) resposta D", "Resposta certa n6q1");
			add_op("C) resposta C", "Resposta errada n6q1");
			add_op("B) resposta B", "Resposta errada n6q1");
			add_op("A) resposta A", "Resposta errada n6q1");
		break;
			case "Resposta certa n6q1":
			ds_grid_add_text("muito bem pessoal",spr_rosto_dayane,0,"Dayane")
			global.quest++
			add_op("Proxima questão", "n6 q2");
			
			
		break;
			case "Resposta errada n6q1":
			ds_grid_add_text("que isso? errou?",spr_rosto_dayane_2,0,"Dayane")
			global.vida --
			add_op("Proxima questão", "n6 q2");
			add_op("tentar denovo", "n6 q1");
		break;
		
		
		case "n6 q2":
			
			ds_grid_add_text(" perguntar ", spr_rosto_dayane /*geografia*/, 0, "Dayane");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n6q2");
			add_op("D) resposta D", "Resposta errada n6q2");
			add_op("C) resposta C", "Resposta errada n6q2");
			add_op("B) resposta B", "Resposta certa n6q2");
			add_op("A) resposta A", "Resposta errada n6q2");
		break;
			case "Resposta certa n6q2":
			ds_grid_add_text("muito bem pessoal",spr_rosto_dayane,0,"Dayane")
			global.quest++
			add_op("Proxima questão", "n6 q3");
			
			
		break;
			case "Resposta errada n6q2":
			ds_grid_add_text("aff, vocês são melhores que isso",spr_rosto_dayane_2,0,"Dayane")
			global.vida --
			add_op("Proxima questão", "n6 q3");
			add_op("tentar denovo", "n6 q2");
		break;
		
		
		case "n6 q3":
			
			ds_grid_add_text(" perguntar ", spr_rosto_dayane /*geografia*/, 0, "Dayane");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n6q3");
			add_op("D) resposta D", "Resposta errada n6q3");
			add_op("C) resposta C", "Resposta certa n6q3");
			add_op("B) resposta B", "Resposta errada n6q3");
			add_op("A) resposta A", "Resposta errada n6q3");
		break;
			case "Resposta certa n6q3":
			ds_grid_add_text("muito bem pessoal",spr_rosto_dayane,0,"Dayane")
			global.quest++
			add_op("Proxima questão", "n6 q4");
			
			
		break;
			case "Resposta errada n6q3":
			ds_grid_add_text("que isso? errou?",spr_rosto_dayane_2,0,"Dayane")
			global.vida --
			add_op("Proxima questão", "n6 q4");
			add_op("tentar denovo", "n6 q3");
		break;
		
		
		case "n6 q4":
			
			ds_grid_add_text(" perguntar ", spr_rosto_dayane /*geografia*/, 0, "Dayane");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n6q4");
			add_op("D) resposta D", "Resposta errada n6q4");
			add_op("C) resposta C", "Resposta errada n6q4");
			add_op("B) resposta B", "Resposta errada n6q4");
			add_op("A) resposta A", "Resposta errada n6q4");
		break;
			case "Resposta certa n6q4":
			ds_grid_add_text("muito bem pessoal",spr_rosto_dayane,0,"Dayane")
			global.quest++
			add_op("Proxima questão", "n6 q5");
			
			
		break;
			case "Resposta errada n6q4":
			ds_grid_add_text("vamos melhorar isso ai eim",spr_rosto_dayane_2,0,"Dayane")
			global.vida --
			add_op("Proxima questão", "n6 q5");
			add_op("tentar denovo", "n6 q4");
		break;
		
		
		case "n6 q5":
			
			ds_grid_add_text(" perguntar ", spr_rosto_dayane /*geografia*/, 0, "Dayane");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n6q5");
			add_op("D) resposta D", "Resposta errada n6q5");
			add_op("C) resposta C", "Resposta errada n6q5");
			add_op("B) resposta B", "Resposta errada n6q5");
			add_op("A) resposta A", "Resposta certa n6q5");
		break;
			case "Resposta certa n6q5":
			ds_grid_add_text("muito bem pessoal",spr_rosto_dayane,0,"Dayane")
			global.quest++
			add_op("continuar", "dayane");
			
			
		break;
			case "Resposta errada n6q5":
			ds_grid_add_text("hmmm",spr_rosto_dayane_2,0,"Dayane")
			global.vida --

			add_op("tentar denovo", "n6 q5");
		break;
		
		
		
		
		
			case "nivel_5":
			ds_grid_add_text(" bom dia filhos, vamos começar com Biologia na veia meninos meninas ", spr_rosto_lu , 0, "Lucilene");
			ds_grid_add_text(" pergunta ",/*biologia*/ spr_rosto_lu , 0, "Lucilene");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n7q1");
			add_op("D) resposta D", "Resposta errada n7q1");
			add_op("C) resposta C", "Resposta certa n7q1");
			add_op("B) resposta B", "Resposta errada n7q1");
			add_op("A) resposta A", "Resposta errada n7q1");
		break;
			case "Resposta certa n7q1":
			ds_grid_add_text("muito bem filhos",spr_rosto_lu,0,"Lucilene")
			global.quest++
			add_op("Proxima questão", "n7 q2");
			
			
		break;
			case "Resposta errada n7q1":
			ds_grid_add_text("resposta ê...rrada ",spr_rosto_lu_1,0,"Lucilene")
			global.vida --
			add_op("Proxima questão", "n7 q2");
			add_op("tentar denovo", "nivel_5");
		break;
		
		case "n7 q2":
			
			ds_grid_add_text(" pergunta ",/*biologia*/ spr_rosto_lu , 0, "Lucilene");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n7q2");
			add_op("D) resposta D", "Resposta errada n7q2");
			add_op("C) resposta C", "Resposta errada n7q2");
			add_op("B) resposta B", "Resposta errada n7q2");
			add_op("A) resposta A", "Resposta errada n7q2");
		break;
			case "Resposta certa n7q2":
			ds_grid_add_text("muito bem filhos",spr_rosto_lu,0,"Lucilene")
			global.quest++
			add_op("Proxima questão", "n7 q3");
			
			
		break;
			case "Resposta errada n7q2":
			ds_grid_add_text("na proxima voce acerta ",spr_rosto_lu_1,0,"Lucilene")
			global.vida --
			add_op("Proxima questão", "n7 q3");
			add_op("tentar denovo", "n7 q2");
		break;
		
		case "n7 q3":
		
			ds_grid_add_text(" pergunta ",/*biologia*/ spr_rosto_lu , 0, "Lucilene");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n7q3");
			add_op("D) resposta D", "Resposta errada n7q3");
			add_op("C) resposta C", "Resposta errada n7q3");
			add_op("B) resposta B", "Resposta certa n7q3");
			add_op("A) resposta A", "Resposta errada n7q3");
		break;
			case "Resposta certa n7q3":
			ds_grid_add_text("muito bem filhos",spr_rosto_lu,0,"Lucilene")
			global.quest++
			add_op("Proxima questão", "n7 q4");
			
			
		break;
			case "Resposta errada n7q3":
			ds_grid_add_text("resposta ê...rrada ",spr_rosto_lu_1,0,"Lucilene")
			global.vida --
			add_op("Proxima questão", "n7 q4");
			add_op("tentar denovo", "n7 q3");
		break;
		
		case "n7 q4":
		
			ds_grid_add_text(" pergunta ",/*biologia*/ spr_rosto_lu , 0, "Lucilene");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n7q4");
			add_op("D) resposta D", "Resposta errada n7q4");
			add_op("C) resposta C", "Resposta errada n7q4");
			add_op("B) resposta B", "Resposta errada n7q4");
			add_op("A) resposta A", "Resposta errada n7q4");
		break;
			case "Resposta certa n7q4":
			ds_grid_add_text("muito bem filhos",spr_rosto_lu,0,"Lucilene")
			global.quest++
			add_op("Proxima questão", "n7 q5");
			
			
		break;
			case "Resposta errada n7q4":
			ds_grid_add_text("o importante é aprender ",spr_rosto_lu_1,0,"Lucilene")
			global.vida --
			add_op("Proxima questão", "n7 q5");
			add_op("tentar denovo", "n7 q4");
		break;
		
		case "n7 q5":
			
			ds_grid_add_text(" pergunta ",/*biologia*/ spr_rosto_lu , 0, "Lucilene");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n7q5");
			add_op("D) resposta D", "Resposta certa n7q5");
			add_op("C) resposta C", "Resposta errada n7q5");
			add_op("B) resposta B", "Resposta errada n7q5");
			add_op("A) resposta A", "Resposta errada n7q5");
		break;
			case "Resposta certa n7q5":
			ds_grid_add_text("muito bem filhos",spr_rosto_lu,0,"Lucilene")
			global.quest++
			add_op("continuar", "lu");
			
			
		break;
			case "Resposta errada n7q5":
			ds_grid_add_text("nada mal filho, mas faltou conhecimento ",spr_rosto_lu_1,0,"Lucilene")
			global.vida --
			
			add_op("tentar denovo", "n7 q5");
		break;
		
		
		
		
		
		
		case "nivel_6":
			ds_grid_add_text(" bom dia, atividade ", spr_rosto_lucas, 0, "Lucas");
			ds_grid_add_text(" pergunta ",/*mat*/ spr_rosto_lucas , 0, "Lucas");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n8q1");
			add_op("D) resposta D", "Resposta certa n8q1");
			add_op("C) resposta C", "Resposta errada n8q1");
			add_op("B) resposta B", "Resposta errada n8q1");
			add_op("A) resposta A", "Resposta errada n8q1");
		break;
			case "Resposta certa n8q1":
			ds_grid_add_text("muito bem",spr_rosto_lucas,0,"Lucas")
			global.quest++
			add_op("Proxima questão", "n8 q2");
			
			
		break;
			case "Resposta errada n8q1":
			ds_grid_add_text("eu ensinei vcs isso? não parece",spr_rosto_lucas_1,0,"Lucas")
			global.vida --
			add_op("Proxima questão", "n8 q2");
			add_op("tentar denovo", "nivel_6");
		break;
		
		case "n8 q2":
			ds_grid_add_text(" pergunta ",/*mat*/ spr_rosto_lucas , 0, "Lucas");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n8q2");
			add_op("D) resposta D", "Resposta errada n8q2");
			add_op("C) resposta C", "Resposta certa n8q2");
			add_op("B) resposta B", "Resposta errada n8q2");
			add_op("A) resposta A", "Resposta errada n8q2");
		break;
			case "Resposta certa n8q2":
			ds_grid_add_text("otimo",spr_rosto_lucas,0,"Lucas")
			global.quest++
			add_op("Proxima questão", "n8 q3");
			
			
		break;
			case "Resposta errada n8q2":
			ds_grid_add_text("uhum, aprendeu né, to vendo ",spr_rosto_lucas_1,0,"Lucas")
			global.vida --
			add_op("Proxima questão", "n8 q3");
			add_op("tentar denovo", "n8 q2");
		break;
		
		case "n8 q3":
		
			ds_grid_add_text(" pergunta ",/*mat*/ spr_rosto_lucas , 0, "Lucas");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n8q3");
			add_op("D) resposta D", "Resposta errada n8q3");
			add_op("C) resposta C", "Resposta errada n8q3");
			add_op("B) resposta B", "Resposta errada n8q3");
			add_op("A) resposta A", "Resposta errada n8q3");
		break;
			case "Resposta certa n8q3":
			ds_grid_add_text("valeu",spr_rosto_lucas,0,"Lucas")
			global.quest++
			add_op("Proxima questão", "n8 q4");
			
			
		break;
			case "Resposta errada n8q3":
			ds_grid_add_text("vcs consegue mais que isso que eu sei ",spr_rosto_lucas_1,0,"Lucas")
			global.vida --
			add_op("Proxima questão", "n8 q4");
			add_op("tentar denovo", "n8 q3");
		break;
		
		case "n8 q4":
		
			ds_grid_add_text(" pergunta ",/*mat*/ spr_rosto_lucas , 0, "Lucas");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n8q4");
			add_op("D) resposta D", "Resposta errada n8q4");
			add_op("C) resposta C", "Resposta errada n8q4");
			add_op("B) resposta B", "Resposta errada n8q4");
			add_op("A) resposta A", "Resposta errada n8q4");
		break;
			case "Resposta certa n8q4":
			ds_grid_add_text("muito bem",spr_rosto_lucas,0,"Lucas")
			global.quest++
			add_op("Proxima questão", "n8 q5");
			
			
		break;
			case "Resposta errada n8q4":
			ds_grid_add_text("o importante é aprender ",spr_rosto_lucas_1,0,"Lucas")
			global.vida --
			add_op("Proxima questão", "n8 q5");
			add_op("tentar denovo", "n8 q4");
		break;
		
		case "n8 q5":
		
			ds_grid_add_text(" pergunta ",/*mat*/ spr_rosto_lucas , 0, "Lucas");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n8q5");
			add_op("D) resposta D", "Resposta errada n8q5");
			add_op("C) resposta C", "Resposta errada n8q5");
			add_op("B) resposta B", "Resposta errada n8q5");
			add_op("A) resposta A", "Resposta certa n8q5");
		break;
			case "Resposta certa n8q5":
			ds_grid_add_text("fechou",spr_rosto_lucas,0,"Lucas")
			global.quest++
			add_op("continuar", "lucas");
			
			
		break;
			case "Resposta errada n8q5":
			ds_grid_add_text("nada mal, mas faltou tempero ",spr_rosto_lucas_1,0,"Lucas")
			global.vida --
			
			add_op("tentar denovo", "n8 q5");
		break;
		
		
		
		
		case "nivel_7":
			ds_grid_add_text("Bom dia meu povo", spr_rosto_rogerio, 0, "Rogerio");
			add_op("bom dia", "bom dia");
		break;
		case "bom dia":
			ds_grid_add_text(" BOM DIA MEU POVO!!!", spr_rosto_rogerio, 0, "Rogerio");
			add_op("BOM DIA!!!", "n9 q1");
		break;
		case "n9 q1":
			ds_grid_add_text("muito bem, bora acordar pras questões de português",/*mat*/ spr_rosto_rogerio , 0, "Rogerio");
			ds_grid_add_text(" pergunta ",/*port*/ spr_rosto_rogerio , 0, "Rogerio");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n9q1");
			add_op("D) resposta D", "Resposta certa n9q1");
			add_op("C) resposta C", "Resposta errada n9q1");
			add_op("B) resposta B", "Resposta errada n9q1");
			add_op("A) resposta A", "Resposta errada n9q1");
		break;
			case "Resposta certa n9q1":
			ds_grid_add_text("muito bem",spr_rosto_rogerio,0,"Rogerio")
			global.quest++
			add_op("Proxima questão", "n9 q2");
			
			
		break;
			case "Resposta errada n9q1":
			ds_grid_add_text("que isso minha gente, uma questãozinha facil dessas?",spr_rosto_rogerio_1,0,"Rogerio")
			global.vida --
			add_op("Proxima questão", "n9 q2");
			add_op("tentar denovo", "n9 q1");
		break;
		
		
		case "n9 q2":
			ds_grid_add_text(" pergunta ",/*port*/ spr_rosto_rogerio , 0, "Rogerio");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n9q2");
			add_op("D) resposta D", "Resposta certa n9q2");
			add_op("C) resposta C", "Resposta errada n9q2");
			add_op("B) resposta B", "Resposta errada n9q2");
			add_op("A) resposta A", "Resposta errada n9q2");
		break;
			case "Resposta certa n9q2":
			ds_grid_add_text("muito bem",spr_rosto_rogerio,0,"Rogerio")
			global.quest++
			add_op("Proxima questão", "n9 q3");
			
			
		break;
			case "Resposta errada n9q2":
			ds_grid_add_text("Eu vou defenestrar vocêS",spr_rosto_rogerio_1,0,"Rogerio")
			global.vida --
			add_op("Proxima questão", "n9 q3");
			add_op("tentar denovo", "n9 q2");
		break;
		
		
		case "n9 q3":
			ds_grid_add_text(" pergunta ",/*port*/ spr_rosto_rogerio , 0, "Rogerio");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n9q3");
			add_op("D) resposta D", "Resposta errada n9q3");
			add_op("C) resposta C", "Resposta errada n9q3");
			add_op("B) resposta B", "Resposta certa n9q3");
			add_op("A) resposta A", "Resposta errada n9q3");
		break;
			case "Resposta certa n9q3":
			ds_grid_add_text("muito bem",spr_rosto_rogerio,0,"Rogerio")
			global.quest++
			add_op("Proxima questão", "n9 q4");
			
			
		break;
			case "Resposta errada n9q3":
			ds_grid_add_text("Mas é muito simples!",spr_rosto_rogerio_1,0,"Rogerio")
			global.vida --
			add_op("Proxima questão", "n9 q4");
			add_op("tentar denovo", "n9 Q3");
		break;
		
		
		case "n9 q4":
			ds_grid_add_text(" pergunta ",/*port*/ spr_rosto_rogerio , 0, "Rogerio");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n9q4");
			add_op("D) resposta D", "Resposta certa n9q4");
			add_op("C) resposta C", "Resposta errada n9q4");
			add_op("B) resposta B", "Resposta errada n9q4");
			add_op("A) resposta A", "Resposta errada n9q4");
		break;
			case "Resposta certa n9q4":
			ds_grid_add_text("muito bem",spr_rosto_rogerio,0,"Rogerio")
			global.quest++
			add_op("Proxima questão", "n9 q5");
			
			
		break;
			case "Resposta errada n9q4":
			ds_grid_add_text("Vão ser defenestrados",spr_rosto_rogerio_1,0,"Rogerio")
			global.vida --
			add_op("Proxima questão", "n9 q5");
			add_op("tentar denovo", "n9 q4");
		break;
		
		
		case "n9 q5":
			ds_grid_add_text(" pergunta ",/*port*/ spr_rosto_rogerio , 0, "Rogerio");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n9q5");
			add_op("D) resposta D", "Resposta certa n9q5");
			add_op("C) resposta C", "Resposta errada n9q5");
			add_op("B) resposta B", "Resposta errada n9q5");
			add_op("A) resposta A", "Resposta errada n9q5");
		break;
			case "Resposta certa n9q5":
			ds_grid_add_text("muito bem",spr_rosto_rogerio,0,"Rogerio")
			global.quest++
			add_op("Proximo", "rogerio");
			
			
		break;
			case "Resposta errada n9q5":
			ds_grid_add_text("o que é isso... esperava mais",spr_rosto_rogerio_1,0,"Rogerio")
			global.vida --
			
			add_op("tentar denovo", "n9 q5");
		break;
		
		
		
		case "nivel_8":
		
			ds_grid_add_text(" pergunta ",/*fisica*/ spr_rosto_luan , 0, "Luan");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n10q1");
			add_op("D) resposta D", "Resposta certa n10q1");
			add_op("C) resposta C", "Resposta errada n10q1");
			add_op("B) resposta B", "Resposta errada n10q1");
			add_op("A) resposta A", "Resposta errada n10q1");
		break;
			case "Resposta certa n10q1":
			ds_grid_add_text("muito bem",spr_rosto_luan,0,"Luan")
			global.quest++
			add_op("Proxima questão", "n10 q2");
			
			
		break;
			case "Resposta errada n10q1":
			ds_grid_add_text("eu vou dar uma martelada",spr_rosto_luan_1,0,"Luan")
			global.vida --
			add_op("Proxima questão", "n10 q2");
			add_op("tentar denovo", "nivel_8");
		break;
		
		
		case "n10 q2":
		
			ds_grid_add_text(" pergunta ",/*fisica*/ spr_rosto_luan , 0, "Luan");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta certa n10q2");
			add_op("D) resposta D", "Resposta errada n10q2");
			add_op("C) resposta C", "Resposta errada n10q2");
			add_op("B) resposta B", "Resposta errada n10q2");
			add_op("A) resposta A", "Resposta errada n10q2");
		break;
			case "Resposta certa n10q2":
			ds_grid_add_text("muito bem",spr_rosto_luan,0,"Luan")
			global.quest++
			add_op("Proxima questão", "n10 q3");
			
			
		break;
			case "Resposta errada n10q2":
			ds_grid_add_text("tou ficand bravo",spr_rosto_luan_1,0,"Luan")
			global.vida --
			add_op("Proxima questão", "n10 q3");
			add_op("tentar denovo", "n10 q2");
		break;
		
		
		
		case "n10 q3":
		
			ds_grid_add_text(" pergunta ",/*fisica*/ spr_rosto_luan , 0, "Luan");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n10q3");
			add_op("D) resposta D", "Resposta certa n10q3");
			add_op("C) resposta C", "Resposta errada n10q3");
			add_op("B) resposta B", "Resposta errada n10q3");
			add_op("A) resposta A", "Resposta errada n10q3");
		break;
			case "Resposta certa n10q3":
			ds_grid_add_text("muito bem",spr_rosto_luan,0,"Luan")
			global.quest++
			add_op("Proxima questão", "n10 q4");
			
			
		break;
			case "Resposta errada n10q3":
			ds_grid_add_text("essa dai era muito facil",spr_rosto_luan_1,0,"Luan")
			global.vida --
			add_op("Proxima questão", "n10 q4");
			add_op("tentar denovo", "n10 q3");
		break;
		
		
		
		
		case "n10 q4":
		
			ds_grid_add_text(" pergunta ",/*fisica*/ spr_rosto_luan , 0, "Luan");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n10q4");
			add_op("D) resposta D", "Resposta errada n10q4");
			add_op("C) resposta C", "Resposta certa n10q4");
			add_op("B) resposta B", "Resposta errada n10q4");
			add_op("A) resposta A", "Resposta errada n10q4");
		break;
			case "Resposta certa n10q4":
			ds_grid_add_text("otimo",spr_rosto_luan,0,"Luan")
			global.quest++
			add_op("Proxima questão", "n10 q5");
			
			
		break;
			case "Resposta errada n10q4":
			ds_grid_add_text("bora lá gente",spr_rosto_luan_1,0,"Luan")
			global.vida --
			add_op("Proxima questão", "n10 q5");
			add_op("tentar denovo", "n10 q4");
		break;
		
		
		
		
		
		
		case "n10 q5":
		
			ds_grid_add_text(" pergunta ",/*fisica*/ spr_rosto_luan , 0, "Luan");
			add_op("E) resposta E"/*<adicionar resposta aqui*/, "Resposta errada n10q5");
			add_op("D) resposta D", "Resposta errada n10q5");
			add_op("C) resposta C", "Resposta errada n10q5");
			add_op("B) resposta B", "Resposta errada n10q5");
			add_op("A) resposta A", "Resposta certa n10q5");
		break;
			case "Resposta certa n10q5":
			ds_grid_add_text("valeu",spr_rosto_luan,0,"Luan")
			global.quest++
			add_op("Proximo", "luan");
			
			
		break;
			case "Resposta errada n10q5":
			ds_grid_add_text("essa tu tem que acertar...",spr_rosto_luan_1,0,"Luan")
			global.vida --
			add_op("tentar denovo", "n10 q5");
		break;
		
		
		
		
		
		
			
			
			
			/*não é necessario mexer nsso daqui pra baixo*/
		case "tutorial":
			ds_grid_add_text("chegando pra mais um dia cansativo, mas vamos lá né                                                     F - interage", spr_rosto_juin_2 , 0, "Junin");
			ds_grid_add_text("W A S D - movimenta", spr_rosto_juin , 0, "Junin");
			ds_grid_add_text("cada questão errada perde 1 vida", spr_rosto_juin , 0, "Junin");
			ds_grid_add_text("acerte todas, e recuper duas vidas", spr_rosto_juin , 0, "Junin");
			ds_grid_add_text("ps: pelo menos a ultima questão é obrigatoria acertar", spr_rosto_juin , 0, "Junin");
			ds_grid_add_text("Anima Jovem, mais um dia feliz hoje cheio de atividade pra fazer", spr_rosto_edi , 0, "Edi");
			ds_grid_add_text("agora entra naquelas portas e vai responder as questões, qualquer coisa so falar comigo", spr_rosto_edi , 0, "Edi");
			
		break;
		
		case "ja?":
			ds_grid_add_text("que foi?",ed_boombastic_side_eye , 0, "Edi");
			ds_grid_add_text("não vou explicar como que joga não",ed_dboas , 0, "Edi");
		break;
			case "edi_fora":
			ds_grid_add_text("a sala esta trancada",spr_nada , 1, "");
			ds_grid_add_text("Eu que vou para essa sala, vá nas outras primeiro",ed_dboas , 0, "Edi");
		break;
		
		case "edi":
			ds_grid_add_text("ai dento, o caba é ligeiro mermo",ed_dboas , 0, "Edi");
			global.edi=true
			edf=1
			global.vida+=2
		break;
		case "edi_2":
			ds_grid_add_text("ai dento, o caba é bom",ed_dboas , 0, "Edi");
			global.edi_2=true
			espanhol=1
			global.vida+=2
		break;
		case "clara":
			ds_grid_add_text("Parabens, merece até um chocolate. Merece, mas não vou dar",spr_rosto_clara , 0, "clara");
			global.clara=true
			qumica=1
			global.vida+=2
		break;
		case"PM":
			ds_grid_add_text("é isso meu povo, sejam voces mesmos",spr_rosto_pm , 0, "PM");
			global.pm=true
			sociologia=1
			global.vida+=2
		break;
		case"PM_2":
			ds_grid_add_text("é isso meu povo, sejam voces mesmos",spr_rosto_pm , 0, "PM");
			global.pm_2=true
			filosofia=1
			global.vida+=2
		break;
		case "dayane":
			ds_grid_add_text("Meu povo conversa mais baixo",spr_rosto_dayane , 0, "Dayane");
			global.dayane=true
			geografia=1
			global.vida+=2
		break;
		case "lu":
			ds_grid_add_text("muito bem filhos, é assim que se faz",spr_rosto_lu , 0, "Luciene");
			global.lu=true
			biologia=1
			global.vida+=2
		break;
		case "lucas":
			ds_grid_add_text("isso cairá no É NEM ",spr_rosto_lucas , 0, "lucas");
			global.lucas=true
			matematica=1
			global.vida+=2
		
		break;
		case "rogerio":
			ds_grid_add_text("muito bem, vão tirar mil no enem",spr_rosto_rogerio, 0, "Rogerio");
			global.rogerio=true
			portugues=1
			global.vida+=2
		
		break;
		case "luan":
			ds_grid_add_text("pelo menos o minimo de fisica tu já sabe",spr_rosto_luan, 0, "Luan");
			global.luan=true
			fisica=1
			global.vida+=2
		
		break;
		
		
		
		case"passado":
			ds_grid_add_text("você já respondeu as perguntas desse professor",spr_nada, 1, "");
		break;
		
		case"gameover":
			ds_grid_add_text("sou muito ruim mane...",spr_rosto_juin_1 , 0, "Junin");
			ds_grid_add_text("...",ed____ , 0, "Edi");
			ds_grid_add_text("esperava mais",ed_aborrecido , 0, "Edi");
			add_op("sair", "sai");
			add_op("tentar denovo", "r3");
		break;
			case "sai":
				game_end()
		break;
			case "r3":
				ds_grid_add_text("muito bem",ed_dboas , 0, "Edi");
				global.saindo=true
				global.vida = 5
		break;
		case "ler":
			ds_grid_add_text("banheiro interditado", spr_nada, 1, "");
		break;
		case "ler_SNA":
			ds_grid_add_text("essa sala não foi programada ainda", spr_nada, 1, "");
		break;
		case "bloqueado":
			ds_grid_add_text("va receber sua recompensa na sala de 3° redes", spr_nada, 1, "");
		break;
		case "bloqueador":
			ds_grid_add_text("não é possivel entrar ainda", spr_nada, 1, "");
		break;
		case "paulo":
			ds_grid_add_text("buenos dias, ainda não fui implementado, mas falta pouco", spr_nada, 1, "");
		break;
		case "paty":
			ds_grid_add_text("bom dia, titia paty ainda não ta implementada", spr_nada, 1, "");
		break;
			
	
		
	}
}
function ds_grid_add_row(){
	
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
	
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0,_y] = argument[0];
	_grid[# 1,_y] = argument[1];
	_grid[# 2,_y] = argument[2];
	_grid[# 3,_y] = argument[3];
}
	
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	
	op_num++
	
}

global.total = portugues+matematica+qumica+filosofia+sociologia+geografia+espanhol+edf+biologia+fisica

if global.quest==2{
	global.vida++
	global.quest=0
}

