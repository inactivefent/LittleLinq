unit frmLearnerManagement_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TfrmLearnerManagement = class(TForm)
    pnlLearnerManagement: TPanel;
    dbgLearners: TDBGrid;
    pnlHeader: TPanel;
    pnlFooter: TPanel;
    lblLearnerManagement: TLabel;
    btnAddLearner: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLearnerManagement: TfrmLearnerManagement;

implementation
  uses frmHome_u;

{$R *.dfm}

procedure TfrmLearnerManagement.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmHome.Show;
  Self.Hide;
end;

end.
