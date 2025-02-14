unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrDFe, ACBrGTIN,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    edtGTIN: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDesc: TEdit;
    Label3: TLabel;
    edtNCM: TEdit;
    Label4: TLabel;
    edtCEST: TEdit;
    btnGTIN: TBitBtn;
    ACBrGTIN1: TACBrGTIN;
    OpenDialog1: TOpenDialog;
    memoRet: TMemo;
    GroupBox1: TGroupBox;
    edtCert: TEdit;
    edtSenha: TEdit;
    Button1: TButton;
    Label5: TLabel;
    Label6: TLabel;
    btnGravarCert: TBitBtn;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    procedure btnGTINClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EnableButtonGTIN();
    procedure btnGravarCertClick(Sender: TObject);
    procedure edtCertChange(Sender: TObject);
    procedure edtSenhaChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
memoRet.Clear;
end;

procedure TForm1.btnGravarCertClick(Sender: TObject);
begin
if (edtCert.Text<>EmptyStr) AND (edtSenha.Text<>EmptyStr) then
begin
ACBrGTIN1.Configuracoes.Certificados.ArquivoPFX:=edtCert.Text;
ACBrGTIN1.Configuracoes.Certificados.Senha:=edtSenha.Text;
EnableButtonGTIN;
btnGravarCert.Enabled:=False;
end
 else
 Application.MessageBox('Preencha todos os campos do Certificado Digital','Atenção',MB_ICONWARNING);
 Abort
end;

procedure TForm1.btnGTINClick(Sender: TObject);
begin
try
  ACBrGTIN1.Consultar(edtGTIN.Text);
  edtDesc.Text:=ACBrGTIN1.WebServices.Consulta.xProd;
  edtNCM.Text:=ACBrGTIN1.WebServices.Consulta.NCM;
  edtCEST.Text:=ACBrGTIN1.WebServices.Consulta.CEST;

  memoRet.Lines.Add('Status: '+IntToStr(ACBrGTIN1.WebServices.Consulta.cStat)+' - '+(ACBrGTIN1.WebServices.Consulta.xMotivo));
  memoRet.Lines.Add((ACBrGTIN1.WebServices.Consulta.xProd)+' | '+(ACBrGTIN1.WebServices.Consulta.NCM)+' | '+(ACBrGTIN1.WebServices.Consulta.CEST));
  memoRet.Lines.Add('----------------------------------------------------------------------------------------------------------------------');
except
  ShowMessage('Erro nos parâmetros e/ou configuração do Certificado Digital');
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
OpenDialog1.Execute();
edtCert.Text:=OpenDialog1.FileName;
end;

procedure TForm1.edtCertChange(Sender: TObject);
begin
btnGravarCert.Enabled:=True;
btnGTIN.Enabled:=False;
end;

procedure TForm1.edtSenhaChange(Sender: TObject);
begin
btnGravarCert.Enabled:=True;
btnGTIN.Enabled:=False;
end;

procedure TForm1.EnableButtonGTIN;
begin
btnGTIN.Enabled:=((edtCert.Text<>EmptyStr) AND (edtSenha.Text<>EmptyStr));
end;

end.
