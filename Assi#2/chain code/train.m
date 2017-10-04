function train
T=3;S=8;
matrix=zeros(8*T*S,50);
path='C:\Users\gh-jr\Documents\MATLAB\PatternRecognition\samples\';
images=dir('C:\Users\gh-jr\Documents\MATLAB\PatternRecognition\samples\*.bmp');  % images is arrray of struct. each struct contain information about file in the directory
for i=1:length(images)
    imageName=images(i).name;  
    imageLabel=imageName(1:1); % the number in image
    fullpath=strcat(path,imageName); % strcat is concatenation function  
    img=imread(fullpath);
    %img=im2bw(img);
    c=crop(img);
    c=~c;
    feature=chain(c,T,S);
    matrix(:,i)=feature;
end
%matrix
save 'chainCode.mat' matrix T S ;


end