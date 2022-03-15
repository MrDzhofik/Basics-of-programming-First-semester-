unit Part_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, Figure2;

type
  TForm3 = class(TForm)
    ExitButton: TButton;
    Part_2_Image: TImage;
    SpeedLabel: TLabel;
    SpeedEdit: TEdit;
    SpinButton1: TSpinButton;
    StartButton: TButton;
    Timer1: TTimer;
    procedure ExitButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form3: TForm3;
  Rect: Trect;
  Rhomb1, Rhomb2, Rhomb3 : TRhomb;
  t: integer;
  time : integer;

implementation
var speed: integer;

{$R *.dfm}

procedure TForm3.ExitButtonClick(Sender: TObject);
begin
  Close();
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  Part_2_Image.Picture := nil;
  Part_2_Image.Canvas.Brush.Color := clWhite;
  Part_2_Image.Canvas.Pen.Color := clBlack;
  SpeedEDit.text := IntToStr(1);
  Timer1.Interval := 100;
end;

procedure TForm3.SpinButton1DownClick(Sender: TObject);
begin
   if StrToInt(SpeedEdit.text) = 1 then
    time := 1
  else
    time := StrToInt(SpeedEdit.text) - 1;
  SpeedEdit.Text := IntToStr(time);
  Timer1.Interval := round(100 / time);
end;

procedure TForm3.SpinButton1UpClick(Sender: TObject);
begin
  if StrToInt(SpeedEdit.text) = 10 then
    time := 10
  else
    time := StrToInt(SpeedEdit.text) + 1;
  SpeedEdit.Text := IntToStr(time);
  Timer1.Interval := round(100 / time);
end;

procedure TForm3.StartButtonClick(Sender: TObject);
begin
  Part_2_Image.Picture := nil;
  Rect := TRect.Create(100, 50, Part_2_Image);
  Rhomb1 := TRhomb.Create(200, 350, 150, 150, Part_2_Image);
  Rhomb2 := TRhomb.Create(200, 600, 300, 200, Part_2_Image);
  Rhomb3 := Trhomb.Create(200, 600, 200, 300, Part_2_Image);
  Timer1.Enabled := True;

  Rect.Draw();
  Rhomb1.Draw();
  Rhomb2.Draw();
  Rhomb3.Draw();
end;

procedure TForm3.Timer1Timer(Sender: TObject);
begin
  Rect.Move(t);
  Rhomb1.Move(t);
  Rhomb2.Move(t);
  Rhomb3.Move(t);
end;

end.
