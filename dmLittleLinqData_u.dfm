object dmLittleLinqData: TdmLittleLinqData
  OldCreateOrder = False
  Height = 241
  Width = 295
  object conLittleLinq: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\joshb\OneD' +
      'rive\Documents\Github\LittleLinq\LittleLinq.mdb;Mode=ReadWrite;P' +
      'ersist Security Info=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object qryLittleLinq: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 56
    Top = 56
  end
  object dsrUsers: TDataSource
    DataSet = tblUsers
    Left = 56
    Top = 168
  end
  object tblUsers: TADOTable
    Active = True
    Connection = conLittleLinq
    CursorType = ctStatic
    TableName = 'tblUsers'
    Left = 56
    Top = 112
  end
end
