unit dmLittleLinqData_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmLittleLinqData = class(TDataModule)
    conLittleLinq: TADOConnection;
    qryLittleLinq: TADOQuery;
    dsrUsers: TDataSource;
    tblUsers: TADOTable;
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
