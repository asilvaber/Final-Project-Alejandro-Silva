function sys = defsys()

% Linear system:
%-----------------

m1 = 1;
m2 = 1;
k1 = 1;
k2 = 1;

%beta = 0;
beta = 0.1;
%beta = 1;

sys.Klin=[k1+k2 -k2;-k2 k2]; 
sys.Mlin=diag([m1 m2]);

% Nonlinearities:
%----------------

% nonlinear law object:
coeffnl=beta;expnl=3;
nl_law=NL_LAW_POLY(coeffnl,expnl); % polynomial law

% nonlinear object:
pos1=1;pos2=2;
nl_spring=NL_SPRING(pos1,pos2,nl_law); % nonlinear spring

sys.nl(1)=nl_spring;

% Optional fields:
%-------------------

sys.norm=0.5*1e-3;

%sys.invMl=inv(sys.Ml);

%sys.IGcont=[];
%sys.IGcont.x0=[2.14367957541056;4.23248916538581;0;0];
%sys.IGcont.w=1.23465320905258;

%sys.vitfix=[2];

%sys.TFS=300;
%sys.NumMeth='NEWMARK';

