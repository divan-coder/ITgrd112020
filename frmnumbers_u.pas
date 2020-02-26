unit frmnumbers_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Btnread: TButton;
    Btndesplay: TButton;
    Btnaveriege: TButton;
    Btnsort: TButton;
    Btnodd: TButton;
    memout: TMemo;
    Pnlaverage: TPanel;
    procedure BtnreadClick(Sender: TObject);
    procedure BtndesplayClick(Sender: TObject);
    procedure BtnaveriegeClick(Sender: TObject);
    procedure BtnsortClick(Sender: TObject);
    procedure BtnoddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  icount,iaverage:integer ;
  arrnumbers:ARRAY [1..30] of integer ;

implementation

{$R *.dfm}

procedure TForm1.BtnaveriegeClick(Sender: TObject);
var
  I: Integer;
begin
  iaverage:=0;
  for I := 1 to icount do
  begin
    iaverage:=iaverage+arrnumbers[i];
  end;
  iaverage:=iaverage div icount;
  pnlaverage.Caption :=inttostr(iaverage) ;
end;

procedure TForm1.BtndesplayClick(Sender: TObject);
var
  i: Integer;
begin
  memout.Clear;
  for i := 1 to icount do
  begin
    memout.Lines.Add(inttostr(arrnumbers[i]));
  end;

end;

procedure TForm1.BtnoddClick(Sender: TObject);
var
  I: Integer;
begin
  memout.Clear ;

  for I := 1 to icount do
    if odd(arrnumbers[i]) then
    begin
      memout.Lines.Add(inttostr(arrnumbers[i]));
    end;
end;

procedure TForm1.BtnreadClick(Sender: TObject);
var
  numfile:textfile ;
  snum:string;
begin
  icount:=0;
  assignfile(numfile,'numbers.txt');
  reset(numfile);
  while not eof(numfile) do
  begin
    inc(icount);
    readln(numfile,snum);
    arrnumbers[icount]:=strtoint(snum);
  end;
  closefile(numfile);
end;

procedure TForm1.BtnsortClick(Sender: TObject);
var
  I,J,ihold: Integer;
begin
  for I := 1 to icount - 1 do
    for J := i+1 to icount do
      if arrnumbers[i]>arrnumbers[j] then
      begin
        ihold:=arrnumbers[i];
        arrnumbers[i]:=arrnumbers[j] ;
        arrnumbers[j]:=ihold;
      end;
end;

end.
