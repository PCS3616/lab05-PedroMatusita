; Lê uma sequência de dados contidos entre 0102 a 013F

LOOP    LD ADDR      ; REESCREVER A MEMORIA
	AD OP_MM
	MM LEITURA

	LD VALOR     ; LER VALOR
	AD N
	AD N
	AD UM
	MM VALOR     ; ATUALIZA VALOR

LEITURA K /0000     ; EXECUTA INSTRUCAO MONTADA

	LD N   ;ATUALIZAR N
	AD UM  
	MM N

        LD ADDR     ; Carrega o endereço da variável na lista
        AD DOIS     ; Soma com a constante 0002 (desloca uma posição)
        MM ADDR     ; Altera o conteúdo de 0F00 com o novo endereço
        SB STOP     ; Subtrai com o endereço de parada (fim da lista)
        JZ HALT     ; Se zero, condição de parada, salta para fora
        JP LOOP     ; Se não zero, volta para o início
HALT    HM =0       ; Termina o programa

        @ /102
INICIO  K /0000
        
	@ /17E
FIM     K /0000
POS_FIM K /0140     ; Não deveria ser lido

        @  /F00
ADDR    K INICIO    ; Endereço (0102) de onde se deseja ler o dado -- Inicio da Lista
OP_MM   MM /000     ; OP de MM, com operando 000
STOP    K POS_FIM   ; Último endereço a ser lido
DOIS    K =2 ; Constante 0002 -- Incrementa para a próxima palavra da memória
UM      K =1
N       K =0
VALOR   K =0



