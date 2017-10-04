function number = test(path,row,col)

    In_img=imread(path);
    number = 0;
   load 'Features.mat'; %MyTrain(row,col);%MyTrain('C:\Users\gh-jr\Documents\MATLAB\PatternRecognition\samples\',row,col);
    matrix= FV;
    digit = Digit;
   Cimg = Crop(In_img);
   
   fn = Centroid(path,row,col)
   %fn= sum(fn)/length(fn)
    Index = 0;
   
    matrix;
    x= size(matrix,1);
   y = size(matrix,2);
%     d =zeros(10,y) ;
%    for i=1:x        
%        % for j=1:size(matrix,2)
%             d(i:i,1:y) = sqrt((matrix(i,:)-fn).^2);
%        % end
%         
%    end

   dif=zeros(x,y);
   for i=1:x
    dif(i,:) = fn- matrix(i,:);
   end
    dif=dif.^2;
    dif=sum(dif');
    [m i] = min(dif);
    number = min(i)-1
    number=int2str(number)
    
    %number 
    %[number zz zzz] = find(min(d))
    
    %Index;
    %digits;
    
    %number = digits(Index)
    
    matrix;
    
   % number = knnclassify(fn,matrix,digits)
  g = strcat('Digits_Samples\',number);
  g = strcat(g,'\');
  g = strcat(g,number);
  g = strcat(g,'_1.bmp')
  mage = imread(g);
  subplot(1,2,1);
   imshow(Cimg);
  subplot(1,2,2);
  imshow(mage);
%
%--
% N = 1000;
%vec_A = rand(N,2); % random N points
%pt = rand(1, 2);% Point
%min_distance = 100; % start with some random value as intial distance
%for index = 1: N
 %   dis = sqrt(( (vec_A(index,1) - pt (1,1)) ^2) + ((vec_A(index,2) - pt (1,2))^2));
  %  dis
   % if (dis < min_distance)
    %    min_distance = dis;
    %end
%end
%sprintf ('Minimum distance from the point p to vec is [%d]', min_distance)
%
%

end
