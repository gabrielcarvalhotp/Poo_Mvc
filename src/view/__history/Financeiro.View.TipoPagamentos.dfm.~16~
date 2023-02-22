inherited FrmCadTipoPgto: TFrmCadTipoPgto
  Caption = 'FrmCadTipoPgto'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  inherited CardPanelPrincipal: TCardPanel
    inherited CardCadastro: TCard
      object Label1: TLabel [0]
        Left = 20
        Top = 80
        Width = 50
        Height = 19
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel [1]
        Left = 20
        Top = 113
        Width = 42
        Height = 19
        Caption = 'Nome'
      end
      inherited Panel1: TPanel
        inherited BitBtnSalvarCadastro: TBitBtn
          OnClick = BitBtnSalvarCadastroClick
        end
      end
      inherited Panel2: TPanel
        inherited Label6: TLabel
          Width = 191
          Caption = 'Tipo de Pagamentos'
          ExplicitWidth = 191
        end
      end
      object edId: TEdit
        Left = 100
        Top = 77
        Width = 57
        Height = 27
        Color = clGray
        ReadOnly = True
        TabOrder = 2
      end
      object edNome: TEdit
        Left = 100
        Top = 110
        Width = 200
        Height = 27
        TabOrder = 3
      end
    end
    inherited CardPesquisa: TCard
      inherited PanelFooter: TPanel
        inherited BitBtnExcluirPesquisa: TBitBtn
          OnClick = BitBtnExcluirPesquisaClick
        end
      end
      inherited PanelGrid: TPanel
        inherited DBGridPesquisa: TDBGrid
          DataSource = DSTipoPgto
        end
      end
    end
  end
  object DSTipoPgto: TDataSource
    Left = 552
    Top = 288
  end
end
