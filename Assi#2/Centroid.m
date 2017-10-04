function [FV] = Centroid(img_path,row,col)
In_img = imread(img_path);
In_img = Crop(In_img);

[x y]= size(In_img);
FV=[];


          while ( mod(x,row) ~= 0)
            x = x+1;
          end
     while (mod(y,col) ~=0)
         y = y+1;
     end
    newImg = zeros(x,y);
    newImg(1:size(In_img,1), 1:size(In_img,2)) = In_img;
      hight =(x/row);
      width = (y/col);
      for i=1:hight:x
          for j=1:width:y   
              xCen =0;
              yCen=0;
             block= newImg(i:(i+hight-1),j:(j+width-1));
             summation = sum(sum( newImg));
            for k=1:1:hight  
                for l=1:1:width
                  xCen = xCen+ k*block(k,l); 
                  yCen = yCen+ l*block(k,l);
                end
            end
            cenX = xCen/summation;
            cenY = yCen/summation;
            
            if ( isnan (cenX) )
                cenX = 0;
            end
            if ( isnan (cenY))
                cenY = 0;
            end
            FV(end+1) = cenX;
            FV(end+1) = cenY;
             
             
          end
      end
end
           
           
           