function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%%
%%C_s = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%Sigma_s = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%K = length(C_s);
%L = length(Sigma_s);

%errors_vals = zeros(K,L);
%for i =1:K
% 	for j =1:L
%		fprintf("The [%f]th training for cross validation\n",(i-1)*L+j);
%		model= svmTrain(X, y, C_s(i), @(x1, x2) gaussianKernel(x1, x2, Sigma_s(j)));
%		crossval_pred = svmPredict(model, Xval);
%		Sigma_s(i,j) = mean(double(crossval_pred ~= yval));
%		
%	end
%end

%[mins_c,r_index] = min(Sigma_s);
%[mins_r,c_index] = min(mins_c);

%C = C_s(r_index(c_index));
%sigma = Sigma_s(c_index);
%%
%% after 8.^2 times cross validation,we choose C and sigma as follows
C = 1;
sigma = 0.13;




% =========================================================================

end
