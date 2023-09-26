object FrameDinheiro: TFrameDinheiro
  Left = 0
  Top = 0
  Width = 507
  Height = 304
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 304
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 96
    ExplicitWidth = 185
    ExplicitHeight = 41
    object pnlRecebido: TPanel
      AlignWithMargins = True
      Left = 56
      Top = 64
      Width = 425
      Height = 49
      Margins.Left = 41
      Margins.Top = 130
      Margins.Right = 41
      Margins.Bottom = 130
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 227
        Height = 49
        Align = alLeft
        Caption = 'Total Recebido: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = -16
        ExplicitHeight = 40
      end
      object edtRecebido: TEdit
        Left = 227
        Top = 0
        Width = 198
        Height = 49
        Align = alClient
        Alignment = taRightJustify
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -33
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
      end
    end
  end
end
