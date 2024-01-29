clc; clear all; close all;

d=importdata('Simul_90deg_rawdata.txt');

data_cropped=d;

maximum_intensity=max(max(data_cropped));

data_cropped(data_cropped<=maximum_intensity*0.05)=0;
N = nnz(data_cropped);
intensity_total=sum(sum(data_cropped));


intensity_averaged_by_pixel=intensity_total/N;

imagesc((data_cropped));  
colormap('jet');
caxis([0 230]);
axis off;
axis equal;
