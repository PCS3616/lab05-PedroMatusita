SC /020 ; 1 chamada subrotina
HM /000 ; fim do programa

@  /0020
K  /0000; reserva o espaço
LD N ; pega a variavel
JZ /032 ; checa se 0
ML RES ; multiplicacao
MM RES ; guarda o resultado
LD N ; pega i
SB SUB ; i -= 1
MM N ; armazena i
JP /022 ; volta recursivamente
RS /020 ; fim da subrotina

@  /0100
N   K /0005 ; calculo do fatorial de 5
RES K /0001 ; variavel de calculo
SUB K /0001 ; subtraçao
