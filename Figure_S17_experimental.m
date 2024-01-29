clc; clear all; close all;

d=importdata('Exp_90deg_rawdata.txt');

grayed_data=d;

maximum_intensity=max(max(grayed_data));
grayed_data(grayed_data<=maximum_intensity*0.05)=0;

N = nnz(grayed_data);
total_intensity=sum(sum(grayed_data));


intensity_mean=total_intensity/N;


imagesc((grayed_data));  
colormap('jet');
axis off;
axis equal;
