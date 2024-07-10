program frmHome_p;

uses
  Forms,
  frmHome_u in 'frmHome_u.pas' {frmHome},
  dmLittleLinqData_u in 'dmLittleLinqData_u.pas' {dmLittleLinqData: TDataModule},
  clsUser_u in 'clsUser_u.pas',
  frmUserSettings_u in 'frmUserSettings_u.pas' {frmUserSettings},
  frmAdminPanel_u in 'frmAdminPanel_u.pas' {frmAdminPanel},
  frmLearnerManagement_u in 'frmLearnerManagement_u.pas' {frmLearnerManagement},
  frmParentManagement_u in 'frmParentManagement_u.pas' {frmParentManagement},
  frmLogsViewer_u in 'frmLogsViewer_u.pas' {frmLogsViewer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TdmLittleLinqData, dmLittleLinqData);
  Application.CreateForm(TfrmUserSettings, frmUserSettings);
  Application.CreateForm(TfrmAdminPanel, frmAdminPanel);
  Application.CreateForm(TfrmLearnerManagement, frmLearnerManagement);
  Application.CreateForm(TfrmParentManagement, frmParentManagement);
  Application.CreateForm(TfrmLogsViewer, frmLogsViewer);
  Application.Run;
end.
