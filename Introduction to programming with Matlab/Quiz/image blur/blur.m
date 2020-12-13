function output=blur(img,w) 
v1=w;
v2=w;
z1=w;
z2=w;
output1 = [];
for i=1:size(img,1)
    for j=1:size(img,2)
        while i-v1<1 
            v1=v1-1;
        end
        while i+v2>size(img,1) 
            v2=v2-1;
        end 
        while j-z1<1 
            z1=z1-1;
        end
        while j+z2>size(img,2) 
            z2=z2-1;
        end 
        output1(i,j) = mean(mean(img(i-v1:i+v2, j-z1:j+z2)));
        v1=w;
        v2=w;
        z1=w;
        z2=w;
    end
end
output = uint8(output1);
end


% 
% function out = blur(img,w)
%     % convert to double for doing calculations
%     imgD = double(img);
%     [row, col] = size(img);
%     out = zeros(row, col);
%     for ii = 1:row
%         for jj = 1:col
%             % Get the indices for a submatrix
%             r1 = ii-w;
%             r2 = ii+w;
%             c1 = jj-w;
%             c2 = jj+w;
%             % Test that indices are valid
%             % If not, set to min/max that is valid
%             if r1 < 1
%                 r1 = 1;
%             end
%             if r2 > row
%                 r2 = row;
%             end
%             if c1 < 1
%                 c1 = 1;
%             end
%             if c2 > col
%                 c2 = col;
%             end
%             % Get the submatrix and assign the mean to the output pixel
%             m = imgD(r1:r2, c1:c2);
%             out(ii,jj) = mean(m(:));
%         end
%     end
%     % convert back to uint8
%     out = uint8(out);
% end




% Test the code
% img = imread('vandy.png');
% output = blur(img,2);
% imshow(output);