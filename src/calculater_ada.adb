with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Calculater_Ada is
   User_Choice, Num1, Num2, Result : Integer;
begin
   Put_Line ("1: Add");
   Put_Line ("2: Subtract");
   Put_Line ("3: Times");
   Put_Line ("4: Divide");
   Put_Line ("5: Exponentiation");
   Get (Item => User_Choice);
   Put ("Enter the first number: ");
   Get (Item => Num1);
   Put ("Enter the second number: ");
   Get (Item => Num2);
   Skip_Line;
   case User_Choice is
      when 1 =>
         Result := Num1 + Num2;
      when 2 =>
         Result := Num1 - Num2;
      when 3 =>
         Result := Num1 * Num2;
      when 4 =>
         Result := Num1 / Num2;
      when 5 =>
         Result := Num1 ** Num2;
      when others =>
         Put_Line("Invalid choice");
         return;
   end case;
   Put ("The result is: ");
   Put (Item => Result);
end Calculater_Ada;