function [ hyp1 hyp2  ] = kNNSuite( Y, varargin )
%kNNSuite Accepts feature vectors of any size and computes the optimized
%hyperparameters
%   Detailed explanation goes here

length = nargin
featureVector = zeros(length,1)
for i = 1: nargin
    featureVector(i)=varargin{i}
end

mdl = fitcknn(featureVector,Y) 
%class = predict(mdl,Xnew)

