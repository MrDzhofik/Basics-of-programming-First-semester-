unit Deleting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses General;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var c : integer;
    name, provider : string[22];
    reserve: file of Product;
begin
    AssignFile(reserve, 'Rezerv.dat');
    rewrite(reserve);
    reset(fil);
    c := 1;
    name := Edit1.text;
    provider := Edit2.text;
    while not EOF(fil) do
      begin
        read(fil, rec);
        if ((name = rec.name) and (provider = rec.provider)) then
              c:=0
        else
          write(reserve, rec);
      end;
   if c<>0 then
      begin
        Application.MessageBox('��� ������ ��������', '��������� �����',mb_Ok);
      end
   else if c = 0 then
     begin
       reset(reserve);
       rewrite(fil);
       while not EOF(reserve) do
         begin
           read(reserve, rec);
           write(fil, rec);
         end;
         Application.MessageBox('������� ������� ������', '��������� �����',mb_Ok);
     end;
     Edit1.Clear;
     Edit2.Clear;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Close();
end;

end.
