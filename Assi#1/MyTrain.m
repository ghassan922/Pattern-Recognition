function [FV,Digit] = MyTrain(row,col)
temp=[];
FV = zeros(10,18);
Digit= [];
FVtemp = [];
s =[];
path='Digits_Samples\';
npath =[]; 
for i = 1:10
npath = strcat(path,int2str(i-1));
npath = strcat(npath,'\');
nnpath = strcat(npath,'\*.bmp');
images = dir(nnpath);
for j=1:length(images)
imageName = images(j).name;
imageLabel = imageName(1:1);
img_path = strcat(npath,images(j).name);
c = Centroid(img_path,row,col);
s= size(c,2);
end
Digit = vertcat(Digit,int2str(i-1)); 
FV(i:i,1:s) =c;
%FV(i) = sum(c)/length(c);
end

save 'Features.mat' FV Digit;
%if(imageLabel == temp)
%Digit = vertcat(Digit,imageLabel);
%else
%Digit= vertcat(Digit,'77');
%end
%FV = horzcat(FV,i);
%fullpath = strcat(path,imageName);
%img = imread(fullpath);
%imge = imcomplement(img);
%imshow(imge);
%temp = imageLabel;

end