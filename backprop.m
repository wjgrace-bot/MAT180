function [dW,db] = backprop(W, b, x, y)
    function out = relu(x)
    out=max(0,x);
    end
    function out = relup(x)
        out=(x>0);
    end
    function out = sigmoid(x)
        out=1/(1+exp(-x));
    end
    function out = sigmoidp(x)
        out=sigmoid(x)*(1-sigmoid(x));
    end
    [pred, v, z] = forward(W, b, x);
    L=length(W);
    dW=cell(L,1);
    db=cell(L,1);
    dloss=cell(L,1);

    dloss{L}=2*(pred-y)*sigmoidp(v{L});
    dW{L}=dloss{L}*z{L}';
    db{L}=dloss{L};

    for i = L-1:-1:1
        dloss{i}=W{i+1}'*dloss{i+1} .* relup(v{i});
        dW{i}=dloss{i}*z{i}';
        db{i}=dloss{i};
    end    
end