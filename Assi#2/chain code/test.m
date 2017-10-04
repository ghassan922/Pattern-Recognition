function [ num ] = test( name)
    load 'chainCode.mat';
    img=imread(name);
    %img=im2bw(img);   
    c=crop(img);
    c=~c;
    imshow(c)
    v=[0;0;0;0;0;1;1;1;1;1;2;2;2;2;2;3;3;3;3;3;4;4;4;4;4;5;5;5;5;5;6;6;6;6;6;7;7;7;7;7;8;8;8;8;8;9;9;9;9;9];
    dif=matrix;
    feature=chain(c,T,S);
    for i=1:50
    dif(:,i)=feature-matrix(:,i);
    end
    dif=dif.^2;
    dif=sum(dif)
    [m i]=min(dif);
    i
    num=v(i)
end

