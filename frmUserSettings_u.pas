unit frmUserSettings_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, clsUser_u;

type
  TfrmUserSettings = class(TForm)
    pnlUserSettings: TPanel;
    imgUserIcon: TImage;
    lblUserInformation: TLabel;
    lblUsername: TLabel;
    btnAdmin: TButton;
    btnEdit: TButton;
    edtUsername: TEdit;
    lblNames: TLabel;
    edtNames: TEdit;
    edtEmail: TEdit;
    lblEmail: TLabel;
    lblPassword: TLabel;
    edtPassword: TEdit;
    btnCancel: TButton;
    btnSave: TButton;
    // Custom Functions & Procedures

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnAdminClick(Sender: TObject);
  private
    { Private declarations }
    objUser: tUser;
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

procedure TfrmUserSettings.btnCancelClick(Sender: TObject);
begin
  // Cancel edit operation and revert changes
  edtUsername.Text := objUser.GetUsername;
  edtNames.Text := objUser.GetNames;
  edtEmail.Text := objUser.GetEmail;
  edtPassword.Text := objUser.GetPassword;

  // Disabling Cancel button
  btnCancel.Enabled := false;
  // Hiding and disabling save button
  btnSave.Hide;
  btnSave.Enabled := false;
  // Showing and enabling edit button
  btnEdit.Show;
  btnEdit.Enabled := true;
end;

procedure TfrmUserSettings.btnEditClick(Sender: TObject);
begin
  // Setting edits ReadOnly = False so user can edit account information
  edtUsername.ReadOnly := false;
  edtNames.ReadOnly := false;
  edtEmail.ReadOnly := false;
  edtPassword.ReadOnly := false;

  // Enabling save & cancel & edit button
  btnCancel.Enabled := true;
  btnSave.Show;
  btnSave. Enabled := true;
  btnEdit.Hide;
end;

procedure TfrmUserSettings.btnSaveClick(Sender: TObject);
begin
  // Disabling and hiding save button
  btnSave.Enabled := false;
  btnSave.Hide;
  btnCancel.Enabled := false;
  btnEdit.Enabled := true;
  btnEdit.Show;
  // Confirmation
  case MessageDlg('Are you sure you would like to save these changes?', mtWarning, [mbYes, mbNo], 1) of
    mrYes:
      begin
        // Validation check, checking if values in edit boxes have changed
        if not (edtUsername.Text = objUser.GetUsername) then begin
          // Change username
          objUser.SetUsername(edtUsername.Text);
        end else if not (edtNames.Text = objUser.GetNames) then begin
          // Change Names
          objUser.SetNames(edtNames.Text);
        end else if not (edtEmail.Text = objUser.GetEmail) then begin
          // Change Email
          objUser.SetNames(edtEmail.Text);
        end else if not (edtPassword.Text = objUser.GetPassword) then begin
          // Change Password
          objUser.SetNames(edtPassword.Text);
        end else begin
          Exit;
        end;
      end;
    mrNo:
      begin
        Exit;
      end;
  end;
end;

procedure TfrmUserSettings.FormActivate(Sender: TObject);
begin
  objUser := frmHome.objUser;

  // Populating all edit boxs
  edtUsername.Text := objUser.GetUsername;
  edtNames.Text := objUser.GetNames;
  edtEmail.Text := objUser.GetEmail;
  edtPassword.Text := objUser.GetPassword;

  // Enabling admin button depending on user privileges
  btnAdmin.Enabled := objUser.GetPrivileges;
end;

procedure TfrmUserSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmHome.Show;
end;

end.
