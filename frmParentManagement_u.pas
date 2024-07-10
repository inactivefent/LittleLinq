unit frmParentManagement_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfrmParentManagement = class(TForm)
    pnlParentManagement: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParentManagement: TfrmParentManagement;

implementation
  uses frmHome_u;

{$R *.dfm}

procedure TfrmParentManagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmHome.Show;
  Self.Hide;
end;

end.
