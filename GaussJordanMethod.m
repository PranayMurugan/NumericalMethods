% Gauss Jordan Method 
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

% Make all elements above the diagonal zero

for p=r:-1:1
    for i=p:-1:2
        alpha = ab(i-1,p) / ab(p,p);
        ab(i-1,:) = ab(i-1,:) - alpha * ab(p,:);
    end
end

% Equate the equations

A=zeros(r,1);
for i=r:-1:1
    A(i) = ab(i,end) / ab(i,i);
end
disp('the matrix is: ')
disp(ab)
disp('ans: ')
disp(A)
   

    
