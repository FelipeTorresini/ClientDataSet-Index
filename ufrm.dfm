object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 32
    Width = 505
    Height = 199
    Align = alBottom
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 336
    Top = 8
    Width = 121
    Height = 21
    DataField = 'total'
    DataSource = dsEdit
    TabOrder = 1
  end
  object ClientDataSet: TClientDataSet
    PersistDataPacket.Data = {
      510000009619E0BD010000001800000003000000000003000000510002496404
      000100000000000944657363726963616F010049000000010005574944544802
      00020014000556616C6F7202000200000000000000}
    Active = True
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'IdProdutoIdx'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor'
        DataType = ftWord
      end>
    IndexDefs = <
      item
        Name = 'IdProdutoIdx'
        Fields = 'Id'
        GroupingLevel = 1
      end>
    IndexName = 'IdProdutoIdx'
    Params = <>
    StoreDefs = True
    Left = 240
    Top = 136
    object ClientDataSetId: TIntegerField
      FieldName = 'Id'
    end
    object ClientDataSetDescricao: TStringField
      FieldName = 'Descricao'
    end
    object ClientDataSetValor: TWordField
      FieldName = 'Valor'
    end
    object ClientDataSettotal: TAggregateField
      FieldName = 'total'
      Active = True
      DisplayName = ''
      Expression = 'SUM(VALOR)'
      GroupingLevel = 1
      IndexName = 'IdProdutoIdx'
    end
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 376
    Top = 64
  end
  object dsEdit: TDataSource
    DataSet = ClientDataSet
    Left = 376
    Top = 136
  end
end
