program AumentoSalario;

uses crt;

var
    opcao, codigoCargo: integer;
    salario, percentual, novoSalario, diferenca: real;

{ Procedimento para mostrar o menu principal }
procedure MostrarMenuPrincipal;
begin
    clrscr; { Limpa a tela }
    gotoxy(10, 5); { Posiciona o cursor }
    writeln('=-=--==-=-=-=-=-=-=-=-=-=-=-=-=| Calcule o sal�rio |=-=-=-=-=-=-=-=-==-=-=-=-=');
    writeln;
    writeln('  (1) - Calcular Aumento            (2) - Sair do Aplicativo');
    write('Escolha uma opcao (1-2): ');
end;

{ Procedimento para mostrar o menu de cargos }
procedure MostrarMenuCargos;
begin
    clrscr; { Limpa a tela }
    gotoxy(10, 5); { Posiciona o cursor }
    writeln('=-=--==-=-=-=-=-=-=-=-=-=-=-=-=| Escolha o Cargo |=-=-=-=-=-=-=-=-==-=-=-=-=');
    writeln;
    writeln('  (1) - Gerente                (2) - Engenheiro');
    writeln('  (3) - T�cnico em Inform�tica (4) - Outro Cargo');
    write('Escolha o c�digo do cargo (1-4): ');
end;

{ Procedimento para calcular o aumento de sal�rio }
procedure CalcularAumentoSalario(codigoCargo: integer; salario: real);
begin
    case codigoCargo of
        1: percentual := 0.10; { 10% para Gerente }
        2: percentual := 0.20; { 20% para Engenheiro }
        3: percentual := 0.30; { 30% para T�cnico em Inform�tica }
    else
        percentual := 0.40; { 40% para outros cargos }
    end;

    novoSalario := salario + (salario * percentual);
    diferenca := novoSalario - salario;

    writeln('Sal�rio Antigo: R$', salario:0:2);
    writeln('Novo Sal�rio: R$', novoSalario:0:2);
    writeln('Diferen�a: R$', diferenca:0:2);
end;

{ Bloco principal do programa }
begin
    repeat
        MostrarMenuPrincipal;
        readln(opcao);

        case opcao of
            1: begin
                MostrarMenuCargos;
                readln(codigoCargo);

                { Mapear os c�digos de cargos para valores internos }
                case codigoCargo of
                    1: codigoCargo := 1; { Gerente }
                    2: codigoCargo := 2; { Engenheiro }
                    3: codigoCargo := 3; { T�cnico em Inform�tica }
                    4: codigoCargo := 4; { Outro Cargo }
                else
                    codigoCargo := 0; { Valor inv�lido }
                end;

                if codigoCargo <> 0 then
                begin
                    write('Digite o sal�rio atual: R$');
                    readln(salario);
                    CalcularAumentoSalario(codigoCargo, salario);
                end
                else
                begin
                    writeln('C�digo de cargo inv�lido.');
                end;

                writeln('Pressione Enter para continuar...');
                readln; { Aguarda o usu�rio pressionar Enter }
            end;
            2: begin
                writeln('Saindo do aplicativo...');
                delay(1000); { Pausa por 1 segundo }
            end;
        else
            writeln('Op��o inv�lida. Tente novamente.');
        end;

    until opcao = 2;
end.

