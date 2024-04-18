programa
{
	inclua biblioteca Tipos-->t
	inclua biblioteca Calendario-->c
	inclua biblioteca Matematica-->m
	inclua biblioteca Arquivos-->a
	inteiro i=0
	funcao inicio()
	{
		cadeia a [5][2]
		cadeia caminho="./Prova.txt"
		cadeia linha=""
		cadeia aluno=""
		cadeia mes=""
          cadeia dia=""
          cadeia ano=""
          cadeia texto=""
          cadeia nota=""
          inteiro num1=0
          inteiro num2=0
          inteiro resp=0
          real nota1=0.0
          dia = t.inteiro_para_cadeia(c.dia_mes_atual(),10)
          mes = t.inteiro_para_cadeia(c.mes_atual(),10)
          ano = t.inteiro_para_cadeia(c.ano_atual(),10)
          
          //ATIVIDADE 01
          inteiro arquivos =a.abrir_arquivo(caminho,a.MODO_ESCRITA)
          para(i=0;i<5;i++){
		a[i][0]=("ALUNO: ")
		a[i][1]=("Igor ferreira de souza")
		a[1][0]=("Professor: ")
		a[1][1]=("Lucas gois")
		a[2][0]=("unidade uricular")
		a[2][1]="logica de programaçao: "
		a[3][0]="data: "
		a[3][1]=Data(dia,mes,ano)
		a[4][0]="Nota: "
		a[4][1]=nota
		texto ="| "+a[i][0]+""+a[i][1]+" | "
          a.escrever_linha(texto, arquivos)
         
          	} a.fechar_arquivo(arquivos)
             // ATIVIDADE 01
             inteiro arquivor=a.abrir_arquivo(caminho,a.MODO_ACRESCENTAR)
             escreva("Digite um numero Para iniciar: ")
             leia(num1)
             para(i=0;i<10;i++){
             	resp=num1*num2
             	num2++
             	escreva(num1,"x",num2,":",resp,"\n")
             	t.inteiro_para_cadeia(resp,10)
             texto=("as resposta:"+resp)
             }
             
             a.escrever_linha(texto,arquivos)
            a.fechar_arquivo(arquivos)
            
            faca{
         escreva("Digite uma nota: ")
         leia(nota1)
         nota=t.real_para_cadeia(nota1)
         a[4][1]=nota
            }enquanto(nota1==0)
	}
	funcao cadeia Data(cadeia dia ,cadeia mes,cadeia ano){
	retorne ""+dia+"/"+mes+"/"+ano
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1327; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */