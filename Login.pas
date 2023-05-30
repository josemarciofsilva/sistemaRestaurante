unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    imgBackground: TImage;
    imgLogin: TImage;
    txtusuario: TEdit;
    txtsenha: TEdit;
    btnLogin: TSpeedButton;
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses Principal;

procedure ChamarLogin();
begin
  if (Trim(frmLogin.txtUsuario.Text) <> '') and (Trim(frmLogin.txtSenha.Text) <> '') then
    begin
      {Entra Login}

    end
    else
    begin
      MessageDlg('Favor preencher todos os campos!', TMsgDlgType.mtInformation,
        mbOKCancel, 0);
    end;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin
  ChamarLogin();
  frmPrincipal := TfrmPrincipal.Create(self);
  frmPrincipal.ShowModal;
end;

end.
