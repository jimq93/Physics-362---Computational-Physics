function matrixmultiply
A= [7 8 9; 4 5 6];% syntax modify the contents of the matrices
B= [ 1 3 5; 2 4 6; 9 8 7];
[m1, n1]=size(A); %define size of matrices
[m2, n2]=size(B);
C=zeros(m1,n2);
for i= 1:m1 %row
    for j= 1:n2 %column
        for k= 1:n1 % commence
            C(i,j) = C (i,j)+ A(i,k)*B(k,j)
        end
    end
end
