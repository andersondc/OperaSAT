unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,  pcnConversao, StrUtils,
  Vcl.StdCtrls, ACBrBase, ACBrSAT, ACBrSATClass, Vcl.Imaging.pngimage, Vcl.Grids, DadosVenda,
  System.Notification, ConfigImp;

type
  TFPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Pags: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ACBrSAT1: TACBrSAT;
    ScrollBox1: TScrollBox;
    Panel15: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    vSoftHouse: TMemo;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    vCodAtivacao: TComboBox;
    vLayout: TComboBox;
    Panel6: TPanel;
    Label4: TLabel;
    Panel7: TPanel;
    Label11: TLabel;
    Label15: TLabel;
    vISSQN: TComboBox;
    vCNPJ: TComboBox;
    Panel8: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    vRegTribISSQN: TComboBox;
    vRegTrib: TComboBox;
    Panel14: TPanel;
    Label5: TLabel;
    Label14: TLabel;
    vIM: TComboBox;
    vIE: TComboBox;
    Panel9: TPanel;
    vNomeSAT: TLabel;
    ScrollBox3: TScrollBox;
    Panel10: TPanel;
    Label7: TLabel;
    Image5: TImage;
    Panel11: TPanel;
    Label8: TLabel;
    Image6: TImage;
    Panel12: TPanel;
    Label9: TLabel;
    Image7: TImage;
    Panel13: TPanel;
    Label10: TLabel;
    Image8: TImage;
    Panel16: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Panel17: TPanel;
    GridStatus: TStringGrid;
    Label16: TLabel;
    ListConfig: TListBox;
    NotificationCenter1: TNotificationCenter;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Panel18: TPanel;
    Label6: TLabel;
    Image9: TImage;
    Label17: TLabel;
    LabeledEdit1: TLabeledEdit;
    iAtivo: TImage;
    imAtivo: TImage;
    ImInativo: TImage;
    TempoSAT: TTimer;
    Panel19: TPanel;
    bAtiva: TButton;
    Button5: TButton;
    Button1: TButton;
    vXML: TMemo;
    Label18: TLabel;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Label19: TLabel;
    procedure Image8Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure bAtivaClick(Sender: TObject);
    procedure TempoSATTimer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure AtivaSAT;
    procedure SalvaConfig;
    procedure Notificacao(texto: string);
    procedure VerStatus;
    function RetornaStatusSAT: String;
    procedure DadosStatusGrid;
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.dfm}

procedure TFPrincipal.AtivaSAT;
begin
  // Define Variaveis para Ativação do SAT

  with ACBrSAT1 do
  begin

    Modelo := TACBrSATModelo(2);

    Config.ide_numeroCaixa:=1;

    Config.ide_tpAmb := TpcnTipoAmbiente(0);

//    Config.ide_CNPJ := '13117948000173';  // CNPJ SoftHouse
    Config.ide_CNPJ := '16716114000172';  // CNPJ SoftHouse

    Config.emit_CNPJ := vCNPJ.Text;
    Config.emit_IE := VIE.Text;
    Config.emit_IM := VIM.Text;
    Config.emit_cRegTrib := TpcnRegTrib(vRegTrib.ItemIndex);
    Config.emit_cRegTribISSQN := TpcnRegTribISSQN(VRegTribISSQN.ItemIndex);
    Config.emit_indRatISSQN := TpcnindRatISSQN(vISSQN.ItemIndex);

    Config.PaginaDeCodigo := 65001;
    Config.EhUTF8 := true;

    ACBrSAT1.NomeDLL :='C:\WebControl\WebControl PDV\dllsat.dll';

    ConfigArquivos.SalvarCFe := true;
    ConfigArquivos.SalvarCFeCanc := true;
    ConfigArquivos.SalvarEnvio := true;
    ConfigArquivos.SepararPorCNPJ := true;
    ConfigArquivos.SepararPorMes := true;

    if vLayout.Text='0.06' then
       Config.infCFe_versaoDadosEnt:=0.06
    else if vLayout.Text='0.07' then
       Config.infCFe_versaoDadosEnt:=0.07
    else if vLayout.Text='0.08' then
       Config.infCFe_versaoDadosEnt:=0.08
    else // Como Padrão caso não haja definição será 0.08 (mais recente)
       Config.infCFe_versaoDadosEnt:=0.08;

  end;
  ACBrSAT1.Inicializado:=true;
end;


procedure TFPrincipal.VerStatus;
var
  msg: String;
begin
  AtivaSAT;

  if ACBrSAT1.Inicializado then
  begin
    msg := RetornaStatusSAT;
    MessageDlg(msg, mtInformation, [mbOK], 0);
  end
  else
    MessageDlg('SAT não foi inicializado!', mtInformation, [mbOK], 0);
end;

function TFPrincipal.RetornaStatusSAT: String;
var
  status: String;
begin
  ACBrSAT1.ConsultarSAT;

  status := 'SAT: ' +
    InttoStr(ACBrSAT1.Resposta.codigoDeRetorno) + ' - ' +
             ACBrSAT1.Resposta.mensagemRetorno;

  ACBrSAT1.ConsultarStatusOperacional;
  with ACBrSAT1.status do
  begin
    status := status + sLineBreak +
      'Nº de Série: ' + NSERIE + sLineBreak +
      'Status Rede: ' + StatusLanToStr(STATUS_LAN) + sLineBreak +
      'Nivel Bateria: ' + NivelBateriaToStr(NIVEL_BATERIA) + sLineBreak +
      'Memória Total: ' + MT_TOTAL + sLineBreak +
      'Memória Usada: ' + MT_USADA + sLineBreak +
      'Data Atual: ' + DateTimeToStr(DH_ATUAL) + sLineBreak +
      'Último CFe: ' + ULTIMO_CFe + sLineBreak +
      'Lista Inicial: ' + LISTA_INICIAL + sLineBreak +
      'Lista Final: ' + LISTA_FINAL + sLineBreak +
      'DH_CFe: ' + DateTimeToStr(DH_CFe) + sLineBreak  +
      'DH_Última: ' + DateTimeToStr(DH_CFe) + sLineBreak +
      'Cert Emissão: ' + DateToStr(CERT_EMISSAO) + sLineBreak +
      'Cert Vencimento: ' + DateToStr(CERT_VENCIMENTO) + sLineBreak +
      'Estado Operação: ' + EstadoOperacaoToStr(ESTADO_OPERACAO);

      GridStatus.Cells[1,0]:=NSERIE;
      GridStatus.Cells[1,1]:=StatusLanToStr(STATUS_LAN);
      GridStatus.Cells[1,2]:=NivelBateriaToStr(NIVEL_BATERIA);
      GridStatus.Cells[1,3]:=MT_TOTAL;
      GridStatus.Cells[1,4]:=MT_USADA;
      GridStatus.Cells[1,5]:=DateTimeToStr(DH_ATUAL);
      GridStatus.Cells[1,6]:=ULTIMO_CFe;
      GridStatus.Cells[1,7]:=LISTA_INICIAL;
      GridStatus.Cells[1,8]:=LISTA_FINAL;
      GridStatus.Cells[1,9]:=DateTimeToStr(DH_CFe);
      GridStatus.Cells[1,10]:=DateTimeToStr(DH_CFe);
      GridStatus.Cells[1,11]:=DateToStr(CERT_EMISSAO);
      GridStatus.Cells[1,12]:=DateToStr(CERT_VENCIMENTO);
      GridStatus.Cells[1,13]:=EstadoOperacaoToStr(ESTADO_OPERACAO);

  end;
  Result := status;
end;

procedure TFPrincipal.DadosStatusGrid;
begin
  if ACBrSAT1.Inicializado=false then
    AtivaSAT;

  GridStatus.RowCount:=14;
  GridStatus.ColCount:=2;

  GridStatus.Cells[0,0]:='Nº de Série:';
  GridStatus.Cells[0,1]:='Status Rede:';
  GridStatus.Cells[0,2]:='Nivel Bateria:';
  GridStatus.Cells[0,3]:='Memória Total:';
  GridStatus.Cells[0,4]:='Memória Usada:';
  GridStatus.Cells[0,5]:='Data Atual:';
  GridStatus.Cells[0,6]:='Último CFe:';
  GridStatus.Cells[0,7]:='Lista Inicial:';
  GridStatus.Cells[0,8]:='Lista Final:';
  GridStatus.Cells[0,9]:='DH_CFe:';
  GridStatus.Cells[0,10]:='DH_Última:';
  GridStatus.Cells[0,11]:='Cert Emissão:';
  GridStatus.Cells[0,12]:='Cert Vencimento:';
  GridStatus.Cells[0,13]:='Estado Operação:';

  RetornaStatusSAT;
end;

procedure TFPrincipal.bAtivaClick(Sender: TObject);
begin
  if bAtiva.Caption='Ativar SAT' then
  begin
    bAtiva.Caption:='Desativar SAT';
    AtivaSAT;
  end
  else
  begin
    bAtiva.Caption:='Ativar SAT';
    ACBrSAT1.DesInicializar;
  end;
end;

procedure TFPrincipal.Button1Click(Sender: TObject);
begin
  DadosVenda.FDadosVenda.ShowModal;
end;

procedure TFPrincipal.Button2Click(Sender: TObject);
begin
  SalvaConfig;

  Notificacao('Configurações Salvas!');
end;

procedure TFPrincipal.Button3Click(Sender: TObject);
begin
  VerStatus;
end;

procedure TFPrincipal.Button4Click(Sender: TObject);
begin
  vNomeSAT.Caption:='Modelo SAT: '+ListConfig.Items.Strings[0];
  vLayout.Text:='0.08';
  vCodAtivacao.Text:='123456789';
  vSoftHouse.Text:='SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT';
  vIE.Text:='111111111111';
  vIM.Text:='111111';
  vCNPJ.Text:='14200166000166';
  vISSQN.Text:='NÃO';
  vRegTrib.Text:='Simples Nacional';
  vRegTribISSQN.Text:='Microempresa Nacional';
end;

procedure TFPrincipal.Button5Click(Sender: TObject);
begin
  DadosStatusGrid;
end;

procedure TFPrincipal.Button7Click(Sender: TObject);
begin
  vXML.Lines.LoadFromFile(ExtractFileDir(GetCurrentDir)+'\TesteSAT.xml');
end;

procedure TFPrincipal.Button8Click(Sender: TObject);
begin
  ConfigImp.FConfigImp.ShowModal;
end;

procedure TFPrincipal.FormShow(Sender: TObject);
begin
  if FileExists(ExtractFileDir(GetCurrentDir)+'\Config.ini') then
  begin
    ListConfig.Items.LoadFromFile(ExtractFileDir(GetCurrentDir)+'\Config.ini');

    vNomeSAT.Caption:='Modelo SAT: '+ListConfig.Items.Strings[0];
    vLayout.Text:=ListConfig.Items.Strings[1];
    vCodAtivacao.Text:=ListConfig.Items.Strings[2];
    vSoftHouse.Text:=ListConfig.Items.Strings[3];
    vIE.Text:=ListConfig.Items.Strings[4];
    vIM.Text:=ListConfig.Items.Strings[5];
    vCNPJ.Text:=ListConfig.Items.Strings[6];
    vISSQN.Text:=ListConfig.Items.Strings[7];
    vRegTrib.Text:=ListConfig.Items.Strings[8];
    vRegTribISSQN.Text:=ListConfig.Items.Strings[9];
  end;
end;

procedure TFPrincipal.SalvaConfig;
begin
  ListConfig.Clear;

  ListConfig.Items.Add(RightStr(vNomeSAT.Caption,Length(vNomeSAT.Caption)-12));
  ListConfig.Items.Add(vLayout.Text);
  ListConfig.Items.Add(vCodAtivacao.Text);
  ListConfig.Items.Add(vSoftHouse.Text);
  ListConfig.Items.Add(vIE.Text);
  ListConfig.Items.Add(vIM.Text);
  ListConfig.Items.Add(vCNPJ.Text);
  ListConfig.Items.Add(vISSQN.Text);
  ListConfig.Items.Add(vRegTrib.Text);
  ListConfig.Items.Add(vRegTribISSQN.Text);

  ListConfig.Items.SaveToFile(ExtractFileDir(GetCurrentDir)+'\Config.ini');
end;

procedure TFPrincipal.TempoSATTimer(Sender: TObject);
begin
  if ACBrSAT1.Inicializado=true then
  begin
    IAtivo.Picture:=imAtivo.Picture;
    if bAtiva.Caption='Ativar SAT' then
      bAtiva.Caption:='Desativar SAT';
  end
  else
  begin
    IAtivo.Picture:=imInativo.Picture;
    if bAtiva.Caption='Desativar SAT' then
    bAtiva.Caption:='Ativar SAT';
  end;
end;

procedure TFPrincipal.Notificacao(texto: string);
var
  MyNotification: TNotification;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name:='OperaSAT';
    MyNotification.Title:='Sistema de Testes para SAT';
    MyNotification.AlertBody:=texto;

    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;

procedure TFPrincipal.Image4Click(Sender: TObject);
begin
  Pags.ActivePageIndex:=2;
end;

procedure TFPrincipal.Image5Click(Sender: TObject);
begin
  vNomeSAT.Caption:='Modelo SAT: Elgin Smart';
end;

procedure TFPrincipal.Image6Click(Sender: TObject);
begin
  vNomeSAT.Caption:='Modelo SAT: Bematech S@T Go';
end;

procedure TFPrincipal.Image7Click(Sender: TObject);
begin
  vNomeSAT.Caption:='Modelo SAT: Bematech RB-2000 FI';
end;

procedure TFPrincipal.Image8Click(Sender: TObject);
begin
  vNomeSAT.Caption:='Modelo SAT: Bematech RB-1000 FI';
end;

procedure TFPrincipal.Image9Click(Sender: TObject);
begin
  Pags.ActivePageIndex:=1;
end;

end.
