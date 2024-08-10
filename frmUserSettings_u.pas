unit frmUserSettings_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TfrmUserSettings = class(TForm)
    pnlUserSettings: TPanel;
    imgUserIcon: TImage;
    lblUserInformation: TLabel;
    lblUsername: TLabel;
    btnAdmin: TButton;
    edtUsername: TEdit;
    lblNames: TLabel;
    edtNames: TEdit;
    edtEmail: TEdit;
    lblEmail: TLabel;
    lblPassword: TLabel;
    edtPassword: TEdit;
    btnClose: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUserSettings: TfrmUserSettings;

implementation
  uses frmHome_u, frmAdminPanel_u;

{$R *.dfm}

procedure TfrmUserSettings.btnAdminClick(Sender: TObject);
begin
  frmAdminPanel.Show;
  Self.Hide;
end;

procedure TfrmUserSettings.FormActivate(Sender: TObject);
begin
  // Populating all edit boxs
  edtUsername.Text := frmHome.objUser.GetUsername;
  edtNames.Text := frmHome.objUser.GetNames;
  edtEmail.Text := frmHome.objUser.GetEmail;
  edtPassword.Text := frmHome.objUser.GetPassword;

  // Enabling admin button depending on user privileges
  btnAdmin.Enabled := frmHome.objUser.GetPrivileges;
end;

procedure TfrmUserSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmHome.Show;
end;

end.
