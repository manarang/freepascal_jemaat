unit global;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function hari: String;
function CHari(Waktu: TDateTime): String;
function CDate(Waktu: String): TDateTime;

implementation

function hari: String;
var
 YY,MM,DD: Word;
begin
  DecodeDate(Date,YY,MM,DD);
  hari:= format('%.2d-%.2d-%d',[dd,mm,yy]);
end;
//convert date to spesial format string
function CHari(Waktu: TDateTime): String;
var
  YY,MM,DD: Word;
  begin
   DecodeDate(Waktu,YY,MM,DD);
   CHari:= format('%.2d-%.2d-%d',[dd,mm,yy]);
  end;
//convert string to spesial format date
function CDate(Waktu: String): TDateTime;
var
  YY,MM,DD: Word;
  begin
   DecodeDate(StrToDate(Waktu),YY,MM,DD);
   CDate:= StrToDate(format('%.2d-%.2d-%d',[yy,mm,dd]));
  end;
end.

