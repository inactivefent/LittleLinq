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

      // Accessor (Get functions)
      function GetUsername: String;
      function GetNames: String;
      function GetEmail: String;
      function GetPassword: String;
      function GetPrivileges: Boolean;

      // Auxiliary
      function PrivilegedAsString: String;
      function UpdateDatabase(sUsername, sParam, sOldValue, sNewValue: String): Boolean;
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
  if UpdateDatabase(fUsername, 'email', fEmail, sEmail) then begin
    fEmail := sEmail;
  end else begin
    Exit;
  end;
end;

procedure tUser.SetNames(sNames: String);
begin
  if UpdateDatabase(fUsername, 'names', fNames, sNames) then begin
    fNames := sNames;
  end else begin
    Exit;
  end;
end;

procedure tUser.SetPassword(sPassword: String);
begin
  if UpdateDatabase(fUsername, 'username', fPassword, sPassword) then begin
    fPassword := sPassword;
  end else begin
    Exit;
  end;
end;


procedure TUser.SetUsername(sUsername: String);
begin
  if UpdateDatabase(fUsername, 'username', fUsername, sUsername) then begin
    fUsername := sUsername;
  end else begin
    // FIND BETTER ALTERNATIVE
    Exit;
  end;
end;

function tUser.UpdateDatabase(sUsername, sParam, sOldValue, sNewValue: String): Boolean;
begin
  // Open the dataset
  dmLittleLinqData.tblUsers.Open;

  // Check if the user with the specified username exists
  if (dmLittleLinqData.tblUsers.Locate('username', sUsername, [])) then begin

    // Handle each parameter case
    if (sParam = 'username') then begin
      if (dmLittleLinqData.tblUsers['username'] = sOldValue) then begin
        dmLittleLinqData.tblUsers.Edit;
        dmLittleLinqData.tblUsers['username'] := sNewValue;
        dmLittleLinqData.tblUsers.Post;
        Result := true;
      end else begin
        Result := false;
      end;
    end else if (sParam = 'names') then begin
      if (dmLittleLinqData.tblUsers['names'] = sOldValue) then begin
        dmLittleLinqData.tblUsers.Edit;
        dmLittleLinqData.tblUsers['names'] := sNewValue;
        dmLittleLinqData.tblUsers.Post;
        Result := true;
      end else begin
        Result := false;
      end;
    end else if (sParam = 'email') then begin
      if (dmLittleLinqData.tblUsers['email'] = sOldValue) then begin
        dmLittleLinqData.tblUsers.Edit;
        dmLittleLinqData.tblUsers['email'] := sNewValue;
        dmLittleLinqData.tblUsers.Post;
        Result := true;
      end else begin
        Result := false;
      end;
    end else if (sParam = 'password') then begin
      if (dmLittleLinqData.tblUsers['password'] = sOldValue) then begin
        dmLittleLinqData.tblUsers.Edit;
        dmLittleLinqData.tblUsers['password'] := sNewValue;
        dmLittleLinqData.tblUsers.Post;
        Result := true;
      end else begin
        Result := false;
      end;
    end else begin
      // Parameter not recognized
      Result := false;
    end;
  end else begin
    // Username not found
    Result := false;
  end;

  // Close the dataset
  dmLittleLinqData.tblUsers.Close;
end;
end.
