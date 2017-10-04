function number = test(path)

    In_img=imread(path);
    number = 0;
   [matrix digits] = MyTrain();%MyTrain('C:\Users\gh-jr\Documents\MATLAB\PatternRecognition\samples\',row,col);
   Cimg = Crop(In_img);
   
   fn = Chain(path)
   %fn= sum(fn)/length(fn)
    Index = 0;
   
    matrix;
    x= size(matrix,1);
   y = size(matrix,2);
    d =zeros(10,y) ;
   for i=1:x        
       % for j=1:size(matrix,2)
            d(i:i,1:y) = (matrix(i,:)-fn).^2;
       % end
        
    end
    %Index = find(min(d));
    %Index;
    %digits;
    
    %number = digits(Index)
    matrix
    d
    number = knnclassify(fn,matrix,digits);
  g = strcat('Digits_Samples\',number);
  g = strcat(g,'\');
  g = strcat(g,number);
  g = strcat(g,'_1.bmp')
  mage = imread(g);
  subplot(1,2,1);
   imshow(Cimg);
  subplot(1,2,2);
  imshow(mage);

end
