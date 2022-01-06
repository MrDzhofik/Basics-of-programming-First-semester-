unit Notebook_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form3: TForm3;

implementation
uses Notebook;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var c:integer;
    fam:string[22];
begin
   c:=1;
   fam:=edit1.text;
   while not eof(f) do
      begin
        read(f,z);
        if fam=z.fam then
           begin
              c:=0;
              edit2.text:=z.name;
              edit3.text:=z.fon;
              edit4.text:=z.adr;
              break;
           end;
      end;
   if c<>0 then
      begin
         edit3.text:='��� ������';
      end;
   reset(f);
   end;


procedure TForm3.Button2Click(Sender: TObject);
  begin
   closefile(f);
   self.hide;
  end;

procedure TForm3.Edit1Click(Sender: TObject);
begin
   edit1.clear;
   edit2.clear;
   edit3.clear;
   edit4.clear;
end;

end.
