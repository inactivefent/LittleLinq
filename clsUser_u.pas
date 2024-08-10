unit clsUser_u;

interface
  uses dmLittleLinqData_u, SysUtils, Dialogs;

type
  tUser = class(TObject)
    private
      fID, fUsername, fNames, fEmail, fPassword, fClass : String;
      fPrivileged : Boolean;
    public
      // Constructor
      constructor Create(sID, sUser, sNames, sEmail, sClass, sPassword : String; Privileged : Boolean);

      // Accessor (Get functions)
      function GetID: string;
      function GetUsername: String;
      function GetNames: String;
      function GetEmail: String;
      function GetPassword: String;
      function GetClass: String;
      function GetPrivileges: Boolean;

      // Auxiliary
      function PrivilegedAsString: String;
end;

implementation

{ TUser }

constructor tUser.Create(sID, sUser, sNames, sEmail, sClass, sPassword : String; Privileged : Boolean);
begin
  fID := sID;
  fUsername := sUser;
  fNames := sNames;
  fEmail := sEmail;
  fPassword := sPassword;
  fClass := sClass;
  fPrivileged := Privileged;
end;

function tUser.GetClass: String;
begin
  result := fClass;
end;

function tUser.GetEmail: String;
begin
  result := fEmail;
end;

function tUser.GetID: string;
begin
  result := fID;
end;

function tUser.GetNames: String;
begin
 result := fNames;
end;

function tUser.GetPassword: String;
begin
  result := fPassword;
end;

function tUser.GetPrivileges: Boolean;
begin
  result := fPrivileged;
end;

function tUser.GetUsername: String;
begin
  result := fUsername;
end;

function tUser.PrivilegedAsString: String;
begin
  if (fPrivileged = true) then begin
    result := 'True';
  end else begin
    result := 'False';
  end;
end;

end.
