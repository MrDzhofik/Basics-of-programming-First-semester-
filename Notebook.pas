unit Notebook;

interface
uses
   Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
zap=record
     fam:string[22]; 		{�������}
     name:string[22];		{���}
     fon:string[22]; 		{�������}
     adr:string[22];		{�����}
  end;
var
  f:file of zap;
  z:zap;
  Form1: TForm1;

implementation
{$R *.dfm}
uses Notebook_1, Notebook_2;


procedure TForm1.Button1Click(Sender: TObject);
var size:integer;
begin
   AssignFile(f,'telefon.dat');
   {$I-} Reset(F); {$I+}
   if ioresult=0 then
     begin size := FileSize(f);
               seek(f,size);
     end
   else
     rewrite(f);
   Form4.Show;
   Form4.edit1.setfocus;
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
   AssignFile(f,'telefon.dat');
   reset(f);
   form3.show;
   form3.edit1.setfocus;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
   Close;
end;


end.
