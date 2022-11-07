function output = ITR(N, P, C)
% This function computes information transfer rate (ITR)
% 
% Inputs:
%   N : ��ɾ� �� (Number of class)
%   P : �νķ� (��Ȯ��) (Accuracy [0, 1] - also can be N-D matrix)
%   C : ��ɾ� �� ó�� �ӵ� (��) (Data length for each classification (unit: min))
% 
% Outputs:
%   output: computed ITR
% ������ bits/min (output unit: bits/min)
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

output = (log2(N) + P.*log2(P) + (1-P).*log2((1-P)/(N-1)))/C;

if ~isempty(find(P == 1))
    output(find(P == 1)) = log2(N)/C;
end