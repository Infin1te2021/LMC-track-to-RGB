clear all
close all
clc

rawdata = xlsread('swipeRight.csv');
x = rawdata(:,1);
y = rawdata(:,2);
z = rawdata(:,3);
figure(1);
scatter3(x,y,z);

x_offset = x + abs(min(x));
y_offset = y + abs(min(y));
z_offset = z + abs(min(z));

x_normalize = x_offset/ max( abs(x_offset))
y_normalize = y_offset/ max( abs(y_offset))
z_normalize = z_offset/ max( abs(z_offset))

x_RGB = round(255 * x_normalize); %rounds each element of X to the nearest integer
y_RGB = round(255 * y_normalize);
z_RGB = round(255 * z_normalize);

a = [x_RGB, y_RGB, z_RGB]
xlswrite('rgbPalm.csv',a)


