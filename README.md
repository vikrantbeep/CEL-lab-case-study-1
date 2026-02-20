Dynamic Leontief Growth Model
1. Basic Model
The Leontief input-output model is:
DYNAMIC LEONTIEF GROWTH MODEL
1. Static Leontief Model
X = A X + D
(I − A) X = D
X = (I − A)^(-1) D
Where:
X = Total output vector
A = Technical coefficient matrix
D = Final demand vector
2. Growth Assumption
X(t+1) = (1 + g) X(t)
For 5% growth:
X(t+1) = 1.05 X(t)
Where:
g = Growth rate
3. Capital Requirement
I(t) = B (X(t+1) − X(t))
Where:
B = Capital coefficient matrix
I(t) = Investment required
4. Dynamic Leontief Model (Combined Form)
X(t) = A X(t) + D(t) + B (X(t+1) − X(t))
5. Steps Used in MATLAB Code
Step 1:
X(t) = (I − A)^(-1) D
Step 2:
X(t+1) = (1 + g) X(t)
Step 3:
I(t) = B (X(t+1) − X(t))
•
This calculates total production required to satisfy demand.
2. Growth Extension
g = growth rate (5% in this study)
3. Capital Requirement
Growth requires investment.
Capital coefficient matrix
gives capital required per unit increase in output.
Investment needed:
5. What This Model Shows
• Industries are interdependent.
• Growth increases output in all sectors.
• Additional capital is required to sustain growth.
• Investment planning depends on production structure.
clc;
clear;
% DYNAMIC LEONTIEF GROWTH MODEL
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
g = 0.05; % 5% growth
% 6. Compute Next Year Output
X_t1 = (1 + g) * X_t;
% 7. Capital Coefficient Matrix (B)
B = [0.5 0 0;
0 0.4 0;
0 0 0.6];
% 8. Investment Required for Growth
Investment = B * (X_t1 - X_t);
% Display Results
disp('Output This Year X(t):')
disp(X_t)
disp('Output Next Year X(t+1):')
disp(X_t1)
disp('Investment Required:')
disp(Investment)# CEL-lab-case-study-1
