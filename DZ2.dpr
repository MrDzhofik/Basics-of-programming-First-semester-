program DZ2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var a: array[1..11, 1..11] of integer;
    n, m, i, j, otr, otr_max, line: integer;

begin
  writeln('������� ����� n(������) � m(�������): ');    // ����� 2
  readln(n, m);
  writeln('������� ��������� �������� �������: ');
  for i := 1 to n do
    begin
      for j := 1 to m do read(a[i,j]);
      readln;
    end;
  otr := 0;
  otr_max := 0;
  for i := 1 to n do
    begin
      for j := 1 to m do
        begin
          if a[i,j] <= 0 then
            otr := otr + 1;
        end;
        if otr > otr_max then
          begin
            otr_max := otr;
            line := i;
          end;
        otr := 0;
    end;

    writeln('�����:');
    for i := 1 to n do
      begin
        if i <> line then
          begin
            for j := 1 to m do write(a[i,j]:5);
            writeln;
          end;
      end;
  readln;
end.

//  writeln('������� n');         ����� 1
//  readln(n);
//  writeln('������� ', n, ' �����. �� ������ ����� � ������');
//  for i := 1 to n do readln(a[i]);
//  for j := 1 to n - 1 do
//  begin
//    min := a[j];
//    imin := j;
//    for i := j + 1 to n do
//    begin
//      if a[i] < min then
//      begin
//        min := a[i];
//        imin := i;
//      end;
//    end;
//    a[imin] := a[j];
//    a[j] := min;
//  end;
//  for i := 1 to n do
//    write(a[i], ' ');
//  readln;

