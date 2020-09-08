program show_do_milhao;

uses crt;//,MMSystem;

const caminho = 'F';  {Aqui se facilita o diret�rio do arquivo se mudar o disco
                       basta mudar esta letra}

var op:integer; {essa variavel receber� a op��o do usu�rio, caso ele queira
                 jogar ver as instru��es ou sair.}

    r:array[1..4] of integer; {Variaveis utilizadas na ajuda das cartas.}
    cartinha,cont_cartinha:integer;

    i,cartas,aux:integer;{ja essas ser�o auxiliares no programa.}

    vet_ajudas:array of string; {esse vetor sera usado em todas as ajudas.}
    ajudas:array [1..6] of boolean; {vetor pra definir as ajudas.}

/////////////////////////////DESENHO AJUDAS //////////////////////////////////
/////////////////////////////DESENHO AJUDAS //////////////////////////////////
procedure ajudas;
begin
{Aqui se faz o desenho das ajudas e caso ela ja tenha sido usada se coloca um
quadrado vermelho em cima do numero mostrando que ela ja foi utilizada.}
textbackground(blue);

textcolor(yellow);
gotoxy (54,18);
write ('4');

gotoxy (50,19);
write('������Ŀ');
gotoxy (50,20);
write('� �  � �');
gotoxy (50,21);
write('��������');
gotoxy (50,22);
write('�      �');
gotoxy (50,23);
write('� SKIP �');
gotoxy (50,24);
write('�      �');
gotoxy (50,25);
write('��������');

   if ajudas[4]=false then
    begin
    textcolor(red);
    gotoxy(54,18);
    write ('�');
    end;

textcolor(yellow);
gotoxy (64,18);
write ('5');
gotoxy (60,19);
write('������Ŀ');
gotoxy (60,20);
write('� �  � �');
gotoxy (60,21);
write('��������');
gotoxy (60,22);
write('�      �');
gotoxy (60,23);
write('� SKIP �');
gotoxy (60,24);
write('�      �');
gotoxy (60,25);
write('��������');

   if ajudas[5]=false then
    begin
    textcolor(red);
    gotoxy(64,18);
    write ('�');
    end;

textcolor(yellow);
gotoxy (74,18);
write ('6');
gotoxy (70,19);
write('������Ŀ');
gotoxy (70,20);
write('� �  � �');
gotoxy (70,21);
write('��������');
gotoxy (70,22);
write('�      �');
gotoxy (70,23);
write('� SKIP �');
gotoxy (70,24);
write('�      �');
gotoxy (70,25);
write('��������');

   if ajudas[6]=false then
    begin
    textcolor(red);
    gotoxy(74,18);
    write ('�');
    end;

textcolor(yellow);
gotoxy (44,18);
write ('3');
gotoxy (40,19);
write('������Ŀ');
gotoxy (40,20);
write('�����Ŀ�');
gotoxy (40,21);
write('�� ?? ��');
gotoxy (40,22);
write('������ٳ');
gotoxy (40,23);
write('�      �');
gotoxy(40,24);
write('� SIGN �');
gotoxy (40,25);
write('��������');

   if ajudas[3]=false then
    begin
    textcolor(red);
    gotoxy(44,18);
    write ('�');
    end;

textcolor(yellow);
gotoxy (34,18);
write ('2');
gotoxy (30,19);
write('������Ŀ');
gotoxy (30,20);
write('�    �');
gotoxy (30,21);
write('�      �');
gotoxy (30,22);
write('� CARD �');
gotoxy (30,23);
write('�      �');
gotoxy(30,24);
write('�    �');
gotoxy (30,25);
write('��������');

   if ajudas[2]=false then
    begin
    textcolor(red);
    gotoxy(34,18);
    write ('�');
    end;

textcolor(yellow);
gotoxy (24,18);
write ('1');
gotoxy (20,19);
write('������Ŀ');
gotoxy (20,20);
write('�    �');
gotoxy (20,21);
write('�/|\/|\�');
gotoxy (20,22);
write('� |  | �');
gotoxy (20,23);
write('�/ \/ \�');
gotoxy(20,24);
write('� HELP �');
gotoxy (20,25);
write('��������');

   if ajudas[1]=false then
    begin
    textcolor(red);
    gotoxy(24,18);
    write ('�');
    end;

end;

//////////////////////////////AJUDA UNIVERSITARIOS///////////////////////////
//////////////////////////////AJUDA UNIVERSITARIOS///////////////////////////

procedure hamulekote;
  {aqui se faz o desenho da ajuda dos universitarios.}
begin
 gotoxy (3,20);
 write('       ');
 gotoxy (3,21);
 write('/|\ /|\ /|\');
 gotoxy (3,22);
 write(' |   |   |');
 gotoxy (3,23);
 write('/ \ / \ / \');
 gotoxy(3,17);
 write ('�Ŀ');
 gotoxy(3,18);
 write ('� �');
 gotoxy(3,19);
 write ('���');
 gotoxy(7,17);
 write ('�Ŀ');
 gotoxy(7,18);
 write ('� �');
 gotoxy(7,19);
 write ('���');
 gotoxy(11,17);
 write ('�Ŀ');
 gotoxy(11,18);
 write ('� �');
 gotoxy(11,19);
 write ('���');
 gotoxy(12,18);
 write (vet_ajudas[0]);
 gotoxy(8,18);
 write (vet_ajudas[1]);
 gotoxy(4,18);
 write (vet_ajudas[2]);

end;




//////////////////////////////AJUDA CARTAS///////////////////////////////////
//////////////////////////////AJUDA CARTAS///////////////////////////////////
procedure hamulekote2;

var ixi,k,kk:integer;
  {aqui acontece a ajuda das cartas onde sa quest�es erradas ser�o apagadas
   pois se manda sobreescrever espa�os em cima delas com la�os de repeti��o
   que ser�o as coordenadas do gotoxy.}
begin

   for ixi:=0 to length(vet_ajudas)-1 do
     begin
      case vet_ajudas[ixi] of
       'a':begin
            for kk:=1 to 80 do
               begin
                 for k:=4 to 5 do
                 begin
                 gotoxy(kk,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
           end;

       'b':begin
            for kk:=1 to 80 do
               begin
                 for k:=7 to 8 do
                 begin
                 gotoxy(kk,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
           end;

       'c':begin
            for kk:=1 to 80 do
               begin
                 for k:=10 to 11 do
                 begin
                 gotoxy(kk,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
           end;

       'd':begin
            for kk:=1 to 80 do
               begin
                 for k:=13 to 14 do
                 begin
                 gotoxy(kk,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
           end;

      end;
     end;

  {E esses s�o os desenhos das cartas que serao apresentado ao usuario.}

  if (length(vet_ajudas)=0) then
     begin
     textbackground(white);
     textcolor(black);
     gotoxy(5,19);
     write ('�����Ŀ');
     gotoxy(5,20);
     write ('� ���');
     gotoxy(5,21);
     write ('�JOKER�');
     gotoxy(5,22);
     write ('�   �');
     gotoxy(5,23);
     write ('�������');

     end

  else if (length(vet_ajudas)=1) then
          begin
          textbackground(white);
          textcolor(black);
          gotoxy(5,19);
          write ('�����Ŀ');
          gotoxy(5,20);
          write ('� ���');
          gotoxy(5,21);
          write ('� �1  �');
          gotoxy(5,22);
          write ('�   �');
          gotoxy(5,23);
          write ('�������');
          end

  else if (length(vet_ajudas)=2) then
          begin
          textbackground(white);
          textcolor(black);
          gotoxy(5,19);
          write ('�����Ŀ');
          gotoxy(5,20);
          write ('� ���');
          gotoxy(5,21);
          write ('� �2  �');
          gotoxy(5,22);
          write ('�   �');
          gotoxy(5,23);
          write ('�������');
          end

  else if (length(vet_ajudas)=3) then
          begin
          textbackground(white);
          textcolor(black);
          gotoxy(5,19);
          write ('�����Ŀ');
          gotoxy(5,20);
          write ('� ���');
          gotoxy(5,21);
          write ('� �3  �');
          gotoxy(5,22);
          write ('�   �');
          gotoxy(5,23);
          write ('�������');
          end;

end;
////////////////////////////AJUDA PLACAS/////////////////////////////////////
////////////////////////////AJUDA PLACAS/////////////////////////////////////
procedure hamulekote3;

begin
 {Aqui se faz o desenho das plaquinhas da plateia.}

 gotoxy(6,17);
 write('A');
 gotoxy(4,18);
 write('���Ŀ');
 gotoxy(4,19);
 write('�   �');
 gotoxy(4,20);
 write('�����');

 gotoxy(12,17);
 write('B');
 gotoxy(10,18);
 write('���Ŀ');
 gotoxy(10,19);
 write('�   �');
 gotoxy(10,20);
 write('�����');

 gotoxy(6,21);
 write('C');
 gotoxy(4,22);
 write('���Ŀ');
 gotoxy(4,23);
 write('�   �');
 gotoxy(4,24);
 write('�����');

 gotoxy(12,21);
 write('D');
 gotoxy(10,22);
 write('���Ŀ');
 gotoxy(10,23);
 write('�   �');
 gotoxy(10,24);
 write('�����');

 {E aqui se escreve as porcentagens que ir�o dentro de cada plaquinha que foi
 definido no escopo do programa.}
 gotoxy(5,19);
 write(vet_ajudas[0]);
 gotoxy(11,19);
 write(vet_ajudas[1]);
 gotoxy(5,23);
 write(vet_ajudas[2]);
 gotoxy(11,23);
 write(vet_ajudas[3]);

end;

///////////////////////////ESCOLHA CARTA USUARIO/////////////////////////////
///////////////////////////ESCOLHA CARTA USUARIO/////////////////////////////

procedure escolha;

const x1=22;
      y1=14;

begin

  repeat
  textbackground(blue);
  clrscr;

  textcolor(yellow);
  gotoxy(x1+10,11);
  write('Escolha sua carta.');

  textcolor(green);
  gotoxy(x1+3,y1-1);
  write('1');

  textbackground(white);
  textcolor(red);
  gotoxy(x1,y1);
  write('XXXXXXX');
  gotoxy(x1,y1+1);
  write('XXXXXXX');
  gotoxy(x1,y1+2);
  write('XXXXXXX');
  gotoxy(x1,y1+3);
  write('XXXXXXX');
  gotoxy(x1,y1+4);
  write('XXXXXXX');


  textbackground(blue);
  textcolor(green);
  gotoxy(x1+13,y1-1);
  write('2');

  textbackground(white);
  textcolor(red);
  gotoxy(x1+10,y1);
  write('XXXXXXX');
  gotoxy(x1+10,y1+1);
  write('XXXXXXX');
  gotoxy(x1+10,y1+2);
  write('XXXXXXX');
  gotoxy(x1+10,y1+3);
  write('XXXXXXX');
  gotoxy(x1+10,y1+4);
  write('XXXXXXX');


  textbackground(blue);
  textcolor(green);
  gotoxy(x1+23,y1-1);
  write('3');

  textbackground(white);
  textcolor(red);
  gotoxy(x1+20,y1);
  write('XXXXXXX');
  gotoxy(x1+20,y1+1);
  write('XXXXXXX');
  gotoxy(x1+20,y1+2);
  write('XXXXXXX');
  gotoxy(x1+20,y1+3);
  write('XXXXXXX');
  gotoxy(x1+20,y1+4);
  write('XXXXXXX');


  textbackground(blue);
  textcolor(green);
  gotoxy(x1+33,y1-1);
  write('4');

  textbackground(white);
  textcolor(red);
  gotoxy(x1+30,y1);
  write('XXXXXXX');
  gotoxy(x1+30,y1+1);
  write('XXXXXXX');
  gotoxy(x1+30,y1+2);
  write('XXXXXXX');
  gotoxy(x1+30,y1+3);
  write('XXXXXXX');
  gotoxy(x1+30,y1+4);
  writeln('XXXXXXX');

  textbackground(blue);
  textcolor(yellow);

  readln(cartinha);
  until(cartinha>=1) and (cartinha<=4);

end;

////////////////////////////////JOGO/////////////////////////////////////////
////////////////////////////////JOGO/////////////////////////////////////////

procedure jogo;

type perguntas = record
					pergunta: string;
					resposta: char;
					alt1:string;
					alt2:string;
					alt3:string;
					alt4:string;
				end;
              {Aqui � feito um registro onde crio o meu tipo de variavel que
              se chama perguntas que receber� depois a pergunta, a resposta
              certa e as alternativas.}

var   geral: array of perguntas;  {este � cria um vetor dinamico que recebe
                                   os campos que foram citados acima.}

      materia:array [1..4] of char; {este recebe as materias que o usuario deseja}

      p:array[1..13] of integer; {aqui receber� 10 numeros aleatorios diferentes}

      usu:array[1..13] of char; {aqui recebera as respostas fornecidas pelo usuario}

      mat,mat2,acertou:boolean; {esta variavel auxilia na checagem do usuario digitar materias
                    repetidas}

      reds:string; {e esta variavel recebe a tecla que o usuario digitou que sera
                   convertida em sua op��o caso seja valida.}

      texto:textfile; {esta receber� o que esta dentro dos arquivos}

      q:char; {variavel de auxilio}

      qtd,j,k,cont,passado,cont2,rand,cartas_cont,aux2:integer; {variaveis de auxilio}

      premio,perdeu:longint; {variaveis para definir o premio do usuario}

begin
 randomize;

   textbackground (blue);
   clrscr;
   qtd:=0;

   materia[2]:='f';
   materia[3]:='j';
   materia[4]:='g';
   {aqui se define valores para mat�rias para quanto o usuario for escolher
    n�o haver possibilidade de ter um lixo de mem�ria e atrapalhar a checagem}


   for i:=1 to 4 do
       begin

       repeat

        clrscr;
        textcolor(white);
        writeln('Para encerrar o recebimento de mat�rias digite P');
        writeln;
        writeln;
        writeln ('Escolha a ',i,'� mat�ria desejada.');
        writeln;
        writeln ('a: Portugues.');
        writeln ('b: Matem�tica.');
        writeln ('c: Ingl�s.');
        writeln ('d: Programa��o.');
        readln (materia[i]);

        case materia[i] of

          'A': materia[i]:='a';
          'B': materia[i]:='b';
          'C': materia[i]:='c';
          'D': materia[i]:='d';
          'P': materia[i]:='p';

        end;

        if materia[i]='p' then
        break;

        mat:=true;
            {aqui se faz a checagem se a materia que o usuario digitou � repetida
            ou n�o.}
           for j:=1 to i-1 do
               if (materia[i]=materia[j]) then
                  mat:=false;

           if mat then
             qtd:=qtd+1;


      until (((materia[i]='a') or (materia[i]='b') or (materia[i]='c') or (materia[i]='d'))
             and (mat));

       if (materia[i]='p') and (qtd>=1) then
         break;

    end;

      setlength(geral,20*qtd);
      {aqui esta sendo definido o tamanho do vetor.}

            {aqui esta se gerando 13 numeros aleatorios diferentes.}
          for i:=1 to 13 do
            begin

               repeat

                    p[i]:=random(20*qtd);
                     cont:=0;

                      for j:=1 to 13 do
                         begin
                            if p[i]<>p[j] then
                               cont:=cont+1;

                         end;


               until (cont=12);
            end;

    clrscr;

  {esse i recebe -1 porque ele ser� a variavel de auxilio que ler� o texto
  dentro do arquivo e como o vetor dinamico � inicialmente indexado com 0
  eu tenho que iniciar ela com -1 e dentro do la�o de repeti��o � s� ir
  acrescentando 1 na variavel de controle.}
  i:=-1;

  for j:=1 to qtd do
  begin
   {aqui se l� a(s) op��es que o usuario digitou e define qual arquivo ser�
   aberto.}
     case materia[j] of

      'a': q:='1';

      'b': q:='2';

      'c': q:='3';

      'd': q:='4';
     end;
      //se abre o arquivo
      assign(texto,'txt'+q+'.txt');
            //o coloca no inicio.
            reset (texto);
              {e come�a a se ler os textos que est�o dentro dele at� se chegar
              no fim do arquivo.}
              while not EOF (texto) do
                 begin
                 i:=i+1;
                 readln(texto,geral[i].pergunta);
                 readln(texto,geral[i].resposta);
                 readln(texto,geral[i].alt1);
                 readln(texto,geral[i].alt2);
                 readln(texto,geral[i].alt3);
                 readln(texto,geral[i].alt4);
                 end;
            //se fecha o arquivo.
            close(texto);

  end;

 //teste para escrever todas as perguntas e respostas e ver se tem erros.
                 {for i:=0 to 19 do
                 begin
                 writeln(geral[i].pergunta);
                 writeln(geral[i].resposta);
                 writeln(geral[i].alt1);
                 writeln(geral[i].alt2);
                 writeln(geral[i].alt3);
                 writeln(geral[i].alt4);
                 readkey;
                 end;}

 clrscr;

 {aqui se zera todas essas variaveis para as checagens que forem feitas dentro
 do la�o das perguntas funcionarem.}
 premio:=0;
 qtd:=0;
 passado:=0;
 perdeu:=0;
 cartas_cont:=0;
 aux2:=0;
 cont2:=0;

  {se faz um la�o de 13 perguntas pois ser� a quantidade maxima que o
  usuario podera responder.}
 for i:=1 to 13 do
    begin
    cont:=61;  //se coloca o contador come�ando do 61.

    {esse if funciona para caso o usuario tenha escolhido a ajuda de pular.
    caso n�o tivesse esse if a mensagem que o usuario perdeu ou ganhou n�o
    seria apresentada.}
    if qtd<>passado then
    passado:=passado+1;

    {esse outro a mesma coisa porem ele aumentaria os acertos do usuario mesmo
    se ele pulasse a pergunta.}
    if acertou then
    cont2:=cont2+1;

    //se coloca a boolean como false para caso do usuario pular n�o haver diferen�a.
    acertou:=false;

    repeat
           {esta parte � que apresenta ao usuario as alternativas e a pergunta.}
              textbackground(blue);
              clrscr;
              textbackground(red);
              textcolor (yellow);

              {esses la�os for estao ai para preencher de vermelho onde as
              respostas e perguntas irao aparecer.}
              for j:=1 to 80 do
               begin
                 for k:=1 to 2 do
                 begin
                 gotoxy(j,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
              gotoxy(1,1);
              write (geral[p[i]].pergunta);

              for j:=1 to 80 do
               begin
                 for k:=4 to 5 do
                 begin
                 gotoxy(j,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
              gotoxy(1,4);
              write (geral[p[i]].alt1);

              for j:=1 to 80 do
               begin
                 for k:=7 to 8 do
                 begin
                 gotoxy(j,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
              gotoxy(1,7);
              write (geral[p[i]].alt2);

              for j:=1 to 80 do
               begin
                 for k:=10 to 11 do
                 begin
                 gotoxy(j,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
              gotoxy(1,10);
              write (geral[p[i]].alt3);

              for j:=1 to 80 do
               begin
                 for k:=13 to 14 do
                 begin
                 gotoxy(j,k);
                 textbackground(red);
                 write (' ');
                 end;
               end;
              gotoxy(1,13);
              write (geral[p[i]].alt4);
              ajudas;  //aqui se chama o procedure que mostrara as ajudas.

              {na hora de escrever o arquivo est� indexado outro vetor que � o vetor
         que foi definido na parte de cima do codigo onde foi gerado os treze
         numeros aleatorios. Desta maneira as perguntas ser�o apresentadas de
         forma aleat�ria.}

              //aqui se chama a ajuda dos universitarios.
              if (aux=1) then
                 begin
                 aux:=2;
                 hamulekote;
                 end;

              //ajuda das cartas.
              if (cartas_cont=1) then
                 begin
                 cartas_cont:=cartas_cont+1;
                 hamulekote2;
                 end;

              //ajuda das placas.
              if (aux2=1) then
                 begin
                 aux2:=2;
                 hamulekote3;
                 end;


        {Nessa parte do codigo est� o contador. Esse contador s� ira parar quando
        o usuario digitar uma op��o valida ou quando ele chegar a 0.}
       repeat
         while not(keypressed) do
                begin
                if cont>=10 then
                  begin
                  delay(1000);
                  cont:=cont-1;
                  gotoxy(40,15);
                  textcolor (red);
                  textbackground (white);
                  writeln (cont);
                  end

                  else if cont <10 then
                    begin
                       delay(1000);
                       cont:=cont-1;
                       gotoxy(41,15);
                       textcolor (red);
                       textbackground (white);
                       writeln (cont);
                       gotoxy (40,15);
                       write ('0');


                      if cont=0 then
                      begin
                      mat:=false;
                      break;
                      end;
                    end;
                end;

      {Aqui se coloca um la�o de repeti��o que ira rodar sempre uma vez. Porem caso
      a variavel boolean que faz parte do contador for falsa e isso so ira
      acontecer quando o contador chegar a 0, ele ira sair deste la�o
      e n�o execurar� o readkey.}
          if (mat=false) then
             break;

          reds:=readkey;
       until (i=i);

       {Aqui � definido caso seja uma op�ao valida os valores da op��o do usuario
        e as ajudas que ele tem direito a escolher.}

        if (reds=#97) or (reds=#65) then
           usu[i]:='a'

        else if (reds=#98) or (reds=#66) then
                usu[i]:='b'

        else if (reds=#99) or (reds=#67) then
                usu[i]:='c'

        else if (reds=#100) or (reds=#68) then
                usu[i]:='d'

        else if (reds=#49) and (ajudas[1]) then //ajuda dos universitarios
                begin
                ajudas[1]:=false; {se da o valor de falso para a ajuda n�o
                                 poder ser reutilizada.}
                rand:=random(4)+1; {se gera um numero aleatorio para definir
                                    como sera mostrado ao usuario a ajuda.}
                setlength(vet_ajudas,3); {se define o tamanho do vetor como 3}
                aux:=1; {e a variavel de controle recebe 1 para a ajuda poder
                         ser mostrada.}

                   if rand=1 then//n� aleatorio seja 1 sera mostrado corretamente
                     begin
                     vet_ajudas[0]:=geral[p[i]].resposta;
                     vet_ajudas[1]:=geral[p[i]].resposta;
                       repeat
                       vet_ajudas[2]:=chr(random(4)+97);
                       until (vet_ajudas[2]<>geral[p[i]].resposta);
                     end


                   else if rand=2 then {n� aleatorio 2 sera mostrado corretamente
                                        porem em uma ordem diferente.}
                        begin
                        vet_ajudas[0]:=geral[p[i]].resposta;
                        vet_ajudas[2]:=geral[p[i]].resposta;
                           repeat
                           vet_ajudas[1]:=chr(random(4)+97);
                           until (vet_ajudas[1]<>geral[p[i]].resposta);
                        end

                   else if rand=3 then{n� aleatorio 3 sera mostrado corretamente
                                        porem em uma ordem diferente.}
                        begin
                        vet_ajudas[1]:=geral[p[i]].resposta;
                        vet_ajudas[2]:=geral[p[i]].resposta;
                           repeat
                           vet_ajudas[0]:=chr(random(4)+97);
                           until (vet_ajudas[0]<>geral[p[i]].resposta);
                        end

                   else if rand=4 then //n� 4 sera mostrado incorretamente.
                        begin
                        vet_ajudas[1]:=geral[p[i]].resposta;
                           repeat
                           vet_ajudas[2]:=chr(random(4)+97);
                           until (vet_ajudas[2]<>geral[p[i]].resposta);
                        vet_ajudas[0]:=vet_ajudas[2];
                        end;
                end

        else if (reds=#50) and (ajudas[2]) then //ajuda das cartas
                begin
                ajudas[2]:=false; //impossibilita-se de usar a ajuda novamente.
                cartas_cont:=1; //variavel para executar o procedimento.

                for j:=1 to 4 do
                r[j]:=-1;
                {se define todos os numeros como -1 para o contador do
                gerador de numeros aleatorios abaixo funcionar corretamente}

                for j:=1 to 4 do
                  begin

                    repeat

                     r[j]:=random(4);//aqui se sorteia 4 numeros aleatorios
                      cont_cartinha:=0;

                       for k:=1 to 4 do
                           begin
                           if r[k]<>r[j] then
                              cont_cartinha:=cont_cartinha+1;

                           end;
            //esse repeat n vai sair enquanto todos os n�o forem diferentes.
                    until (cont_cartinha=3);
                  end;

                  escolha; {se chama o procedure para o usuario escolher a carta
                           desejada}

                  cartas:=r[cartinha]; {aqui se coloca uma variavel para receber
                                        o numero aleat�rio que o usuario decidiu
                                        anteriormente.}

                 if cartas=1 then {Caso o numero seja 1 se define qual a
                              op��o errada que sera apagada.}
                   begin
                   setlength(vet_ajudas,1);

                     repeat
                     rand:=random(4)+97;
                     vet_ajudas[0]:=chr(rand);
                     until (vet_ajudas[0]<>geral[p[i]].resposta);
                   end

                 else if cartas=2 then {Caso o numero seja 2 se define as op�oes
                                   que serao apagadas e se trata para n�o sair
                                   a mesma op��o.}
                    begin
                      setlength(vet_ajudas,2);

                       repeat
                       rand:=random(4)+97;
                       vet_ajudas[0]:=chr(rand);
                       mat2:=false;

                         while not(mat2) do
                         begin
                         rand:=random(4)+97;
                         vet_ajudas[1]:=char(rand);

                         if vet_ajudas[0]<>vet_ajudas[1] then
                         mat2:=true;
                         end;

                     until (vet_ajudas[0]<>geral[p[i]].resposta) and (vet_ajudas[1]<>geral[p[i]].resposta);
                    end

                 else if cartas=3 then  {E caso o numero seja 3 se apaga todas as
                                      incorretas entao basta fazer o tratamento
                                      para n�o apagar a certa e n�o apagar nenhuma
                                      repetida.}
                     begin
                       setlength(vet_ajudas,3);

                        repeat
                        rand:=random(4)+97;
                        vet_ajudas[0]:=chr(rand);
                        mat2:=false;

                            while not(mat2) do
                            begin
                            rand:=random(4)+97;
                            vet_ajudas[1]:=char(rand);

                            if vet_ajudas[0]<>vet_ajudas[1] then
                            mat2:=true;
                            end;

                                mat2:=false;

                                while not (mat2) do
                                begin
                                rand:=random(4)+97;
                                vet_ajudas[2]:=char(rand);

                                if (vet_ajudas[1]<>vet_ajudas[2]) and (vet_ajudas[0]<>vet_ajudas[2]) then
                                mat2:=true;
                                end;


                        until (vet_ajudas[0]<>geral[p[i]].resposta) and (vet_ajudas[1]<>geral[p[i]].resposta)
                              and (vet_ajudas[2]<>geral[p[i]].resposta);
                     end;

                 //escolha;

                end

        else if (reds=#51) and (ajudas[3]) then //ajuda das placas
                begin
                ajudas[3]:=false; //impossibilita-se de poder usar a ajuda de novo.
                rand:=random(2)+1; //se testa a sorte do usuario.
                setlength(vet_ajudas,4); //se define o tamanho para poder receber as % .
                aux2:=1; //para a ajuda poder ser apresentada.

                 if rand=1 then
                    begin
                   {caso o numero seja 1 a ajuda das placas que ser�o mostrada
                   ser�o verdadeiras e se define a porcentagem de acordo com cada
                   letra.}
                      if 'a'=geral[p[i]].resposta then
                        begin
                        vet_ajudas[0]:='35%';
                        vet_ajudas[1]:='20%';
                        vet_ajudas[2]:='15%';
                        vet_ajudas[3]:='30%';
                        end

                      else if 'b'=geral[p[i]].resposta then
                            begin
                            vet_ajudas[0]:='25%';
                            vet_ajudas[1]:='40%';
                            vet_ajudas[2]:='20%';
                            vet_ajudas[3]:='15%';
                            end

                      else if 'c'=geral[p[i]].resposta then
                            begin
                            vet_ajudas[0]:='25%';
                            vet_ajudas[1]:='20%';
                            vet_ajudas[2]:='30%';
                            vet_ajudas[3]:='25%';
                            end

                      else if 'd'=geral[p[i]].resposta then
                            begin
                            vet_ajudas[0]:='13%';
                            vet_ajudas[1]:='23%';
                            vet_ajudas[2]:='17%';
                            vet_ajudas[3]:='37%';
                            end
                    end

                   {caso o numero aleatorio seja 2 se define as porcentagem que
                   ser�o apresentadas de forma errada .}
                 else if rand=2 then
                         begin
                            if 'a'=geral[p[i]].resposta then
                              begin
                              vet_ajudas[0]:='25%';
                              vet_ajudas[1]:='20%';
                              vet_ajudas[2]:='30%';
                              vet_ajudas[3]:='25%';
                              end

                            else if 'b'=geral[p[i]].resposta then
                                   begin
                                   vet_ajudas[0]:='93%';
                                   vet_ajudas[1]:='2%';
                                   vet_ajudas[2]:='2%';
                                   vet_ajudas[3]:='3%';
                                   end

                            else if 'c'=geral[p[i]].resposta then
                                   begin
                                   vet_ajudas[0]:='21%';
                                   vet_ajudas[1]:='30%';
                                   vet_ajudas[2]:='20%';
                                   vet_ajudas[3]:='29%';
                                   end

                            else if 'd'=geral[p[i]].resposta then
                                   begin
                                   vet_ajudas[0]:='20%';
                                   vet_ajudas[1]:='30%';
                                   vet_ajudas[2]:='30%';
                                   vet_ajudas[3]:='20%';
                                   end;
                         end;

                end

        {nas ajudas de pular se acrescenta um na variavel qtd. E isso serve para
        que as mensagens de que o usuario ganhou ou perdeu n�o sejam apresentadas.}
        else if (reds=#52) and (ajudas[4]) then //ajuda de pular
                begin
                ajudas[4]:=false;
                qtd:=qtd+1;
                break;
                end

        else if (reds=#53) and (ajudas[5]) then //ajuda de pular
                begin
                ajudas[5]:=false;
                qtd:=qtd+1;
                break;
                end

        else if (reds=#54) and (ajudas[6]) then //ajuda de pular
                begin
                ajudas[6]:=false;
                qtd:=qtd+1;
                break;
                end;


    until (((usu[i] = 'a') or (usu[i] = 'b') or (usu[i] = 'c') or (usu[i] = 'd'))
          or (cont<=0) );

      {Aqui � definido o premio do usuario de acordo com quantas respostas certas
      ele deu.}

           if cont2=1 then
           begin
           perdeu:=0;
           premio:=1000;
           end

           else if cont2=2 then
           begin
           perdeu:=500;
           premio:=2000;
           end

           else if cont2=3 then
           begin
           perdeu:=1000;
           premio:=5000;
           end

           else if cont2=4 then
           begin
           perdeu:=2500;
           premio:=10000;
           end

           else if cont2=5 then
           begin
           perdeu:=5000;
           premio:=50000;
           end

           else if cont2=6 then
           begin
           perdeu:=25000;
           premio:=100000;
           end

           else if cont2=7 then
           begin
           perdeu:=50000;
           premio:=200000;
           end

           else if cont2=8 then
           begin
           perdeu:=100000;
           premio:=500000;
           end

           else if cont2=9 then
           begin
           perdeu:=250000;
           premio:=750000;
           end

           else if cont2=10 then
           begin
           perdeu:=400000;
           premio:=1000000;
           end;

      {Caso a resposta do usuario  seja diferente da lida no arquivo o programa
      ira mostrar que o usuario perdeu lhe mostrar� o premio recebido e quebrar�
      o la�o e partir� pro inicio do jogo.}
   if (qtd=passado) then
    begin

      if (usu[i] <> geral[p[i]].resposta) or (cont<=0) then
         begin
         textbackground (blue);
         textcolor(lightgreen);
         clrscr;
         writeln ('Voce errou! Seu premio � R$',perdeu,' vales caf�.');
         //sndplaysound(caminho+':\Show do milhao\perdeu.wav',SND_ASYNC+SND_NOSTOP);
         readkey;
         break;
         end

      {Caso o usuario n�o erre o programa ira funcionar normalmente e mostrar� a
      mensagem que o usuario ganhou.}
      else begin
           textbackground (blue);
           //sndplaysound(caminho+':\Show do milhao\certa.wav',SND_ASYNC+SND_NOSTOP);
           textcolor(lightgreen);
           writeln ('Voc� acertou e recebe R$',premio,' em vales cafe! Boa doido issae man.');
           readkey;
           acertou:=true;
           end;

     {como foi colocado um for de tamanho 13 e o usuario tem somente que acertar
     10 perguntas se ele acertar as 10 e n�o usar nenhuma ajuda de pular o programa
     iria continuar para isso se cria esse if que ira parar o programa caso o
     usuario tenha acertado 10 perguntas.}
     if cont2=10 then
     break;

    end;

 end;

end;

////////////////////////////////ENTRADA//////////////////////////////////////
////////////////////////////////ENTRADA//////////////////////////////////////
procedure entrada;
Begin
     {Aqui se faz o desenho da tela de apresenta��o.}
     textbackground(blue);
     textcolor(yellow);
     clrscr;
     gotoxy(17,1);
     write('����  �   �  ����  �  �  �        ���   ������ ');
     gotoxy(17,2);
     write('�     �   �  �  �  �  �  �        �  �  �    � ');
     gotoxy(17,3);
     write('�     �   �  �  �  �  �  �        �   � �    � ');
     gotoxy(17,4);
     write('����  �����  �  �  �  �  �        �   � ������ ');
     gotoxy(17,5);
     write('   �  �   �  �  �  �  �  �        �   � �    � ');
     gotoxy(17,6);
     write('   �  �   �  �  �  �  �  �        �  �  �    � ');
     gotoxy(17,7);
     write('����  �   �  ����   �� ��         ���   �    � ');
     gotoxy(9,11);
     write('���� ����  ���� �����  ����  ����� ��� ��� ����� ����� ����� ����');
     gotoxy(09,12);
     write('�  � �  �  �  � �    � �  �  �   � �  �  � �   � �   � �   � �  �');
     gotoxy(09,13);
     write('�  � �  �  �  � �      �  �  �   � �  �  � �   � �     �   � �  �');
     gotoxy(09,14);
     write('���� ����  �  � �  ��� ����  ����� �  �  � ����� �     ����� �  �');
     gotoxy(09,15);
     write('�    ��    �  � �    � ��    �   � �  �  � �   � �     �   � �  �');
     gotoxy(09,16);
     write('�    � �   �  � �    � � �   �   � �  �  � �   � �   � �   � �  �');
     gotoxy(09,17);
     write('�    �  �  ����  ����  �  �  �   � �  �  � �   � ����� �   � ����');

     gotoxy(63,9);
     write('����  �');    {til do a de programa��o}
     gotoxy(63,10);
     write('�  ���� ');

     gotoxy(58,18);
     write('  �  ');
     gotoxy(58,19);
     write('���  ');         {cedilha do c de programa��o}

     gotoxy(32,21);
     write ('Digite 1 para iniciar.');
     gotoxy(30,22);
     write ('Digite 2 para instru��es.');
     gotoxy(33,23);
     writeln ('Digite 3 para sair.');
end;

//////////////////////////////INSTRU�AO///////////////////////////////////////
//////////////////////////////INSTRU�AO///////////////////////////////////////
 procedure instrucao;
    begin
    textbackground(blue);
    clrscr;
    write('Pepare-se para participar do jogo que � o maior sucesso da TV do sil�cio!');
    write(' O showda programa��o foi montado para bacharelandos em Ci�ncia da Computa��o,');
    write('que      querem testar os seus conhecimentos. Conseguir� voc� alcan�ar o pr�mio de       1000000R$ em vale caf�, ');
    write('que valem mais do que dinheiro na lanchonete do Roney?');
    readkey;

    end;

////////////////////////////////INICIO///////////////////////////////////////
////////////////////////////////INICIO///////////////////////////////////////
begin
 randomize;

 //sndplaysound(caminho+':\Show do milhao\tema.wav',SND_ASYNC);

 repeat

     repeat
     {se coloca o vetor das ajudas todo recebendo true para caso o usuario
     queira jogar de novo n�o ter que fechar o programa para as ajudas
     reiniciarem.}
     for i:=1 to 6 do
     ajudas[i]:=true;

     clrscr;
     entrada;
     readln(op);

     case op of

       1:jogo;
       2:instrucao;
       3:;

     end;

     until ((op>=1) and (op<=3));
 until (op=3);

end.
