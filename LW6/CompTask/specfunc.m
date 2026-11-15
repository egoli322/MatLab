function res = specfunc(varargin)
% SPECFUNC Calculates a result based on the number of inputs.
% specfunc(x) returns x^2
% specfunc(x,y) returns x^x + y^3

if nargin == 1  
    res = varargin{1}^2;
elseif nargin == 2 
    res = varargin{1}^2 + varargin{2}^3;
end 
end 
