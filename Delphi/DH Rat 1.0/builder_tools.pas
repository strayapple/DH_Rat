// Unit : Builder Tools
// Version : 0.2
// (C) Doddy Hackman 2015
// Credits : Resources based in http://www.hackforums.net/showthread.php?tid=1422700
// Examples :
// escribir_eof('stub.exe','-delimitador-','-delimitador-','test',123);
// leer_eof('stub.exe','-delimitador-','-delimitador-',123);
// escribir_recurso('stub.exe','test',123);
// leer_recurso(123);

unit builder_tools;

interface

uses SysUtils, Windows;

function leer_eof(ruta, delimitador1, delimitador2: string;
  clave: integer): string;
function escribir_eof(ruta, delimitador1, delimitador2, texto: string;
  clave: integer): bool;
function escribir_recurso(ruta: string; datos: string; clave: integer): bool;
function leyendo_recurso: string;
function leer_recurso(clave: integer): string;
function xor_now(texto: string; clave: integer): string;
function regex(text: string; deaca: string; hastaaca: string): string;

implementation

function xor_now(texto: string; clave: integer): string;
var
  numero: integer;
  contenido: string;
begin
  contenido := '';
  for numero := 1 to Length(texto) do
  begin
    contenido := contenido + Char(integer(texto[numero]) xor clave);
  end;
  Result := contenido;
end;

function regex(text: string; deaca: string; hastaaca: string): string;
begin
  Delete(text, 1, AnsiPos(deaca, text) + Length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

function leer_eof(ruta, delimitador1, delimitador2: string;
  clave: integer): string;
var
  ob: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  resultado: string;

begin

  ob := INVALID_HANDLE_VALUE;
  code := '';

  ob := CreateFile(pchar(ruta), GENERIC_READ, FILE_SHARE_READ, nil,
    OPEN_EXISTING, 0, 0);
  if (ob <> INVALID_HANDLE_VALUE) then
  begin
    SetFilePointer(ob, -9999, nil, FILE_END);
    ReadFile(ob, code, 9999, nose, nil);
    CloseHandle(ob);
  end;

  resultado := regex(code, delimitador1, delimitador2);
  resultado := xor_now(resultado, clave);
  Result := resultado;

end;

function escribir_eof(ruta, delimitador1, delimitador2, texto: string;
  clave: integer): bool;
var
  linea: string;
  aca: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  marca_uno: string;
  marca_dos: string;

begin

  aca := INVALID_HANDLE_VALUE;
  nose := 0;

  begin
    linea := delimitador1 + xor_now(texto, clave) + delimitador2;
    StrCopy(code, pchar(linea));
    aca := CreateFile(pchar(ruta), GENERIC_WRITE, FILE_SHARE_READ, nil,
      OPEN_EXISTING, 0, 0);
    if (aca <> INVALID_HANDLE_VALUE) then
    begin
      SetFilePointer(aca, 0, nil, FILE_END);
      WriteFile(aca, code, 9999, nose, nil);
      CloseHandle(aca);
      Result := True;
    end
    else
    begin
      Result := False;
    end;
  end;
end;

function escribir_recurso(ruta: string; datos: string; clave: integer): bool;
var
  escribiendo: THandle;
begin
  datos := xor_now('-0x646F646479206861636B6D616E-' + datos +
    '-0x646F646479206861636B6D616E-', clave);
  escribiendo := BeginUpdateResource(pchar(ruta), False);
  UpdateResource(escribiendo, MakeIntResource(10), 'CONFIGURATION', 0,
    pchar(datos), (Length(datos) + 1) * SizeOf(datos[1]));
  EndUpdateResource(escribiendo, False);
  Result := True;
end;

function leyendo_recurso: string;
var
  leyendo1: HRSRC;
  leyendo2: DWORD;
  leyendo3: THandle;
  leyendo4: pointer;
begin
  leyendo1 := FindResource(hInstance, 'CONFIGURATION', RT_RCDATA);
  leyendo2 := SizeofResource(hInstance, leyendo1);
  leyendo3 := LoadResource(hInstance, leyendo1);
  leyendo4 := LockResource(leyendo3);
  if leyendo4 <> nil then
  begin
    SetLength(Result, leyendo2 - 1);
    CopyMemory(@Result[1], leyendo4, leyendo2);
    FreeResource(leyendo3);
  end;
end;

function leer_recurso(clave: integer): string;
var
  datos: string;
begin
  datos := xor_now(leyendo_recurso, clave);
  datos := regex(datos, '-0x646F646479206861636B6D616E-',
    '-0x646F646479206861636B6D616E-');
  Result := datos;
end;

end.

// The End ?
