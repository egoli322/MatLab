% Yahor Liashko, EDlfu25/2, 05.11.2026, variant 5
clc, clearvars;
 
stud = {'Joe','Peach','Sausio 13g'};
field = {'Name','Surname','Address'};


studentStruct = cell2struct(stud,field,2);
disp(studentStruct);

if isstruct(studentStruct) 
    disp("It's a structure");
else 
    disp("It's not a structure")
end


%%
clc, clearvars;

while true
    x = input('Enter x: ');
    y = input('Enter y: ');

    if x == 0 && y == 0
        break;
    end

    if x == 0
        disp('x cannot be 0');
        continue;
    end

    b = atan(y/x);


    for n = 1:10
        left = n*(cos(b) + 1i*sin(b))^n;
        right = (cos(n*b)+ 1i*sin(n*b));
        diff = abs(left - right);

        result(n,:) = [left, right, diff];
    end
    
  resTable = array2table(result, ...
      "VariableNames",{'Left','Right','Difference'});
  disp(resTable);
end
        
