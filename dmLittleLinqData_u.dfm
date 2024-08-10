object dmLittleLinqData: TdmLittleLinqData
  OldCreateOrder = False
  Height = 302
  Width = 606
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
  object qryUsers: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 56
    Top = 56
  end
  object dsrUsers: TDataSource
    DataSet = qryUsers
    Left = 56
    Top = 120
  end
  object tblUsers: TADOTable
    Active = True
    Connection = conLittleLinq
    CursorType = ctStatic
    TableName = 'tblUsers'
    Left = 120
    Top = 56
  end
  object tblParents: TADOTable
    Active = True
    Connection = conLittleLinq
    CursorType = ctStatic
    TableName = 'tblParents'
    Left = 312
    Top = 112
  end
  object tblEmergencyContact: TADOTable
    Active = True
    Connection = conLittleLinq
    CursorType = ctStatic
    TableName = 'tblEmergencyContacts'
    Left = 400
    Top = 112
  end
  object tblEmergencyContacts: TADOTable
    Active = True
    Connection = conLittleLinq
    CursorType = ctStatic
    TableName = 'tblEmergencyContacts'
    Left = 512
    Top = 112
  end
  object dsrLearners: TDataSource
    DataSet = qryLearners
    Left = 248
    Top = 112
  end
  object dsrParents: TDataSource
    DataSet = tblParents
    Left = 312
    Top = 176
  end
  object dsrEmergencyContact: TDataSource
    DataSet = tblEmergencyContact
    Left = 400
    Top = 176
  end
  object dsrEmergencyContacts: TDataSource
    DataSet = tblEmergencyContacts
    Left = 512
    Top = 176
  end
  object qryLearners: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 248
    Top = 56
  end
  object qryParents: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 312
    Top = 56
  end
  object qryEmergencyContact: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 400
    Top = 56
  end
  object qryEmergencyContacts: TADOQuery
    Connection = conLittleLinq
    Parameters = <>
    Left = 512
    Top = 56
  end
  object dsrUsers2: TDataSource
    DataSet = tblUsers
    Left = 120
    Top = 120
  end
end
