program zad11;
var i,n,j:integer;
A:array of integer;
begin
  setlength(A, 20);
  writeln('Массив А:');
  for i := 0 to 19 do begin
    A[i] := random(201) - 100;
    if A[i] mod 2 = 0 then n := n + 1;
  end;
  write(A);
  writeln();
  writeln('Изменённый массив А:');
  for i := 0 to 19 do begin
    if A[i] mod 2 = 0 then begin
      SetLength(A, 21);
      for j := 20 downto i do begin
        if j <> i then A[j] := A[j-1];
      end;
      A[i+1] := n;
      break;
    end;
  end;
  write(A);
end.
