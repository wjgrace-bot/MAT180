function [Xtrnew, y_train, Xtenew, y_test] = process(seed)
    filename='german.data';
    T=readtable(filename,'FileType','text','Delimiter',' ');
    y=T{:,21};
    X=T(:,1:20);
    rng(seed);
    cv=cvpartition(y,HoldOut=.2);

    X_train=X(training(cv),:);
    X_test=X(test(cv),:);
    y_train=y(training(cv),:);
    y_test=y(test(cv),:);

    y_train=y_train-1;
    y_test=y_test-1;
    Xtrnew=[];
    Xtenew=[];

    [tr,te]=ohet(X_train{:,1}, X_test{:,1}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,2}, X_test{:,2}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,3}, X_test{:,3}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,4}, X_test{:,4}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,5}, X_test{:,5}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,6}, X_test{:,6}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,7}, X_test{:,7}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,8}, X_test{:,8}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,9}, X_test{:,9}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,10}, X_test{:,10}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,11}, X_test{:,11}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,12}, X_test{:,12}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,13}, X_test{:,13}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,14}, X_test{:,14}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,15}, X_test{:,15}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,16}, X_test{:,16}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,17}, X_test{:,17}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=normalize_col(X_train{:,18}, X_test{:,18}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,19}, X_test{:,19}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
    [tr,te]=ohet(X_train{:,20}, X_test{:,20}); Xtrnew = [Xtrnew tr]; Xtenew = [Xtenew te];
end