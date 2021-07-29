unit ConfigImp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFConfigImp = class(TForm)
    Panel16: TPanel;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    vModelo: TComboBox;
    vPorta: TComboBox;
    vCol: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfigImp: TFConfigImp;

implementation

{$R *.dfm}

end.
