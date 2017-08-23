% run_los
% compute synthetic InSAR
% Yong Zhou
% 2017-08-22

s_stk=-13.9;
s_ind=44.0;

strike=153; % in degree
dip=84;     % in degree
rake=-18;   % in degree

dep=14;     % in km

length=22;  % in km
width=10;   % in km

!echo 2 > tmp.inp
!echo 201 100 100 >> tmp.inp
!echo 201 100 100 >> tmp.inp

system('echo $length >> tmp.inp');