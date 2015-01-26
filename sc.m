clear;
clc;
img = imread("a2.jpg");
img=img(100:400,100:400,:);
figure(1);
imagesc(img);
for v = [10]

x = size(img,1);
y = size(img,2);
x-=v;
y-=v;
img1 = img;
figure(v);
for i=v+1:x
 	for j=v+1:y
 		red=img(i-v:i+v,j-v:j+v,1)(:);
 		green=img(i-v:i+v,j-v:j+v,2)(:);
 		blue=img(i-v:i+v,j-v:j+v,3)(:);
 		temp=(mean(abs(red-img(i,j,1)))+mean(abs(green-img(i,j,2)))+mean(abs(blue-img(i,j,3))))/3;
 		img1(i,j,1)-=2*temp;
		img1(i,j,2)-=2*temp;
		img1(i,j,3)-=2*temp;
	end
 end
imagesc(img1);
end
