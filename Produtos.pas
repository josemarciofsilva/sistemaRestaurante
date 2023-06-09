unit Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtDlgs;

type
  TfrmProdutos = class(TForm)
    Image1: TImage;
    lblBuscar: TLabel;
    lblNomeProduto: TLabel;
    lblDescricaoProduto: TLabel;
    lblPrecoVenda: TLabel;
    lblQuantidade: TLabel;
    lblFornecedor: TLabel;
    lblPrecoCusto: TLabel;
    btnAdicionar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnExcluir: TSpeedButton;
    lblAdicionar: TLabel;
    lblSalvar: TLabel;
    lblEditar: TLabel;
    lblExcluir: TLabel;
    txtNomeBuscar: TEdit;
    txtNome: TEdit;
    txtPrecoVenda: TEdit;
    txtQuantidade: TEdit;
    comboFornecedor: TComboBox;
    txtPrecoCusto: TEdit;
    grid: TDBGrid;
    txtCodigo: TEdit;
    txtDescricao: TEdit;
    imgFotoProduto: TImage;
    btnAddImg: TButton;
    dialog: TOpenPictureDialog;
    procedure btnAddImgClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;
  caminhoImg: String;

implementation

{$R *.dfm}

procedure LimparCampos();
begin
  With frmProdutos do
    begin
      txtNome.Text := '';
      txtDescricao.Text := '';
      txtPrecoVenda.Text := '';
      txtQuantidade.Text := '';
      txtPrecoCusto.Text := '';
    end;
end;

procedure HabilitarCampos();
begin
  With frmProdutos do
    begin
      txtNome.Enabled := true;
      txtDescricao.Enabled := true;
      txtPrecoVenda.Enabled := true;
      txtQuantidade.Enabled := true;
      txtPrecoCusto.Enabled := true;
      comboFornecedor.Enabled := true;
      btnAddImg.Enabled := true;
      LimparCampos();
      txtNome.SetFocus;
    end;
end;

procedure DesabilitarCampos();
begin
  With frmProdutos do
    begin
      txtNome.Enabled := false;
      txtDescricao.Enabled := false;
      txtPrecoVenda.Enabled := false;
      txtQuantidade.Enabled := false;
      txtPrecoCusto.Enabled := false;
      comboFornecedor.Enabled := false;
      btnAddImg.Enabled := false;
    end;
end;

procedure CarregarImagemPadrao();
begin
  With frmProdutos do
    begin
      caminhoImg := ExtractFileDir(GetCurrentDir) + '\Debug\img\sem-foto.jpg';
      imgFotoProduto.Picture.LoadFromFile(caminhoImg);
    end;
end;



procedure TfrmProdutos.btnAddImgClick(Sender: TObject);
begin
  dialog.Execute();
  imgFotoProduto.Picture.LoadFromFile(dialog.FileName);
end;

procedure TfrmProdutos.btnAdicionarClick(Sender: TObject);
begin
  HabilitarCampos();
  lblSalvar.Enabled := true;
  btnSalvar.Enabled := true;
  CarregarImagemPadrao();
end;

procedure TfrmProdutos.btnEditarClick(Sender: TObject);
begin
  if (txtNome.Text <> '') and (txtDescricao.Text <> '   .   .   -  ') then
    begin
      {Editando os dados}
      MessageDlg('Editado com Sucesso!', TMsgDlgType.mtInformation,
        mbOKCancel, 0);
      LimparCampos();
      DesabilitarCampos();
      lblSalvar.Enabled := false;
      btnSalvar.Enabled := false;
      lblEditar.Enabled := false;
      btnEditar.Enabled := false;
      lblExcluir.Enabled := false;
      btnExcluir.Enabled := false;
    end
  else
    begin
       MessageDlg('Favor preencher todos os campos!', TMsgDlgType.mtInformation,
        mbOKCancel, 0);
    end;
end;

procedure TfrmProdutos.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja Excluir o registro?', TMsgDlgType.mtConfirmation,
    [mbYes, mbNo], 0) = mrYes then
    begin
      if txtCodigo.Text <> '' then
        begin
          {Apagando os dados}
          MessageDlg('Exclu�do com Sucesso!', TMsgDlgType.mtInformation,
            mbOKCancel, 0);
          LimparCampos();
          DesabilitarCampos();
          lblSalvar.Enabled := false;
          btnSalvar.Enabled := false;
          lblEditar.Enabled := false;
          btnEditar.Enabled := false;
          lblExcluir.Enabled := false;
          btnExcluir.Enabled := false;
        end
      else
        begin
           MessageDlg('Selecione um registro para exclus�o!', TMsgDlgType.mtInformation,
            mbOKCancel, 0);
        end;
    end
  else
    begin

    end;
end;

procedure TfrmProdutos.btnSalvarClick(Sender: TObject);
begin
  if (txtNome.Text <> '') and (txtDescricao.Text <> '   .   .   -  ') then
    begin
      {Salvando os dados}
      MessageDlg('Salvo com Sucesso!', TMsgDlgType.mtInformation,
        mbOKCancel, 0);
      LimparCampos();
      DesabilitarCampos();
      lblSalvar.Enabled := false;
      btnSalvar.Enabled := false;
      lblEditar.Enabled := false;
      btnEditar.Enabled := false;
      lblExcluir.Enabled := false;
      btnExcluir.Enabled := false;
    end
  else
    begin
       MessageDlg('Favor preencher todos os campos!', TMsgDlgType.mtInformation,
        mbOKCancel, 0);
    end;
end;

procedure TfrmProdutos.FormShow(Sender: TObject);
begin
  CarregarImagemPadrao();
end;

end.
