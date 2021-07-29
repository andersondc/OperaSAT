object FDadosVenda: TFDadosVenda
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Dados de Simula'#231#227'o de Venda'
  ClientHeight = 351
  ClientWidth = 542
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Open Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 15
  object Panel16: TPanel
    Left = 429
    Top = 0
    Width = 113
    Height = 351
    Align = alRight
    Color = clGray
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -131
    ExplicitHeight = 482
    object Label7: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 105
      Height = 120
      Align = alTop
      Alignment = taRightJustify
      Caption = 
        'Por ser apenas uma venda Teste, ser'#225' utilizado apenas um Produto' +
        ' e uma Forma de Pagamento em 1x (caso seja cr'#233'dito).'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Open Sans'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 104
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 307
      Width = 105
      Height = 40
      Align = alBottom
      Caption = 'Cancelar'
      TabOrder = 0
      ExplicitTop = 438
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 4
      Top = 264
      Width = 105
      Height = 40
      Margins.Bottom = 0
      Align = alBottom
      Caption = 'Enviar ao SAT'
      TabOrder = 1
      ExplicitTop = 395
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 4
      Top = 203
      Width = 105
      Height = 58
      Margins.Bottom = 0
      Align = alBottom
      Caption = 'Inserir Dados de Testes'
      TabOrder = 2
      WordWrap = True
      ExplicitTop = 334
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 351
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -2
    object Panel6: TPanel
      Left = 1
      Top = 251
      Width = 427
      Height = 125
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      ExplicitTop = 344
      ExplicitWidth = 532
      object Label4: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 419
        Height = 15
        Align = alTop
        Caption = 'Forma de Pagamento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Corbel'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 127
      end
      object Panel7: TPanel
        Left = 1
        Top = 54
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label15: TLabel
          AlignWithMargins = True
          Left = 191
          Top = 3
          Width = 68
          Height = 26
          Align = alLeft
          Caption = 'Vencimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 31
          Height = 26
          Align = alLeft
          Caption = 'Valor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object vCNPJ: TComboBox
          AlignWithMargins = True
          Left = 265
          Top = 3
          Width = 157
          Height = 23
          Align = alClient
          TabOrder = 0
        end
        object ComboBox4: TComboBox
          AlignWithMargins = True
          Left = 40
          Top = 3
          Width = 145
          Height = 23
          Align = alLeft
          TabOrder = 1
        end
      end
      object Panel14: TPanel
        Left = 1
        Top = 22
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Label14: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 58
          Height = 26
          Align = alLeft
          Caption = 'Descri'#231#227'o: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object vIE: TComboBox
          AlignWithMargins = True
          Left = 67
          Top = 3
          Width = 355
          Height = 23
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 427
      Height = 125
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 344
      ExplicitWidth = 532
      object Label1: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 419
        Height = 15
        Align = alTop
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Corbel'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 44
      end
      object Panel3: TPanel
        Left = 1
        Top = 54
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 25
          Height = 26
          Align = alLeft
          Caption = 'CPF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox1: TComboBox
          AlignWithMargins = True
          Left = 34
          Top = 3
          Width = 145
          Height = 23
          Align = alLeft
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 86
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 85
        ExplicitWidth = 530
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 54
          Height = 26
          Align = alLeft
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox2: TComboBox
          AlignWithMargins = True
          Left = 63
          Top = 3
          Width = 170
          Height = 23
          Align = alLeft
          TabOrder = 0
          Items.Strings = (
            'Simples Nacional'
            'Regime Normal')
        end
      end
      object Panel5: TPanel
        Left = 1
        Top = 22
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 93
          Height = 26
          Align = alLeft
          Caption = 'Nome do Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox3: TComboBox
          AlignWithMargins = True
          Left = 102
          Top = 3
          Width = 320
          Height = 23
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object Panel9: TPanel
      Left = 1
      Top = 126
      Width = 427
      Height = 125
      Align = alTop
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 344
      ExplicitWidth = 532
      object Label8: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 419
        Height = 15
        Align = alTop
        Caption = 'Produto:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Corbel'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 50
      end
      object Panel10: TPanel
        Left = 1
        Top = 54
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label9: TLabel
          AlignWithMargins = True
          Left = 227
          Top = 3
          Width = 31
          Height = 26
          Align = alLeft
          Caption = 'NCM:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object Label10: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 67
          Height = 26
          Align = alLeft
          Caption = 'Quantidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox6: TComboBox
          AlignWithMargins = True
          Left = 264
          Top = 3
          Width = 158
          Height = 23
          Align = alClient
          TabOrder = 0
        end
        object ComboBox7: TComboBox
          AlignWithMargins = True
          Left = 76
          Top = 3
          Width = 145
          Height = 23
          Align = alLeft
          TabOrder = 1
        end
      end
      object Panel11: TPanel
        Left = 1
        Top = 86
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 85
        ExplicitWidth = 530
        object Label11: TLabel
          AlignWithMargins = True
          Left = 215
          Top = 3
          Width = 60
          Height = 26
          Align = alLeft
          Caption = 'Valor Total:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 78
          Height = 26
          Align = alLeft
          Caption = 'Valor Unit'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox8: TComboBox
          AlignWithMargins = True
          Left = 281
          Top = 3
          Width = 141
          Height = 23
          Align = alClient
          TabOrder = 0
          Items.Strings = (
            'Simples Nacional'
            'Regime Normal')
        end
        object ComboBox9: TComboBox
          AlignWithMargins = True
          Left = 87
          Top = 3
          Width = 122
          Height = 23
          Align = alLeft
          TabOrder = 1
          Items.Strings = (
            'Simples Nacional'
            'Regime Normal')
        end
      end
      object Panel12: TPanel
        Left = 1
        Top = 22
        Width = 425
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Label16: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 58
          Height = 26
          Align = alLeft
          Caption = 'Descri'#231#227'o: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Corbel'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 15
        end
        object ComboBox10: TComboBox
          AlignWithMargins = True
          Left = 67
          Top = 3
          Width = 355
          Height = 23
          Align = alClient
          TabOrder = 0
        end
      end
    end
  end
end
