function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

%u = 0;


% FILL IN YOUR CODE HERE
%E. Tola
e = s_des(1) - s(1);
e_d = s_des(2) - s(2);
z_des_dd = 0;
Kp = 200;
Kd = 20;
u = params.mass*(z_des_dd + Kp*e+Kd*e_d + params.gravity);
if u >= params.u_max
    u = params.u_max;
end
end

