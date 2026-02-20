clc;
clear;

% --------------------------------------
% DYNAMIC LEONTIEF GROWTH MODEL
% --------------------------------------

% 1. Technical Coefficient Matrix (A)
A = [0.30 0.20 0.10;
     0.40 0.25 0.30;
     0.20 0.15 0.25];

% 2. Final Demand Vector (D)
D = [100;
     50;
     80];

% 3. Identity Matrix
I = eye(3);

% 4. Compute Current Output
X_t = inv(I - A) * D;

% 5. Assume Growth Rate
g = 0.05;   % 5% growth

% 6. Compute Next Year Output
X_t1 = (1 + g) * X_t;

% 7. Capital Coefficient Matrix (B)
B = [0.5 0   0;
     0   0.4 0;
     0   0   0.6];

% 8. Investment Required for Growth
Investment = B * (X_t1 - X_t);

% --------------------------------------
% Display Results
% --------------------------------------

disp('Output This Year X(t):')
disp(X_t)

disp('Output Next Year X(t+1):')
disp(X_t1)

disp('Investment Required:')
disp(Investment)

