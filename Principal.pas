unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    imgBackground: TImage;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Movimentaes1: TMenuItem;
    Pedidos1: TMenuItem;
    Relatrios1: TMenuItem;
    Reservas1: TMenuItem;
    Sair1: TMenuItem;
    Funcionrios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Mesas1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    EntradadeProdutos1: TMenuItem;
    NveldeEstoque1: TMenuItem;
    NovaVenda1: TMenuItem;
    Entradas1: TMenuItem;
    Sadas1: TMenuItem;
    Pagamentos1: TMenuItem;
    NovoPedido1: TMenuItem;
    NovaReserva1: TMenuItem;
    ConsultarReserva1: TMenuItem;
    Logout1: TMenuItem;
    btnProdutos: TSpeedButton;
    btnMovimentacoes: TSpeedButton;
    btnPedidos: TSpeedButton;
    btnReserva: TSpeedButton;
    btnRelatorios: TSpeedButton;
    Pratos1: TMenuItem;
    Cargos1: TMenuItem;
    procedure Funcionrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses Funcionarios;

procedure TfrmPrincipal.Funcionrios1Click(Sender: TObject);
begin
  frmFuncionarios := TfrmFuncionarios.Create(self);
  frmFuncionarios.ShowModal;
end;

end.
