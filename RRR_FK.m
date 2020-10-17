function H = RRR_FK(q)
%RRR_FK Summary Get the forward kinematics of RRR robot
%   Detailed explanation goes here
%% Constants
L1 = 1;
L2 = 1;
L3 = 1;
q1 = q(1);
if length(q) == 1
     H = Rz(q1) * Tz(L1);
elseif length(q) == 2
    q2 = q(2);
    H = Rz(q1) * Tz(L1) * Ry(q2) * Tx(L2);
else
    q2 = q(2);
    q3 = q(3);
%% Forward kinematics
    H = Rz(q1) * Tz(L1) * Ry(q2) * Tx(L2) * Ry(q3) * Tx(L3);
end


end

