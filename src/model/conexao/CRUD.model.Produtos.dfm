object DMProdutos: TDMProdutos
  OldCreateOrder = False
  Height = 150
  Width = 215
  object DSProdutos: TDataSource
    DataSet = FDQProdutos
    Left = 40
    Top = 72
  end
  object FDQProdutos: TFDQuery
    Left = 40
    Top = 16
  end
end
