function [dJ] = computeEachSampleCost(Theta1,Theta2,num_labels,sample_X,label_y)
a1 = sample_X;
a1 = [1;a1'];

z2 =Theta1*a1;
a2 = sigmoid(z2);
a2 = [1;a2];

z3 = Theta2*a2;
a3 = sigmoid(z3);

y_vec = zeros(num_labels,1);
y_vec(label_y)=1; % only the corresponding sample_x's label is  set to 1

dJ = -sum(y_vec.*log(a3) + (1-y_vec).*log(1-a3));
end
