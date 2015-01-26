clear;
clc;
img = imread("sample2.jpg");
%img=img(100:400,100:400,:);
for v = [10]

x = size(img,1);
y = size(img,2);
x-=v;
y-=v;
img1 = img;
for i=v+1:x
 	for j=v+1:y
 		red=img(i-v:i+v,j-v:j+v,1)(:);
 		green=img(i-v:i+v,j-v:j+v,2)(:);
 		blue=img(i-v:i+v,j-v:j+v,3)(:);
 		temp=(mean(red-img(i,j,1))+mean(green-img(i,j,2))+mean(blue-img(i,j,3)))/3;
 		img1(i,j,1)-=2*temp;
		img1(i,j,2)-=2*temp;
		img1(i,j,3)-=2*temp;
	end
 end
imwrite(img1,"sc_sample2.jpg");

end
