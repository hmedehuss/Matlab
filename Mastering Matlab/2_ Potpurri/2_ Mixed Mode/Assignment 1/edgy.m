function edg=edgy(cc)

for i=2:size(cc,1)-1
    for j = 2:size(cc,2)-1
        cc1 = double(cc(i-1:i+1,j-1:j+1));
        sx = [-1 0 1; -2 0 2; -1 0 1].*cc1;
        sy = [1 2 1; 0 0 0; -1 -2 -1].*cc1;
        sx = sum(sx(:));
        sy = sum(sy(:));
        edg(i-1,j-1) =  uint8(sqrt(sx*sx + sy*sy));
    end
end

end

% cc = imread('CocaCola.png');
% figure
% imshow(cc);
% edg = edgy(cc);
% figure
% imshow(edg);