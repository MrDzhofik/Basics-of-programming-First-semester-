unit Adding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, General;

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
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  rec.name := Edit1.text;
  rec.provider := Edit2.text;
  rec.quantity := StrToInt(Edit3.text);
  rec.price := StrToInt(Edit4.text);
  Edit1.clear;
  Edit2.clear;
  Edit3.clear;
  Edit4.clear;
  write(fil, rec);
  Edit1.setfocus;
  Application.MessageBox('������� ������� ��������', '��������� �����',mb_Ok);

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
    Close;
end;

end.
