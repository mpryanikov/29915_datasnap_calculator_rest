//
// Created by the DataSnap proxy generator.
// 8/18/2014 10:39:16 AM
//

unit ClientClassesUnit1;

interface

uses System.JSON, Datasnap.DSProxyRest, Datasnap.DSClientRest, Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, Datasnap.DSProxy, System.Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXCDSReaders, Data.DBXJSONReflect;

type
  TServerMethods1Client = class(TDSAdminRestClient)
  private
    FEchoStringCommand: TDSRestCommand;
    FReverseStringCommand: TDSRestCommand;
    FAddCommand: TDSRestCommand;
    FSubtractCommand: TDSRestCommand;
  public
    constructor Create(ARestConnection: TDSRestConnection); overload;
    constructor Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    function EchoString(Value: string; const ARequestFilter: string = ''): string;
    function ReverseString(Value: string; const ARequestFilter: string = ''): string;
    function Add(a: Integer; b: Integer; const ARequestFilter: string = ''): Integer;
    function Subtract(a: Integer; b: Integer; const ARequestFilter: string = ''): Integer;
  end;

const
  TServerMethods1_EchoString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_ReverseString: array [0..1] of TDSRestParameterMetaData =
  (
    (Name: 'Value'; Direction: 1; DBXType: 26; TypeName: 'string'),
    (Name: ''; Direction: 4; DBXType: 26; TypeName: 'string')
  );

  TServerMethods1_Add: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'a'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'b'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 6; TypeName: 'Integer')
  );

  TServerMethods1_Subtract: array [0..2] of TDSRestParameterMetaData =
  (
    (Name: 'a'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: 'b'; Direction: 1; DBXType: 6; TypeName: 'Integer'),
    (Name: ''; Direction: 4; DBXType: 6; TypeName: 'Integer')
  );

implementation

function TServerMethods1Client.EchoString(Value: string; const ARequestFilter: string): string;
begin
  if FEchoStringCommand = nil then
  begin
    FEchoStringCommand := FConnection.CreateCommand;
    FEchoStringCommand.RequestType := 'GET';
    FEchoStringCommand.Text := 'TServerMethods1.EchoString';
    FEchoStringCommand.Prepare(TServerMethods1_EchoString);
  end;
  FEchoStringCommand.Parameters[0].Value.SetWideString(Value);
  FEchoStringCommand.Execute(ARequestFilter);
  Result := FEchoStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.ReverseString(Value: string; const ARequestFilter: string): string;
begin
  if FReverseStringCommand = nil then
  begin
    FReverseStringCommand := FConnection.CreateCommand;
    FReverseStringCommand.RequestType := 'GET';
    FReverseStringCommand.Text := 'TServerMethods1.ReverseString';
    FReverseStringCommand.Prepare(TServerMethods1_ReverseString);
  end;
  FReverseStringCommand.Parameters[0].Value.SetWideString(Value);
  FReverseStringCommand.Execute(ARequestFilter);
  Result := FReverseStringCommand.Parameters[1].Value.GetWideString;
end;

function TServerMethods1Client.Add(a: Integer; b: Integer; const ARequestFilter: string): Integer;
begin
  if FAddCommand = nil then
  begin
    FAddCommand := FConnection.CreateCommand;
    FAddCommand.RequestType := 'GET';
    FAddCommand.Text := 'TServerMethods1.Add';
    FAddCommand.Prepare(TServerMethods1_Add);
  end;
  FAddCommand.Parameters[0].Value.SetInt32(a);
  FAddCommand.Parameters[1].Value.SetInt32(b);
  FAddCommand.Execute(ARequestFilter);
  Result := FAddCommand.Parameters[2].Value.GetInt32;
end;

function TServerMethods1Client.Subtract(a: Integer; b: Integer; const ARequestFilter: string): Integer;
begin
  if FSubtractCommand = nil then
  begin
    FSubtractCommand := FConnection.CreateCommand;
    FSubtractCommand.RequestType := 'GET';
    FSubtractCommand.Text := 'TServerMethods1.Subtract';
    FSubtractCommand.Prepare(TServerMethods1_Subtract);
  end;
  FSubtractCommand.Parameters[0].Value.SetInt32(a);
  FSubtractCommand.Parameters[1].Value.SetInt32(b);
  FSubtractCommand.Execute(ARequestFilter);
  Result := FSubtractCommand.Parameters[2].Value.GetInt32;
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection);
begin
  inherited Create(ARestConnection);
end;

constructor TServerMethods1Client.Create(ARestConnection: TDSRestConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ARestConnection, AInstanceOwner);
end;

destructor TServerMethods1Client.Destroy;
begin
  FEchoStringCommand.DisposeOf;
  FReverseStringCommand.DisposeOf;
  FAddCommand.DisposeOf;
  FSubtractCommand.DisposeOf;
  inherited;
end;

end.

