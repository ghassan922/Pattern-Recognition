function [Cimg] = Crop(In_img)
 %In_img = imcomplement(img); 

[x y] = size(In_img);
      
    for i=1:x
    z =In_img(1:1,1:y);
    if (max(z)== 0)
    In_img=In_img(2:x,1:y);
    x=x-1;
    end
    if (max(z)== 1)
        break;
    end
    end
    
    for i=x:-1:1
        z =In_img(x-1:x,1:y);
    if (max(z)== 0)
    In_img=In_img(1:x-1,1:y);
    x=x-1;
    end 
    if max(z)== 1
        break;
    end
    end


    In_img=In_img';
    [x y] = size(In_img);
    
    for i=1:x
    z =In_img(1:1,1:y);
    if (max(z)== 0)
    In_img=In_img(2:x,1:y);
    x=x-1;
    else 
        break;
    end
    end
    
    for i=x:-1:1
    z =In_img(x-1:x,1:y);
    if (max(z)== 0)
    In_img=In_img(1:x-1,1:y);
    x=x-1;
    else 
        break;
    end
    end

    In_img=In_img';
    Cimg = In_img;

end