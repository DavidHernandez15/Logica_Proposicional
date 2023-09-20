object fProposiciones: TfProposiciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'fProposiciones'
  ClientHeight = 293
  ClientWidth = 327
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 252
    Width = 327
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 40
    ExplicitWidth = 185
    object bAceptar: TButton
      Left = 242
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = bAceptarClick
    end
    object Cancelar: TButton
      Left = 161
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = CancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 327
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 48
    ExplicitTop = 8
    ExplicitWidth = 185
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 327
    Height = 211
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 176
    ExplicitTop = 104
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pgAvanzado: TPageControl
      Left = 1
      Top = 1
      Width = 325
      Height = 210
      ActivePage = TabSheet1
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 320
      object TabSheet1: TTabSheet
        Caption = 'Sencillo'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 317
          Height = 180
          Align = alClient
          ParentBackground = False
          TabOrder = 0
          ExplicitTop = 4
          ExplicitWidth = 312
          object cbVarI: TComboBox
            Left = 86
            Top = 24
            Width = 145
            Height = 23
            TabOrder = 0
            Items.Strings = (
              'P')
          end
          object cbOperacion: TComboBox
            Left = 86
            Top = 76
            Width = 145
            Height = 23
            TabOrder = 1
            Items.Strings = (
              'NO'
              'Y'
              'O'
              'ENTONCES'
              'SI SOLO SI')
          end
          object cbVarII: TComboBox
            Left = 86
            Top = 128
            Width = 145
            Height = 23
            TabOrder = 2
            Items.Strings = (
              'Q')
          end
          object mResultado: TMemo
            Left = 350
            Top = 24
            Width = 145
            Height = 129
            TabOrder = 3
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Avanzado'
        ImageIndex = 1
      end
    end
  end
end
