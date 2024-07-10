unit frmLogsViewer_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TfrmLogsViewer = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogsViewer: TfrmLogsViewer;

implementation
  uses frmHome_u;

{$R *.dfm}

procedure TfrmLogsViewer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmHome.Show;
  Self.Hide;
end;

end.
