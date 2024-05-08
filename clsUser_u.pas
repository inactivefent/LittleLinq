unit clsUser_u;

interface
  uses dmLittleLinqData_u;

type
  tUser = class(TObject)
    private
      fUsername, fNames, fEmail, fPassword : String;
      fPrivileged : Boolean;
    public
      // Constructor
      constructor Create(sUser, sNames, sEmail, sPassword : String; Privileged : Boolean);

      // Mutator (Set procedures)
      procedure SetUsername(sUsername: String);
      procedure SetNames(sNames: String);
      procedure SetEmail(sEmail: String);
      procedure SetPassword(sPassword: String);
      procedure SetPrivileges(privileges: Boolean);

      // Accessor (Get functions)
      function GetUsername: String;
      function GetNames: String;
      function GetEmail: String;
      function GetPassword: String;
      function GetPrivileges: Boolean;
      function PrivilegedAsString: String;

      // Auxiliary
end;

implementation

{ TUser }

constructor tUser.Create(sUser, sNames, sEmail, sPassword : String; Privileged : Boolean);
begin
  fUsername := sUser;
  fNames := sNames;
  fEmail := sEmail;
  fPassword := sPassword;
  fPrivileged := Privileged;
end;

function tUser.GetEmail: String;
begin
  result := fEmail;
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

procedure tUser.SetEmail(sEmail: String);
begin
  fEmail := sEmail;
end;

procedure tUser.SetNames(sNames: String);
begin
  fNames := sNames;
end;

procedure tUser.SetPassword(sPassword: String);
begin
  fPassword := sPassword;
end;

procedure tUser.SetPrivileges(privileges: Boolean);
begin
  fPrivileged := privileges;
end;

procedure TUser.SetUsername(sUsername: String);
begin
  fUsername := sUsername;
end;

end.
