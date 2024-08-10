unit dmLittleLinqData_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmLittleLinqData = class(TDataModule)
    conLittleLinq: TADOConnection;
    qryUsers: TADOQuery;
    dsrUsers: TDataSource;
    tblUsers: TADOTable;
    tblParents: TADOTable;
    tblEmergencyContact: TADOTable;
    tblEmergencyContacts: TADOTable;
    dsrLearners: TDataSource;
    dsrParents: TDataSource;
    dsrEmergencyContact: TDataSource;
    dsrEmergencyContacts: TDataSource;
    qryLearners: TADOQuery;
    qryParents: TADOQuery;
    qryEmergencyContact: TADOQuery;
    qryEmergencyContacts: TADOQuery;
    dsrUsers2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLittleLinqData: TdmLittleLinqData;

implementation

{$R *.dfm}

end.
