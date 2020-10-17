function q = RRR_IK(H)
%RRR_IK Summary get 1 inverse kinematic solution for RRR robot
%   Elbow up configuration
%% Constants
L1 = 1;
L2 = 1;
L3 = 1;
x = H(1,4);
y = H(2,4);
% z = L1 - ( sin(q2+q3) + sin(q2) )
z = H(3,4);

% For getting q2 and q3
X = sqrt( x^2 + y^2); 
Y = L1 - z;
%% Get the 1st angle q1
q1 = atan2(y,x);

%% Get q2 $ q3

q3 = acos( ( X^2 + Y^2 - L2^2 - L3^2)/ (2 * L2 * L3) );

q2 = - atan2( L3 * sin(q3), (L2 + L3 * cos(q3))) + atan2(Y,X);

q = [q1 q2 q3];


end

