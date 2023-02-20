function [offspring] = mutation_operator(p, mr, lb, ub)
%MUTATION_OPERATOR 
% we implemented a uniform mutation operator here

disp(size(p));
dim = size(p, 2);
chosenMat = rand(1, dim);
idx4mut = chosenMat < mr;
randMat = lb + (ub - lb) .* rand(1, dim);
offspring = p;
offspring(idx4mut) = randMat(idx4mut);
end

