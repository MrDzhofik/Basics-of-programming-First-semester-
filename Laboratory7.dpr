program Laboratory7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var lines: array[1..10] of integer;
    temp, i, j, m, n, g, min, k: integer;
    matrix: array[1..10, 1..10] of integer;

function sum_of_line(numbers: array of integer; len: integer): integer;
  var g: integer;
      sum: integer;
  begin
    sum := 0;
    for g := 0 to len - 1 do
      sum := sum + numbers[g];
    sum_of_line := sum;
  end;

//function min_of_line(numbers: array of integer; len: integer): integer;
//  var g, min: integer;
//  begin
//    min := 100000000;
//    for g := 0 to len - 1 do
//      if numbers[g] < min then
//        min := numbers[g];
//    min_of_line := min;
//  end;

begin
  randomize();
  writeln('������� ������� �������:');
  readln(n, m);
  for i := 1 to n do
    begin
      for j := 1 to m do
        matrix[i, j] := random(512) + 1;
    end;

  for i := 1 to n do
    lines[i] := sum_of_line(matrix[i], m);

  writeln('�������� �������');
  for i := 1 to n do
    begin
      for j := 1 to m do
        write(matrix[i, j]: 4);
        write('  �����: ', lines[i]);
       writeln;
    end;

  k := 1;
  i := n;

  writeln('����� �����, ������������� �� �������������');

  repeat
    begin
      k := 0;
      for j := i downto 2 do
        begin
          if lines[i] < lines[j - 1] then
            begin
              temp := lines[i];
              lines[i] := lines[j - 1];
              lines[j - 1] := temp;
              k := k + 1;
            end;
        end;
      i := i - 1;
    end
  until (k = 0) and (i = 0);

  for i := 1 to n do
    write(lines[i]: 5);
  writeln;


  writeln('��������������� �������');
  i := 1;
  while i <= n do
    begin
      for j := 1 to 5 do
        begin
          if sum_of_line(matrix[j], m) = lines[i] then
            begin
              for k := 1 to m do
                write(matrix[j][k]: 4);
              writeln;
              i := i + 1;
            end;
        end;

    end;





//  for i := 1 to 10 do
//    begin
//      if lines[i] = 0 then
//        lines[i] := 10000000000;
//    end;

//  writeln('������������� �������:');
//  for i := 1 to n do
//    begin
//     min := min_of_line(matrix[i], m);
//     for j := 1 to n do
//       begin
//         if lines[j] = min then
//           begin
//             for g := 1 to m do
//               write(matrix[i, g]);
//             min := 0;
//             lines[i] := 100000000;
//           end;
//       end;
//       writeln;
//    end;





  readln;



end.
