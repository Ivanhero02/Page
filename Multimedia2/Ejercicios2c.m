                       %%Mejoramiento de imagenes%%
clc;
Im=imread('spy','jpg');

%%Transformación cuadrada%%
Imd=double(Im); 
Imm=(Imd.^2)/255;
Imc=uint8(Imm);
figure(1)
subplot(2,1,1)
imshow(Im);
title('Imagen Original');
subplot(2,1,2)
imshow(Imc);
title('Mejoramiento de imagen con transformación cuadrada');
%%Transformación cubica%%
Imc=(Imd.^3)/255^2;
Imcc=uint8(Imc);
figure(2)
subplot(2,1,1)
imshow(Im);
title('Imagen Original');
subplot(2,1,2)
imshow(Imcc);
title('Mejoramiento de imagen con transformación cúbica');
%%Raiz%%
Imr=sqrt(225.*Imd);
Imrc=uint8(Imr);
figure(3)
subplot(2,1,1)
imshow(Im);
title('Imagen Original');
subplot(2,1,2)
imshow(Imrc);
title('Mejoramiento de imagen con transformación raíz cuadrada');
%%Logaritmo%%
Iml=255.*((log(1+Imd))/(log(1+255)));
Imlc=uint8(Iml);
figure(4)
subplot(2,1,1)
imshow(Im);
title('Imagen Original');
subplot(2,1,2)
imshow(Imlc);
title('Mejoramiento de imagen con transformación logarítmica');

