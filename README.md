# BCI_ITR

% This function computes information transfer rate (ITR)
% 
% Inputs:
%   N : 명령어 수 (Number of class)
%   P : 인식률 (정확도) (Accuracy [0, 1] - also can be N-D matrix)
%   C : 명령어 당 처리 속도 (분) (Data length for each classification (unit: min))
% 
% Outputs:
%   output: computed ITR
% 단위는 bits/min (output unit: bits/min)
% 
% Example:
%   N = 4; % (4-class)
%   P = abs(rand(100, 3)); % (100 trials for each of 3 sessions)
%   C = 3/60;   % data length: 3 s
%   ITR_rel = ITR(N, P, C);
% 
% Authors: Seonghun Park (Ph.D.)
% Intelligent Neuroengineering (i-neuro) Lab., Department of Electronic Engineering, Korea University
%
% Reference: Wolpaw, J. R., Ramoser, H., McFarland, D. J., & Pfurtscheller, G. (1998). EEG-based communication: improved accuracy by response verification. IEEE transactions on Rehabilitation Engineering, 6(3), 326-333.
% 
% Copyright (C) 2022 Seonghun Park (s.park7532@gmail.com)
