acc=0;
prec=0;
confusion=cell(64,1);
parfor i=1:64
    [acc(i),prec(i),confusion{i}]=Neural(2,11,.43,1000,rand());
    disp(i);
end
disp(sum(acc)/64);
disp(sum(prec)/64);
tConf=zeros(2,2);
for i=1:64
    tConf=tConf+confusion{i};
end
disp(tConf/64);