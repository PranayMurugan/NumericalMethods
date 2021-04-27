% Gauss Elimination Method
% Enter the Elements of the equations
clc
r = input('no. of rows: ');
c = input('no of columns: ');
a = input('enter the coefficients of the equation: ');
b = input('enter the answer to the equations: ');
ab=[a,b];

% Make all elements below the diagonal zero

for p=1:r-1
   for i = p:r-1
       alpha = ab(i+1,p) / ab(p,p);
       ab(i+1,:) = ab(i+1,:) - alpha * ab(p,:);
   end
end

% Solve the equations by substituting the values

zero = 0;
A = zeros(1,1000000);
for i=r:-1:1
    j = r;
    s = 0;
    while j>0
        s = s + (ab(i,j) * A(j));
        j=j-1;
    end
    A(i) = (ab(i,end) - s) / ab(i,i);
    A = A(1:r);
    
end
disp('the matrix is: ')
disp(ab)
disp('ans: ')
disp(A)
