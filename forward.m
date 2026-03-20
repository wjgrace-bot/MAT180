function [pred, v, z] = forward (W, b, x)
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
    L=length(W);
    v=cell(L,1);
    z=cell(L,1);
    z{1} = x';
    for j = 1:L-1
        v{j}=W{j}*z{j}+b{j};
        z{j+1}=relu(v{j});
    end
    v{L} = W{L}*z{L}+b{L};
    pred=sigmoid(v{L});
end