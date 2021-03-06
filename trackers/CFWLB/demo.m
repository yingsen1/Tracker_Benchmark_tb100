%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   tracking demo of:
%   Correlation Filters with Limited Boundaries
%   CVPR 2015
%   This is a demo for the Faceocc video. If you need all the sequences
%   evaluated in the paper or any question regarding the code and the
%   results please do no hesitate to contact me: hamed.kiani@iit.it

%   I run this code at MATLAB 2014-b in Windows.
%   If you use different dataset, or sequences, tune the Etha valua.
%   The traking demo shows the ground truth and the traking by our method

%   The precison is computed using the distance of the predicted bounding
%   box to the ground truth coordinates of the object
%   if the Euclidean distance is more than 20 pixels, it is a failure


%   the main code for training CFwLB is in folder "CFwLB"

%   Author: Hamed Kiani
%   Date:   May 2014.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



clear; close all, clc;

% # of iteration to optimize ADMM
% iteration = [ 1 2 4 8 16 32 64];
iteration = 2;
maxItr=iteration;
minItr=1;
% the portion of frame that I used to train the smaller filter
padding = 2 ;

% Etha is the updating factor at each frame. refer to the paper
% etha = [0.025 0.05 0.075 0.1 .125];
% 
output_sigma_factor = 1/16;

% initial the tracker at the first frame using 
% 8 images are generated by small rotation, scaling, transaction. 
ini_imgs = 1;

% function object_tracking(padding, output_sigma_factor, videoInd, etha, minItr, maxItr,  ini_imgs)
% clips = {'faceocc','faceocc2','girl', ...
%     'sylv','tiger1', 'tiger2', 'cliffbar', 'coke11','dollar','twinings','david'};

v = 1; % demo for david tracking.
% The etha values are borrowd from other papers for the videos
etha = .025;  

object_tracking(padding, output_sigma_factor, 1, etha, 1, iteration, ini_imgs);


   