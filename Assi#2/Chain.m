function [FV] = Chain (path)
img=imread(path);
[x y] = size(img);
FV = zeros(3,8,8);

d1=0;d2=0;d3=0;d4=0;d5=0;d6=0;d7=0;d8=0;

    [row,col]=find(inv==1);
  cropped=inv(min(row):max(row),min(col):max(col));
row=min(row);
col=min(col);
countour = bwtraceboundary(cropped,[row,col],'E');
[r c] = size(countour);

endim