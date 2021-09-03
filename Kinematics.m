function [] = Kinematics(x2,y2,x3,y3)
A1 = 10;
A2 = 10;

%DH Parameters for the 3R manipulator
DH = [0 0 0 0; 0 0 A1 0; 0 0 A2 0]    
A(1)=Link(DH(1,1:4), 'modified')
A(2)=Link(DH(2,1:4), 'modified')
A(3)=Link(DH(3,1:4), 'modified')

My3R = SerialLink(A,'name', 'Number Writing Manipulator');


%INVERSE KINMEATICS FOR THE POINT (x2,y2)
qo2 = acos(((x2^2+y2^2)-(A1^2 + A2^2))/(2*A1*A2));
qo1 = atan(y2/x2)-atand((A2*sind(qo2))/(A1+A2*cosd(qo2)));

to1 = radtodeg(qo1); 
to2 = radtodeg(qo2);

joint_angles1 = [to1 to2]

ao1 = A1*cosd(to1); ao2 = A1*sind(to1);


%INVERSE KINMEATICS FOR THE POINT (x1,y1)
q12 = acos(((x3^2+y3^2)-(A1^2 + A2^2))/(2*A1*A2));
q11 = atan(y3/x3)-atand((A2*sind(q12))/(A1+A2*cosd(q12)));

t11 = radtodeg(q11);
t12 = radtodeg(q12);

joint_angles2 = [t11 t12]

a11 = A1*cosd(t11); a12 = A1*sind(t12);

%Joint Trajectory
qi =[qo1 qo2 0];
qd =[q11 q12 0];
qt = jtraj(qi,qd,50)

%Cartesian Trajectory
Ti = My3R.fkine(qi)
Td = My3R.fkine(qd)
Tt = ctraj(Ti,Td,10);
T = My3R.ikine(Tt, 'mask', [1 1 0 0 0 1]);

plot(My3R, T)
end