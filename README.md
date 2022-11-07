# BCI_ITR

This function computes information transfer rate (ITR) in brain-computer interface (BCI) <br/>
 <br/>
Inputs: <br/>
  N : Number of class<br/>
  P : Accuracy [0, 1] - also can be N-D matrix<br/>
  C : Data length for each classification (unit: min)<br/>
<br/>
Outputs:<br/>
  output: computed ITR (unit: bits/min)<br/>
 <br/>
Example: <br/>
 >> N = 4; % (4-class) <br/>
 >> P = abs(rand(100, 3)); % (100 trials for each of 3 sessions) <br/>
 >> C = 3/60;   % data length: 3 s <br/>
 >> ITR_rel = ITR(N, P, C); <br/>
 <br/>
Authors: Seonghun Park (Ph.D.) <br/>
Intelligent Neuroengineering (i-neuro) Lab., Department of Electronic Engineering, Korea University<br/>
 <br/>
Reference: Wolpaw, J. R., Ramoser, H., McFarland, D. J., & Pfurtscheller, G. (1998). EEG-based communication: improved accuracy by response verification. IEEE transactions on Rehabilitation Engineering, 6(3), 326-333.<br/>
 <br/>
Copyright (C) 2022 Seonghun Park (s.park7532@gmail.com)
