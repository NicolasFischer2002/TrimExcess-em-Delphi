program TrimExcess_Delphi;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
