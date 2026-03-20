function [xtrain_fixed, xtest_fixed]=normalize_col(original,new)
    mu=mean(original);
    sig=std(original);
    xtrain_fixed=(original-mu)/sig;
    xtest_fixed=(new-mu)/sig;
end