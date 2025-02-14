object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consulta GTIN'
  ClientHeight = 745
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 157
    Width = 24
    Height = 13
    Caption = 'GTIN'
  end
  object Label2: TLabel
    Left = 40
    Top = 213
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 40
    Top = 268
    Width = 22
    Height = 13
    Caption = 'NCM'
  end
  object Label4: TLabel
    Left = 424
    Top = 268
    Width = 25
    Height = 13
    Caption = 'CEST'
  end
  object Label7: TLabel
    Left = 40
    Top = 333
    Width = 45
    Height = 13
    Caption = 'Hist'#243'rico:'
  end
  object edtGTIN: TEdit
    Left = 40
    Top = 176
    Width = 169
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtDesc: TEdit
    Left = 40
    Top = 232
    Width = 665
    Height = 25
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object edtNCM: TEdit
    Left = 40
    Top = 287
    Width = 281
    Height = 25
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object edtCEST: TEdit
    Left = 424
    Top = 287
    Width = 281
    Height = 25
    Color = clBtnFace
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object btnGTIN: TBitBtn
    Left = 280
    Top = 160
    Width = 217
    Height = 40
    Caption = 'Pesquisar GTIN'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = btnGTINClick
  end
  object memoRet: TMemo
    Left = 0
    Top = 352
    Width = 715
    Height = 393
    TabStop = False
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    ExplicitWidth = 833
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 715
    Height = 137
    Align = alTop
    Caption = 'Selecione o Certificado Digital A1'
    TabOrder = 4
    ExplicitWidth = 833
    object Label5: TLabel
      Left = 40
      Top = 26
      Width = 161
      Height = 13
      Caption = 'Caminho completo do Certificado:'
    end
    object Label6: TLabel
      Left = 40
      Top = 69
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object edtCert: TEdit
      Left = 40
      Top = 45
      Width = 617
      Height = 19
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = edtCertChange
    end
    object edtSenha: TEdit
      Left = 40
      Top = 88
      Width = 157
      Height = 25
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      OnChange = edtSenhaChange
    end
    object Button1: TButton
      Left = 663
      Top = 43
      Width = 34
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = Button1Click
    end
    object btnGravarCert: TBitBtn
      Left = 312
      Top = 81
      Width = 145
      Height = 35
      Caption = 'Gravar'
      TabOrder = 3
      OnClick = btnGravarCertClick
    end
  end
  object BitBtn1: TBitBtn
    Left = 584
    Top = 328
    Width = 121
    Height = 25
    Caption = 'Limpar hist'#243'rico'
    TabOrder = 7
    OnClick = BitBtn1Click
  end
  object ACBrGTIN1: TACBrGTIN
    Configuracoes.Geral.SSLLib = libOpenSSL
    Configuracoes.Geral.SSLCryptLib = cryOpenSSL
    Configuracoes.Geral.SSLHttpLib = httpOpenSSL
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Arquivos.PathSchemas = 'C:\ACBr\Exemplos\ACBrDFe\Schemas\GTIN\'
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 584
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Title = 'SELECIONE O CERTIFICADO DIGITAL A1'
    Left = 576
    Top = 33
  end
end
