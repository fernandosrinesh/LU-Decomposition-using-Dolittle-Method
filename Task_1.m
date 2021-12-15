%% LU Decomposition using Dolittle Method ( Project_1)

%% Question 1: LU-Decompocition of Matrix A

%% Matrix A and column vector B
A = [ 9,16,10;40,64,98;30,55,133];
b = [12; 62;123];
n = 3;
%% LU-Decomposition A = L * U : Lower and Upper triangular matrices 
L = zeros(n,n);
U = zeros(n,n);

for k = 1:n
    L(k,k) =1;
    for j = k:n
        U(k,j) = A(k,j);
      for s = 1:(k-1)
          U(k,j) = U(k,j) - L(k,s)*U(s,j);
      end
    end
    for i = (k+1):n
        L(i,k) = A(i,k);
      for s = 1:(k-1)
          L(i,k) = L(i,k)- L(i,s)*U(s,k);
      end
        L(i,k) = L(i,k) / U(k,k);
    end
end

%% Output
L
U
det(A)


%% %% Question 2: Solve Ax = b

y = zeros(n,1);
y(1) = b(1);
for i=2:n
    y(i)= b(i);
    for j = 1:(i-1)
        y(i) = y(i) - L(i,j)*y(j)
    end
end

disp("Output of Y")
y

x = zeros(n,1);

x(n) = y(n)/U(n,n);
for i = (n-1):-1:1
    x(i) = y(i);
    for j=(i+1):n
        x(i) = x(i)-U(i,j)*x(j);
    end
    x(i) = x(i) / U(i,i);
end

disp("Output of X")
x



%% Outcome [ A * x = b ] 
disp("A * x = ")
N = A*x
b



