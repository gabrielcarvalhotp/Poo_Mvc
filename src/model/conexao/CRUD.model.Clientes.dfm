object DMClientes: TDMClientes
  OldCreateOrder = False
  Height = 270
  Width = 395
  object FDQClientes: TFDQuery
    Connection = DMConexao.FDConnection
    SQL.Strings = (
      'select * from clientes')
    Left = 24
    Top = 16
    object FDQClientesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDQClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object FDQClientesTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object FDQClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object FDQClientesDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      Required = True
    end
  end
  object DSClientes: TDataSource
    DataSet = FDQClientes
    Left = 24
    Top = 80
  end
end
