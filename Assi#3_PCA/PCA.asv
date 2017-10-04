function  pca( img,x,y,remove )
   img=imread('cameraman.tif');
%**************************************
%padding
   [r c]=size(img);
    rr=0;rc=0;
    if mod(r,x)~=0
    rr=x-mod(r,x);
    end
    if mod(c,y)~=0
    rc=y-mod(c,y);
    end
    mat=zeros(r+rr,c+rc);
    mat(1:r,1:c)=img(:,:);
    img=mat;
%**************************************
%mat2cell
    [r c]=size(img);
    h=r/x;w=c/y;
    v1=ones(1,h);
    v1=v1*x;
    v2=ones(1,w);
    v2=v2*y;
    new=mat2cell(img,v1,v2);
    img=new;
    
%***************************************    
%extract blocks
mat=zeros(x*y,h*w);
count=1;
    for i=1:h
        for j=1:w
            mat(:,count)=reshape(img{i,j}',x*y,1);
            count=count+1;
        end
    end
 img=mat;
 img
%***************************************
%get mean
[r c]=size(img);
%me=sum(transp(img));
%me=me/c;
%me=transp(me);
me=mean(img,2);
%*******************************************
%getXnew 
new_img=img;
for i=1:c
new_img(:,i)=img(:,i)-me;
end
%*******************************************
%get Covariance & diagonal
z=cov(transp(new_img),1);
[v d]=eig(z);
[vr vc]=size(v);
diagonal=diag(d)
[q idx]=sort(diagonal)
T=zeros(vr,vc);
for i=1:vc
    T(:,i)=v(:,idx(i));
end
%*********************************************
% get y & reduction
Y=T*new_img;
[r c]=size(Y);
rmv_count=floor((remove/100)*(x*y));
for i=1:c
    for j=r-rmv_count:r
        Y(j,i)=0;
    end
end
%**********************************************
%inverse
new_img=transp(T)*Y;

for i=1:c
img(:,i)=new_img(:,i)+me;
end
%**********************************************
% reconstruct the image
count=1;
    for i=1:h
        for j=1:w
            m=reshape(img(:,count),y,x);
            new{i,j}=m';
            count=count+1;
        end
    end    
img=cell2mat(new);
%*************************************************
imshow(uint8(img));
end