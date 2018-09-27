% Structure vs normal test
clc; clear;

tic;
x1 = 5;
t1 = toc;

tic;
x2 = 3;
t2 = toc;

tic;
x3 = -2;
t3 = toc;

tic;
x4 = 23;
t4 = toc;

tic;
x5 = -5;
t5 = toc;

tAvg = mean([t1,t2,t3,t4,t5]);

tic;
x.x1 = x1;
t1a = toc;

tic;
x.x2 = x2;
t2a = toc;

tic;
x.x3 = x3;
t3a = toc;

tic;
x.x4 = x4;
t4a = toc;

tic;
x.x5 = x5;
t5a = toc;

taAvg = mean([t1a,t2a,t3a,t4a,t5a]);

fprintf('Time to create variables: %1.5f ms\n',tAvg*1000);
fprintf('Time to create structures: %1.5f ms\n',taAvg*1000);

tic;
out1 = Fcn1(x1,x2,x3,x4,x5);
tFcn1 = toc;

tic;
out2 = Fcn2(x);
tFcn2 = toc;

fprintf('\nTime without structure: %1.5f ms\n',tFcn1*1000);
fprintf('Time with structure: %1.5f ms\n',tFcn2*1000);
function out = Fcn1(x1,x2,x3,x4,x5)

out = sin(x1) - x2/x3 + x4*exp(x5);

end

function out = Fcn2(x)
x1 = x.x1;
x2 = x.x2;
x3 = x.x3;
x4 = x.x4;
x5 = x.x5;

out = sin(x1) - x2/x3 + x4*exp(x5);

end