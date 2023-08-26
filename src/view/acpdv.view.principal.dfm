object pagePrincipal: TpagePrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Academia do C'#243'digo - PDV'
  ClientHeight = 730
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object pnlContainer: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 730
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 1120
    ExplicitHeight = 729
    object pnlTitle: TPanel
      Left = 0
      Top = 0
      Width = 1124
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Caixa Aberto'
      Color = 7119398
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 632
      Width = 1124
      Height = 98
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 631
      ExplicitWidth = 1120
      object pnlCancelarOp: TPanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 0
        object Shape1: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnCancelarOp: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Cancelar Opera'#231#227'o'
          Flat = True
          ExplicitLeft = 3
          ExplicitTop = 6
        end
      end
      object pnlConsultarPreco: TPanel
        AlignWithMargins = True
        Left = 185
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 1
        object Shape2: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnConsultarPreco: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Consultar Pre'#231'o'
          Flat = True
          ExplicitLeft = 3
          ExplicitTop = 6
        end
      end
      object pnlAbrirCaixa: TPanel
        AlignWithMargins = True
        Left = 370
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 2
        object Shape3: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnAbrirCaixa: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Abrir Caixa'
          Flat = True
          ExplicitLeft = 7
          ExplicitTop = 6
        end
      end
      object pnlCancelarVenda: TPanel
        AlignWithMargins = True
        Left = 555
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 3
        object Shape4: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnCancelarVenda: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Cancelar Venda'
          Flat = True
          ExplicitLeft = 112
          ExplicitTop = 48
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlCancelarItem: TPanel
        AlignWithMargins = True
        Left = 740
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 4
        object Shape5: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnCancelarItem: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Cancelar Item'
          Flat = True
          ExplicitLeft = 112
          ExplicitTop = 48
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnlMaisFuncoes: TPanel
        AlignWithMargins = True
        Left = 925
        Top = 0
        Width = 185
        Height = 98
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alLeft
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 10
        Padding.Right = 5
        Padding.Bottom = 10
        TabOrder = 5
        object Shape6: TShape
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Brush.Color = clScrollBar
          Pen.Style = psClear
          Shape = stRoundRect
          ExplicitLeft = 48
          ExplicitTop = 6
          ExplicitWidth = 65
          ExplicitHeight = 65
        end
        object btnMaisFuncoes: TSpeedButton
          Left = 5
          Top = 10
          Width = 175
          Height = 78
          Align = alClient
          Caption = 'Mais Fun'#231#245'es'
          Flat = True
          ExplicitLeft = 3
          ExplicitTop = 6
        end
      end
    end
    object pnlMain: TPanel
      Left = 0
      Top = 49
      Width = 1124
      Height = 583
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 60
      ExplicitWidth = 1120
      ExplicitHeight = 571
      object pnlOperacoes: TPanel
        Left = 724
        Top = 0
        Width = 400
        Height = 583
        Align = alRight
        BevelOuter = bvNone
        Padding.Top = 5
        Padding.Bottom = 20
        TabOrder = 0
        ExplicitLeft = 725
        ExplicitTop = -3
        object pnlTotalCompra: TPanel
          Left = 0
          Top = 493
          Width = 400
          Height = 70
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 481
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 397
            Height = 19
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Total da Compra'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 1
            ExplicitWidth = 400
          end
          object Shape7: TShape
            Left = 0
            Top = 19
            Width = 400
            Height = 51
            Align = alClient
            Brush.Color = 7119398
            Pen.Color = 7119398
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 1
          end
          object pnledtTotalCompra: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 394
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitLeft = 1
            ExplicitWidth = 400
            ExplicitHeight = 51
            object Label2: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 388
              Height = 39
              Align = alClient
              Caption = 'R$ 31,06'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -25
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 92
              ExplicitHeight = 35
            end
          end
        end
        object pnlSubTotal: TPanel
          Left = 0
          Top = 423
          Width = 400
          Height = 70
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 481
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 397
            Height = 19
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Sub Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 68
          end
          object Shape8: TShape
            Left = 0
            Top = 19
            Width = 400
            Height = 51
            Align = alClient
            Brush.Color = 7119398
            Pen.Color = 7119398
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 1
          end
          object pnledtSubTotal: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 394
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lblSubTotal: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 388
              Height = 39
              Align = alClient
              Caption = 'R$ 6,46'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -25
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitLeft = -37
              ExplicitTop = -85
            end
          end
        end
        object pnlQuantidade: TPanel
          Left = 0
          Top = 353
          Width = 400
          Height = 70
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitTop = 481
          object lblQuantidade: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 397
            Height = 19
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 81
          end
          object Shape9: TShape
            Left = 0
            Top = 19
            Width = 400
            Height = 51
            Align = alClient
            Brush.Color = 7119398
            Pen.Color = 7119398
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 1
          end
          object pnledtQuantidade: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 394
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object edtQuantidade: TEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 388
              Height = 39
              Align = alClient
              Alignment = taCenter
              BorderStyle = bsNone
              Color = 7119398
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -25
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '0,726'
            end
          end
        end
        object pnlPreco: TPanel
          Left = 0
          Top = 283
          Width = 400
          Height = 70
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitTop = 481
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 397
            Height = 19
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Pre'#231'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 39
          end
          object Shape10: TShape
            Left = 0
            Top = 19
            Width = 400
            Height = 51
            Align = alClient
            Brush.Color = 7119398
            Pen.Color = 7119398
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 1
          end
          object pnledtPreco: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 394
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object lblPreco: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 388
              Height = 39
              Align = alClient
              Caption = 'R$ 6,46'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -25
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 79
              ExplicitHeight = 35
            end
          end
        end
        object pnlProduto: TPanel
          Left = 0
          Top = 213
          Width = 400
          Height = 70
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitTop = 481
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 397
            Height = 19
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ExplicitWidth = 56
          end
          object Shape11: TShape
            Left = 0
            Top = 19
            Width = 400
            Height = 51
            Align = alClient
            Brush.Color = 7119398
            Pen.Color = 7119398
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 1
          end
          object pnledtProduto: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 22
            Width = 394
            Height = 45
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object edtProduto: TEdit
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 388
              Height = 39
              Align = alClient
              Alignment = taCenter
              BorderStyle = bsNone
              Color = 7119398
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -25
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '00025'
            end
          end
        end
        object pnlImgProduto: TPanel
          Left = 0
          Top = 5
          Width = 400
          Height = 208
          Align = alClient
          BevelOuter = bvNone
          Padding.Left = 120
          Padding.Top = 10
          Padding.Right = 120
          Padding.Bottom = 10
          TabOrder = 5
          ExplicitLeft = 1
          ExplicitTop = 6
          object imgProduto: TImage
            Left = 120
            Top = 10
            Width = 160
            Height = 188
            Align = alClient
            Stretch = True
            ExplicitLeft = 136
            ExplicitTop = 88
            ExplicitWidth = 105
            ExplicitHeight = 105
          end
        end
      end
      object pnlGrid: TPanel
        Left = 0
        Top = 0
        Width = 724
        Height = 583
        Align = alClient
        BevelOuter = bvNone
        Padding.Left = 5
        Padding.Top = 5
        Padding.Right = 5
        Padding.Bottom = 5
        TabOrder = 1
        ExplicitWidth = 720
        ExplicitHeight = 571
        object DBGrid1: TDBGrid
          Left = 5
          Top = 5
          Width = 714
          Height = 573
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
  end
end
