function [pca] = PCA(im,row,col)

img = imread(im);
[x y]= size(img);

x1=[];
y1=[];
% Padding
while(mod(x,row)~=0)
    img(x+1,:)=0;
    x=x+1;
end
while(mod(y,col)~=0)
    img(:,y+1)=0;
    y=y+1;
end
% build blocks vectors x1,y1 params for "mat2cell(img,x1,y1)"
x1(1:x/row)=row;
y1(1:y/col)=col;

Blocks = mat2cell(img,x1,y1);
l = ((length(Blocks)*length(Blocks))/2)+2;
subplot(1,2,1);
imshow(Blocks{l});

%building T mat with size:" #OfBlocks*#OfPixelsPerBlock "
[Tr1 Tr2]=size(Blocks);
Tr= Tr1*Tr2
Tc = row*col
T=zeros(Tr,Tc);
    %setting values to T
    for i=1:Tr
        T(i,:) = reshape(Blocks{i},[1 Tc]);
    end
    subplot(1,2,2);
    imshow(T);
    pca = T; 
end