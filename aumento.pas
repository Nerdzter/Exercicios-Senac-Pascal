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
    writeln('=-=--==-=-=-=-=-=-=-=-=-=-=-=-=| Calcule o salário |=-=-=-=-=-=-=-=-==-=-=-=-=');
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
    writeln('  (3) - Técnico em Informática (4) - Outro Cargo');
    write('Escolha o código do cargo (1-4): ');
end;

{ Procedimento para calcular o aumento de salário }
procedure CalcularAumentoSalario(codigoCargo: integer; salario: real);
begin
    case codigoCargo of
        1: percentual := 0.10; { 10% para Gerente }
        2: percentual := 0.20; { 20% para Engenheiro }
        3: percentual := 0.30; { 30% para Técnico em Informática }
    else
        percentual := 0.40; { 40% para outros cargos }
    end;

    novoSalario := salario + (salario * percentual);
    diferenca := novoSalario - salario;

    writeln('Salário Antigo: R$', salario:0:2);
    writeln('Novo Salário: R$', novoSalario:0:2);
    writeln('Diferença: R$', diferenca:0:2);
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

                { Mapear os códigos de cargos para valores internos }
                case codigoCargo of
                    1: codigoCargo := 1; { Gerente }
                    2: codigoCargo := 2; { Engenheiro }
                    3: codigoCargo := 3; { Técnico em Informática }
                    4: codigoCargo := 4; { Outro Cargo }
                else
                    codigoCargo := 0; { Valor inválido }
                end;

                if codigoCargo <> 0 then
                begin
                    write('Digite o salário atual: R$');
                    readln(salario);
                    CalcularAumentoSalario(codigoCargo, salario);
                end
                else
                begin
                    writeln('Código de cargo inválido.');
                end;

                writeln('Pressione Enter para continuar...');
                readln; { Aguarda o usuário pressionar Enter }
            end;
            2: begin
                writeln('Saindo do aplicativo...');
                delay(1000); { Pausa por 1 segundo }
            end;
        else
            writeln('Opção inválida. Tente novamente.');
        end;

    until opcao = 2;
end.

