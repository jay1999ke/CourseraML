data = load('ex1data1.txt');
y = data(:, 2);
a= data(:,1);
m = length(y); % number of training examples

X = [ones(m, 1),a(:)]; 
theta = zeros(2, 1);


J = 0;
for p = 1:m
  hashn= theta(2,1)*X(p,2);
  hip=theta(1,1)+hashn;
  hay=hip-y(p);
  J=J+hay**2;
endfor
J=J/(2*m);
disp(J);