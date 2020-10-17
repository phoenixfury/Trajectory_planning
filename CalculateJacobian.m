function J = CalculateJacobian(q)
%CALCULATEJACOBIAN calculates the jacobian of RRR robot
%   Detailed explanation goes here
%% Constants
L1 = 1;
L2 = 1;
L3 = 1;
q1 = q(1);
q2 = q(2);
q3 = q(3);
%% Forward kinematics
H = Rz(q1) * Tz(L1) * Ry(q2) * Tx(L2) * Ry(q3) * Tx(L3);
%% Jacobian calculation
R = H(1:3,1:3);
R_inv = [R' zeros(3,1);0 0 0 1];
% First joint
J1r = Rzd(q1) * Tz(L1) * Ry(q2) * Tx(L2) * Ry(q3) * Tx(L3) * R_inv;
J1 =  [ J1r(1,4) J1r(2,4) J1r(3,4)].';% J1r(3,2) J1r(1,3) J1r(2,1)].';

% Second joint
J2r = Rz(q1) * Tz(L1) * Ryd(q2) * Tx(L2) * Ry(q3) * Tx(L3) * R_inv;
J2 =  [ J2r(1,4) J2r(2,4) J2r(3,4)].';% J2r(3,2) J2r(1,3) J2r(2,1)].';

% Third joint
J3r = Rz(q1) * Tz(L1) * Ry(q2) * Tx(L2) * Ryd(q3) * Tx(L3) * R_inv;
J3 =  [ J3r(1,4) J3r(2,4) J3r(3,4)].';% J3r(3,2) J3r(1,3) J3r(2,1)].';

% Full jacobian matrix
J = [J1 J2 J3];
end

