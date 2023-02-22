inherited FrmCadProdutos: TFrmCadProdutos
  Caption = 'FrmCadProdutos'
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
      object Label3: TLabel [2]
        Left = 20
        Top = 146
        Width = 39
        Height = 19
        Caption = 'Pre'#231'o'
      end
      object Label4: TLabel [3]
        Left = 20
        Top = 179
        Width = 67
        Height = 19
        Caption = 'Descri'#231#227'o'
      end
      inherited Panel1: TPanel
        inherited BitBtnSalvarCadastro: TBitBtn
          OnClick = BitBtnSalvarCadastroClick
        end
      end
      inherited Panel2: TPanel
        inherited Label6: TLabel
          Width = 82
          Caption = 'Produtos'
          ExplicitWidth = 82
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
        Width = 405
        Height = 27
        TabOrder = 3
      end
      object edPreco: TEdit
        Left = 100
        Top = 143
        Width = 200
        Height = 27
        TabOrder = 4
      end
      object Memo1: TMemo
        Left = 100
        Top = 176
        Width = 405
        Height = 129
        Lines.Strings = (
          '')
        TabOrder = 5
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
          DataSource = DSProdutos
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'ID'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRECO'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATACADASTRO'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Width = 400
              Visible = True
            end>
        end
      end
      inherited PanelPesquisa: TPanel
        inherited EditPesquisar: TEdit
          Left = 135
          Top = 60
          Width = 172
          ExplicitLeft = 135
          ExplicitTop = 60
          ExplicitWidth = 172
        end
        object CBPesquisa: TComboBox
          Left = 16
          Top = 60
          Width = 113
          Height = 27
          TabOrder = 1
          Items.Strings = (
            ''
            'ID'
            'NOME'
            'DATACADASTRO'
            'DESCRICAO')
        end
        object BitBtn1: TBitBtn
          AlignWithMargins = True
          Left = 1021
          Top = 4
          Width = 97
          Height = 97
          Align = alRight
          Caption = 'Pesquisar'
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FEFEFEADAC9B
            6360409F9D8AFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAC9C45411B
            45411B45411B8C8972FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF63604045411B
            45411B45411B45411B8C8972FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9D8A45411B
            45411B45411B45411B45411B8C8972FEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFD8C8972
            45411B45411B45411B45411B45411B8C8972FEFEFDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFD
            8C897245411B45411B45411B45411B45411B8C8972FEFEFDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFEFD8C897245411B45411B45411B45411B45411B8C8972FEFEFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFEFEFD8C897245411B45411B45411B45411B45411B8C8972FEFEFDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFD8C897245411B45411B45411B45411B45411B9B9988FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFEFEFD8C897245411B45411B45411B575435B5B4BBD7D6
            DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFD8C897245411B575435AEADB2B9B8C2BAB9
            C2F6F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFD9B9988B5B4BBB9B8C2B9B8C2B9B8
            C2ECECEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D6DCBAB9C2B9B8C2C1BF
            C9F9F8FAFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFDDDEFCB6B8FA8F92F78689F6AC
            AEF9D3D4FCF7F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F8ECECEEF9F8
            FAEBE8EDF9F8FAFFFFFFFFFFFFB3B5F94D52F24247F14247F14247F14247F142
            47F14247F14449F19193F7F6F6FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF9F8FAEBE8EDE3E3F97478F54247F14247F14F54F17275F09596EF9E9EEE7B
            7EEF585CF04247F14247F15A5EF3CDCFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFE3E3F94C51F14247F1494EF1A4A4EEE9E6ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECC2C1ED595DF04247F14348F1BEC0FAFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7478F54247F16366F0D4D2EDEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECE3E1EC8384EF4247F15055F2EEEEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB3B5F94247F1494EF1D4D2EDEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECE8E5EC6468F04247F17F82F6FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FF4D52F24247F1A4A4EEEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECCECDED474BF14247F1D3D4FCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDE
            FC4247F14F54F1E9E6ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7EC7D7FEF4247F1A8AAF9FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B8
            FA4247F17275F0EAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7EC9F9FEE4247F18184F6FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F92
            F74247F19596EFEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECC0BFED4247F15A5EF3FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8689
            F64247F19E9EEEEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECC8C7ED4247F15155F2FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACAE
            F94247F17B7EEFEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECA8A8EE4247F1777AF5FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D4
            FC4247F1585CF0EAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEAE7ECEAE7ECEAE7ECEAE7EC8788EF4247F19DA0F8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
            FE4449F14247F1C2C1EDEAE7ECEBE8EDF0EDF1EAE7ECEAE7ECEAE7ECEAE7ECEA
            E7ECEAE7ECEDEAEFEDEAEEEAE7ECE0DEEC5357F04247F1C4C5FBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF9193F74247F1595DF0E3E1ECECE9EEFDFCFDF8F7F8EDEAEFEAE7ECEAE7ECEC
            E9EDF4F2F5FEFDFEF0EEF2EAE7EC8284EF4247F16065F3FAFAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF6F6FE5A5EF34247F18384EFE8E5ECEBE8EDF7F6F8FEFEFEFEFDFEFDFCFDFF
            FFFFFAF9FAEDEBEFEAE7ECAFAFEE4247F14449F1D6D7FCFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFCDCFFB4348F14247F16468F0CECDEDEAE7ECEAE7ECEDEBEFEEECF0EB
            E8EDEAE7ECE0DEEC8284EF4247F14247F1999BF7FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFBEC0FA5055F24247F1474BF17D7FEF9F9FEEC0BFEDC8C7EDA8
            A8EE8788EF5357F04247F14449F1999BF7FBFBFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFEEEEFE7F82F64247F14247F14247F14247F14247F142
            47F14247F14247F16065F3D6D7FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D4FCA8AAF98184F65A5EF35155F277
            7AF59DA0F8C4C5FBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          TabOrder = 2
          OnClick = BitBtn1Click
        end
      end
    end
  end
  object DSProdutos: TDataSource
    Left = 1008
    Top = 32
  end
end
