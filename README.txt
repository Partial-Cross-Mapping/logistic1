Partial Cross Mapping

1. System requirements
a. The codes can be run within MATLAB environment on any operating system.
b. We implemented the codes with MATLAB R2015b on Windows 10.
c. No non-standard hardware is required.

2. Installation guide
a. The codes can be run directly without installation.
b. No install time is needed.

3. Demo
a. The codes "main1.m", "main2.m", "main3.m" in repository "logistic1" correspond to causal relations X->Y, X->Z & Z->Y, X->Z & Z->Y & Y->X respectively. The data generation process is included in the codes.
b. The codes can be run directly to obtain the results in Fig. 3 of the main text. The output PCM indices are restored in variable "PPC". The code "plotacc.m" is used to generate Fig. S2 of the supplementary information.
c. Expected run time for this demo is less than 1 minute on a "normal" desktop computer.

4. Instructions for use
a. To run on other data, simply load your data to variable "G" and change the parameters "N", "E", "tau", "PL", "maxfdelay" according to your settings and run directly to obtain the results.
b. The code "calp.m" in repository "logisticnet" is used to generate Fig. S16 of the supplementary information. Other results in the manuscript can be easily reproduced by the provided data in repositories "dream4", "plankton", "circadian", "hk" with the above instructions similarly.