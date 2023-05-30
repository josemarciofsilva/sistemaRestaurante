program RestaurantSystem;

uses
  Vcl.Forms,
  Login in 'Login.pas' {frmLogin},
  Principal in 'Principal.pas' {frmPrincipal},
  Funcionarios in 'Funcionarios.pas' {frmFuncionarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.Run;
end.
