#...............for i no......................
A = matrix(c(10,9,20,2,-8,14,30,15,40),ncol = 3, byrow = TRUE);A
B = matrix(c(8,12,1,-2,10,18,25,46,6),ncol = 3, byrow = TRUE);B
#.............for i ........................
x1 = A[,2];x1
x2 = A[3,];x2
x3 = A[2,3];x3

#...................for ii no................
x4 = A+B;x4
x5 = A-B;x5
x6 = A*B;x6
x7 = A/B;x7


#....................for iii no................
#tarnspose of matrix A
x8 = t(A);x8
#determinat of matrix A
x9 = det(A);x9
#inverse matrix of A
y1 = solve(A);y1
#find identity matrix of A
y2 = (x8)%*%A;y2

#.............for iv number......................
b = c(12,18,20)
x = solve(A,b);x
quardic_form = t(x)%*%y1%*%x;quardic_form

#................for v no..........................
C = rbind(A,B);C
D = cbind(A,B);D

y3 = C[,1];y3
y4 = C[,3];y4










