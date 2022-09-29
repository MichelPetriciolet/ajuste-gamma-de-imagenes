clear all
close all
clc

%LECTURA DE IMAGEN

img= imread("rx_2.jpg");

%VIASUALIZAR IMAGEN
figure(1)
%imshow(img)

%%AJUSTE GAMMA
img= double(img); %conversion a double 
gamma1= 0.3; %valor gamma para el ajuste

%FUNCION DE AJUSTE GAMMA
img_gamma = (255.*(img./255).^(1/gamma1));


%%RECONVERSION DE FORMATO
img= uint8(img); %conversion de entero de 8 bits
img_gamma= uint8(img_gamma); %conversion de entero de 8 bits
imshow([img; img_gamma])


%%NEGATIVO DE LA IMAGEN
%img_neg = 255 - img_gamma;
%figure(2)
%imshow(img_neg);
