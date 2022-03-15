unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    RadLabel: TLabel;
    AngleLabel: TLabel;
    LenLabel: TLabel;
    RadEdit: TEdit;
    LenEdit: TEdit;
    AngleEdit: TEdit;
    RadSpinButton: TSpinButton;
    LenSpinButton: TSpinButton;
    AngleSpinButton: TSpinButton;
    FirstImage: TImage;
    CleanButton: TButton;
    StartButton: TButton;
    ExitButton: TButton;
    ColorChoice: TRadioGroup;
    procedure FirstImageMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CleanButtonClick(Sender: TObject);
    procedure RadSpinButtonDownClick(Sender: TObject);
    procedure RadSpinButtonUpClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure StartButtonClick(Sender: TObject);
    procedure LenSpinButtonDownClick(Sender: TObject);
    procedure LenSpinButtonUpClick(Sender: TObject);
    procedure AngleSpinButtonDownClick(Sender: TObject);
    procedure AngleSpinButtonUpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type TRect = record
         case Integer of
           0: (Left, Top, Right, Bottom: Integer);
           1: (TopLeft, BottomRight: TPoint);
         end;
  type TCircuit = record
    Center_x, Center_y, Radius: integer;
  end;

  type Tline = record
    Left, Top: integer;
  end;


var
  Form2: TForm2;
  Rect : TRect;
  Circuit: TCircuit;
  Line: Tline;
  rad, len, angle: integer;

implementation

{$R *.dfm}

procedure TForm2.CleanButtonClick(Sender: TObject);
begin
   FirstImage.Picture := nil;
   FirstImage.Canvas.Brush.Color := clWhite;
end;

procedure TForm2.StartButtonClick(Sender: TObject);
begin
var x, y, rad, len, angle, dx, dy: integer; var radian : extended;
  case ColorChoice.ItemIndex of
    0 : FirstImage.Canvas.Brush.Color := clRed;
    1 : FirstImage.Canvas.Brush.Color := clGreen;
    2 : FirstImage.Canvas.Brush.Color := clBlue;
    3 : FirstImage.Canvas.Brush.Color := clBlack;
    4 : FirstImage.Canvas.Brush.Color := clYellow;
    5 : FirstImage.Canvas.Brush.Color := clWhite;
  end;
  case ColorChoice.ItemIndex of
    0 : FirstImage.Canvas.Pen.Color := clRed;
    1 : FirstImage.Canvas.Pen.Color := clGreen;
    2 : FirstImage.Canvas.Pen.Color := clBlue;
    3 : FirstImage.Canvas.Pen.Color := clBlack;
    4 : FirstImage.Canvas.Pen.Color := clYellow;
    5 : FirstImage.Canvas.Pen.Color := clWhite;
  end;
  if RadEdit.text <> '' then
    begin
      x := Circuit.Center_x;
      y := Circuit.Center_y;
      rad := StrToInt(RAdEdit.text);
      FirstImage.Canvas.Ellipse(x - rad, y - rad, x + rad, y + rad);
      RAdEdit.clear;
    end
  else if (LenEdit.text <> '') then
    begin
      x := Line.Left;
      y := Line.Top;
      if (AngleEdit.text = '') then
        angle := 0
      else
        angle := StrToInt(AngleEdit.text);
      len := StrToInt(LenEdit.text);
      radian := angle/180 * pi;
      dx := round(len*(cos(radian)));
      dy := round(len*(sin(radian)));
      FirstImage.Canvas.MoveTo(x, y);
      FirstImage.Canvas.LineTo(X + dx, Y - dy);
      LenEdit.clear;
      AngleEdit.clear;
    end;
end;

procedure TForm2.ExitButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  FirstImage.Picture := nil;
  FirstImage.Canvas.Brush.Color := clWhite;
end;

procedure TForm2.FirstImageMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
    begin
      Line.Left:=x;
      Line.Top:=y;
      AngleLabel.Enabled := True;
      LenLabel.Enabled := True;
      RadLabel.Enabled := False;
      LenEdit.Enabled := True;
      AngleEdit.Enabled := True;
      RadEdit.Enabled := False;
      RadSpinButton.Enabled := False;
      LenSpinButton.Enabled := True;
      AngleSpinButton.Enabled := True;
      LenEdit.setfocus;
    end
  else
    begin
      Circuit.Center_x := x;
      Circuit.Center_y := y;
      RadLabel.Enabled := True;
      AngleLabel.Enabled := False;
      LenLabel.Enabled := False;
      RAdEdit.Enabled := True;
      LenEdit.Enabled := False;
      AngleEdit.Enabled := False;
      RAdSpinButton.Enabled := True;
      LenSpinButton.Enabled := False;
      AngleSpinButton.Enabled := False;
      RadEdit.setfocus;
    end;
end;

procedure TForm2.RadSpinButtonDownClick(Sender: TObject);
begin
    if RadEdit.text <> '' then
       rad := StrtoInt(RadEdit.text)
    else
      rad := 0;
    rad := rad - 1;
    RadEdit.text := IntToStr(rad);
end;

procedure TForm2.RadSpinButtonUpClick(Sender: TObject);
begin
    if RadEdit.text <> '' then
       rad := StrtoInt(RadEdit.text)
    else
      rad := 0;
    rad := rad + 1;
    RadEdit.text := IntToStr(rad);
end;

procedure TForm2.LenSpinButtonDownClick(Sender: TObject);
begin
  if LenEdit.text <> '' then
    len := StrtoInt(LenEdit.text)
  else
    len := 0;
  len := len - 1;
  LenEdit.text := IntToStr(len);
end;

procedure TForm2.LenSpinButtonUpClick(Sender: TObject);
begin
  if LenEdit.text <> '' then
    len := StrtoInt(LenEdit.text)
  else
    len := 0;
  len := len + 1;
  LenEdit.text := IntToStr(len);
end;

procedure TForm2.AngleSpinButtonDownClick(Sender: TObject);
begin
  if AngleEdit.text <> '' then
    angle := StrtoInt(AngleEdit.text)
  else
    angle := 0;
  angle := angle - 1;
  AngleEdit.text := IntToStr(angle);
end;

procedure TForm2.AngleSpinButtonUpClick(Sender: TObject);
begin
  if AngleEdit.text <> '' then
    angle := StrtoInt(AngleEdit.text)
  else
    angle := 0;
  angle := angle + 1;
  AngleEdit.text := IntToStr(angle);
end;

end.
