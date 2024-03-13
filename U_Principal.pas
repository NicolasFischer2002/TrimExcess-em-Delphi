unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Btn_TrimExcess: TButton;
    procedure Btn_TrimExcessClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{
    Listas sempre alocam mais mem�ria do que precisam, ou seja, sempre alocam 
 mais espa�o do que est�o usando. Isso ocorre para evitar o redimensionamento
 constante da estrutura, que ocasionaria em um custo maior de processamento.

    Para driblar esse uso excessivo de mem�ria, ap�s abastecer a lista e se 
 certificar de que a lista manter� este tamanho at� o seu fim, pode ser utilizado
 um m�todo conhecido como TrimExcess, para igualar o tamanho da lista com o 
 n�mero de elementos dela.

    Este m�todo - TrimExcess - � bastante �til em situa��es em que a lista 
 foi abastecida por completo ou teve seu tamanho setado de antem�o, e ap�s 
 isso itens foram removidos ou n�o adicionados a ponto de o n�mero real de 
 itens n�o se aproximar da capacidade da lista, ocasionando em uma mem�ria ociosa
 que pode ser liberada.
}

procedure TForm1.Btn_TrimExcessClick(Sender: TObject);
Var
   ListaInteiros     : TList<Integer>;
   CapacidadeInicial : Integer;
   CapacidadeFinal   : Integer;
   Comprimento       : Integer;
   I                 : Integer;
begin
     Try
        Try
           ListaInteiros := TList<Integer>.Create();

           // Abastecendo a lista
           for I := 1 to 2000 do
               ListaInteiros.Add(I);

           // O quanto de espa�o que a lista alocou para evitar o
           // redimensionamento constante
           CapacidadeInicial  := ListaInteiros.Capacity;

           // O espa�o real que a lista est� ocupando
           Comprimento := ListaInteiros.Count;

           // Aplicando o TrimExcess
           // TrimExcess: remove o espa�o extra n�o utilizado de uma lista
           ListaInteiros.Capacity := ListaInteiros.Count;
           CapacidadeFinal := ListaInteiros.Capacity;
        
        Except
          on Erro: Exception do
          ShowMessage('Erro inesperado: ' + Erro.Message);
        End;
     
     Finally
        FreeAndNil(ListaInteiros);
        ShowMessage('TrimExcess aplicado com sucesso! Espa�o alocado antes do TrimExcess: '
                    + CapacidadeInicial.ToString() + ' Espa�o alocado p�s TrimExcess: '
                    + CapacidadeFinal.ToString());
     End;
end;

end.
