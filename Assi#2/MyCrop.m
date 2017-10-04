function [CroppedIm] = MyCrop(img,row,col)

imm = imcomplement(img);

dimX = [];
dimY = [];
o=1;
oo=1;
[x y] =size(imm);

for i=1:x
z =imm(i:i,1:y);
if(max(z)==0)
    continue;
else
 dimX(o)=i;
 o=o+1;

end
end

for j=1:y
    z=imm(1:x,j:j);
    if(max(z)==0)
        continue;
    else
        dimY(oo)=j;
        oo=oo+1;
  
    end
end
x1=dimX(1);
x2dimX(size(dimX,2));
y1=dimY(1);
y2=dimY(size(dimY,2));
CroppedIm =imm(x1:x2,y1:y2);
imshow(CroppedIm)
end