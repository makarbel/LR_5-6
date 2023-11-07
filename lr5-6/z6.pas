program zad6;
const n=5;
var A:array[1..n] of integer;
i:integer;
k:boolean;
begin
  writeln('Введите элементы массива:');
  for i:= 1 to n do
  begin
    write('arr[i]: ');
    readln(A[i]);
  end;
  k := True;
  for i:= 2 to n do
  begin
    if A[i] < A[i-1] then
    begin
      k := False;
      break;
    end;
  end;
  if k then
    writeln('Элементы массива упорядочены по возрастанию')
  else
    writeln('Элементы массива не упорядочены по возрастанию');
end.
