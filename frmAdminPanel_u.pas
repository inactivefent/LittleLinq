unit frmAdminPanel_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmAdminPanel = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdminPanel: TfrmAdminPanel;

implementation
  uses frmUserSettings_u;

{$R *.dfm}

procedure TfrmAdminPanel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmUserSettings.Show;
  Self.Hide;
end;

end.
