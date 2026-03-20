function [trainhot, testhot]=ohet(original,new)
    original=categorical(original);
    new=categorical(new);
    new=categorical(new,categories(original));
    trainhot=onehotencode(original,2);
    testhot=(onehotencode(new,2));
end