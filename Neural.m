function [accuracy,precision,confusion] = Neural(numLayer, width, rate, epochs, seed)
    [Xtrain, ytrain, Xtest, ytest]=process(seed);
    W=cell(numLayer,1);
    b=cell(numLayer,1);
    if numLayer==1
        W{1}=rand(1,61)*2-1;
        b{1}=rand(1,1)*2-1;
    else
        W{1}=rand(width,61)*2-1;
        b{1}=rand(width,1)*2-1;
        W{numLayer} = rand(1,width)*2-1;
        b{numLayer} = rand(1,1)*2-1;
    end
    for i = 2:numLayer-1
        W{i}=rand(width,width)*2-1;
        b{i}=rand(width,1)*2-1;
    end
    

    for s=1:epochs
        for k=1:800
            x=Xtrain(k,:);
            y=ytrain(k);

            [dW,db]=backprop(W,b,x,y);
            
            for i=1:numLayer
                W{i}=W{i}-rate*dW{i};
                b{i}=b{i}-rate*db{i};
            end
        end
    end
    
    TP=0;
    TN=0;
    FP=0;
    FN=0;


    for k=1:200
        x=Xtest(k,:);
        y=ytest(k);

        [pred, ~, ~]=forward(W,b,x);

        yhat=(pred>5/6);

        if yhat==y
            if y==1
                TP=TP+1;
            else
                TN=TN+1;
            end
        else
            if y==1
                FN=FN+1;
            else
                FP=FP+1;
            end
        end
    end
    confusion=[TP FN; FP TN];
    %disp("Confusion matrix: ");
    %disp(confusion);
    accuracy=(TP+TN)/200;
    precision=TP/(TP+FP);
end