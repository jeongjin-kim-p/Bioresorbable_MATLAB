clc; clear all; close all;

n_bio=1.37;
n_PLGA=1.46;
n_BG=1.51;
n=n_bio/n_PLGA;
theta_c=asind(n_bio/n_PLGA);
phi=0:0.2:90;


phi_c=asind(n_PLGA/n_BG*cosd(theta_c));
theta=acosd(sind(phi).*n_BG/n_PLGA);

r_perpendicular=(n_PLGA.*cosd(theta)-n_bio.*(1-(n_PLGA/n_bio)^2.*sind(theta).^2).^(1/2))./(n_PLGA.*cosd(theta)+n_bio.*(1-(n_PLGA/n_bio)^2.*sind(theta).^2).^(1/2));
r_parallel= (n_bio.*cosd(theta)-n_PLGA.*(1-(n_PLGA/n_bio)^2.*sind(theta).^2).^(1/2))./(n_bio.*cosd(theta)+n_PLGA.*(1-(n_PLGA/n_bio)^2.*sind(theta).^2).^(1/2));
R_perpendicular=r_perpendicular.*conj(r_perpendicular);
R_parallel=r_parallel.*conj(r_parallel);
R_perpendicular=R_perpendicular';
R_parallel=R_parallel';
phi=phi';
plot(phi,R_perpendicular,phi,R_parallel);
legend('R_{perpendicular}','R_{parallel}');
