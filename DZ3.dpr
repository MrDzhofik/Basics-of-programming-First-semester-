program DZ3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type Snowball = object
  private diametr: integer;
  procedure Init(d: integer);
  procedure Print;
  function Show: integer;
  function Weight: integer;
end;
procedure Snowball.Init;
  begin
    diametr := d;
  end;
procedure Snowball.Print;
  begin
    writeln('������� �������� ����: ', diametr);
  end;
function Snowball.Show;
  begin
    Result := diametr;
  end;
function Snowball.Weight;
  begin
    Result := diametr * 300;
  end;

type Snowman = object
  private name: string[15];
  private snowballs: array[1..7] of Snowball;
  private len: integer;
  procedure Init(n: string; arr: array of Snowball; l:integer);
  procedure Print;
  function Height: integer;
  function Weight: integer;
end;
procedure Snowman.Init;
  begin
    var i: integer;
    len := l;
    i := 0;
    for i := 0 to len - 1 do
      snowballs[i + 1] := arr[i];
    name := n;
  end;
procedure Snowman.Print;
  begin
    writeln('��� ���������: ', name);
  end;
function Snowman.Height;
  begin
    var i, sum: integer;
    sum := 0;
    for i := 1 to len do
      sum := sum + snowballs[i].diametr;
    Result := sum;
  end;
function Snowman.Weight;
  begin
    var i, sum: integer;
    sum := 0;
    for i := 1 to len do
      sum := sum + snowballs[i].Weight;
    Result := sum;
  end;

var first, second, third: Snowball;
    man: Snowman;
    arr: array[1..3] of Snowball;
    i: integer;
begin
  i := 1;
  randomize();
  first.Init(random(20) + 1);
  first.Print;
  writeln('���: ', first.Weight);
  arr[i] := first;
  i := i + 1;
  writeln;
  second.Init(random(15) + 1);
  second.Print;
  writeln('���: ', second.Weight);
  arr[i] := second;
  i := i + 1;
  writeln;
  third.Init(random(25) + 1);
  third.Print;
  writeln('���: ', third.Weight);
  arr[i] := third;
  writeln;

  man.Init('Michael', arr, 3);
  man.Print;
  writeln('������: ', man.Height);
  writeln('���: ', man.Weight);
  man.Height;
  man.Weight;
  readln;
end.
//type Citizen = object         // Part 2
//    private FIO: string[25];
//    private birthday_year: integer;
//    public procedure Init(f: string; year:integer);
//    public procedure Print;
//    public function age: integer;
//end;
//procedure Citizen.Init;
//  begin
//    FIO := f;
//    birthday_year := year;
//  end;
//procedure Citizen.Print;
//    begin
//      writeln('���: ', FIO);
//      writeln('��� ��������: ', birthday_year);
//    end;
//function Citizen.age: integer;
//  begin
//    Result := 2021 - birthday_year;
//  end;
//type Recruit = object(Citizen)
//  private status: boolean;
//  public procedure Init(f: string; year: integer);
//  public procedure Print;
//  public procedure Category;
//  public function summonning: boolean;
//end;
//procedure Recruit.Init;
//  begin
//    inherited Init(f, year);
//  end;
//procedure Recruit.Print;
//  begin
//    inherited Print;
//    writeln('�����: ', status);
//  end;
//procedure Recruit.Category;
//  begin
//  if (age >= 18) and (age <= 27) then
//    status := True
//  else
//    status := False;
//  end;
//
//function Recruit.summonning: boolean;
//  begin
//    if status then
//      Result := True
//    else
//      Result := False;
//  end;
//var first, second, third: Recruit;
//begin
//   first.Init('������ ������� ����������', 2000);
//   first.Category;
//   first.Print;
//   writeln('�������: ', first.age);
//   writeln('�������� � ���� ����: ', first.summonning);
//   writeln;
//
//   second.Init('������� ���� ���������', 1994);
//   second.Category;
//   second.Print;
//   writeln('�������: ', second.age);
//   writeln('�������� � ���� ����: ', second.summonning);
//   writeln;
//
//   third.Init('������� ������ ��������', 1974);
//   third.Category;
//   third.Print;
//   writeln('�������: ', third.age);
//   writeln('�������� � ���� ����: ', third.summonning);
//   readln;
//end.

//type �ar = object  // Part 1
//  private mark: string;
//  private poe: integer;
//  public procedure Init(m: string; p: integer);
//  public procedure print;
//  public function tax: integer;
//end;
//function �ar.tax: integer;
//  begin
//    result := poe * 12;
//  end;
//procedure �ar.Init;
//  begin
//    mark := m;
//    poe := p;
//  end;
//procedure �ar.print;
//  begin
//    writeln('�����: ', mark);
//    writeln('��������: ', poe)
//  end;
//
//var audi, bmw, mercedes, volga: �ar;
//
//begin
//  audi.Init('Audi TT', 210);
//  writeln('������������ �����: ', audi.tax);
//  audi.print;
//  writeln;
//  bmw.Init('BMW M3', 320);
//  writeln('������������ �����: ', bmw.tax);
//  bmw.print;
//  writeln;
//  mercedes.Init('Mercedes Mclaren', 500);
//  writeln('������������ �����: ', mercedes.tax);
//  mercedes.print;
//  writeln;
//  volga.Init('����� 2110', 210);
//  writeln('������������ �����: ', volga.tax);
//  volga.print;
//  readln;
//end.
