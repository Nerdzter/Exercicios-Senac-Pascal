program AcessoInternet;

uses crt;

var
    codigo: integer;
    senha: string;
    acessoPermitido: boolean;

// Montando procedimento
procedure MostrarMenuPrincipal;
begin
    clrscr; { Limpa a tela }
    gotoxy(10, 5); { Posiciona o cursor }
    writeln('=-=--==-=-=-=-=-=-=-=-=-=-=-=-=| Curso Inform�tica |=-=-=-=-=-=-=-=-==-=-=-=-=');
    writeln;
    writeln(' Bem-vindo(a) ao programa do Curso de Inform�tica Senac-MG.');
    writeln(' Antes de voc� entrar, eu preciso saber:');
    writeln;
    writeln('                        1 -> Professor           2 -> Aluno'); 
    writeln;
    writeln;
    writeln('                                (0) - Sair do Programa');
    write('Escolha uma op��o (0-2): ');
end;





// codigo normal 
begin
    repeat
        MostrarMenuPrincipal;   // chamada do procedimento
        readln(codigo);

        case codigo of
            1: begin
            	 clrscr; 
                write('Digite a senha do Professor: ');
                readln(senha);
                if senha = 'prof' then
                    acessoPermitido := true
                else
                    acessoPermitido := false;

                if acessoPermitido then 
                  begin
                    clrscr;
                    writeln('Ok, voc� � um professor.');
                    writeln('Acesso a internet permitido.');
                  end
                else
                    writeln('Senha incorreta. Acesso negado.');

                writeln('Pressione Enter para continuar...');
                readln; { Aguarda o usu�rio pressionar Enter }
            end;
            2: begin
                clrscr;  
                write('Digite a senha do Aluno: ');
                readln(senha);
                if senha = 'alu' then
                    acessoPermitido := true
                else
                    acessoPermitido := false;

                if acessoPermitido then
                    writeln('Acesso permitido.')
                else
                    writeln('Senha incorreta. Acesso negado.');

                writeln('Pressione Enter para continuar...');
                readln; { Aguarda o usu�rio pressionar Enter }
            end;
            0: begin
                writeln('Saindo do programa...');
                delay(1000); { Pausa por 1 segundo }
            end;
        else
            writeln('Op��o inv�lida. Tente novamente.');
        end;

    until codigo = 0;
end.

