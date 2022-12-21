%%Forzando un pixel valor maximo en suma%%
Im=imread('spy','jpg');
Im2=imread('spy2','png');
Im3=imread('bugcat','jpg');
Im4=imread('perro','jpg');
Im6=imread('spy2','png');

Ims=imadd(Im,100);
imshow(Ims);
Im(:,500:600,:)= 256;
figure(1) 
subplot(2,1,1)
imshow(Im); 
title('Imagen con sección fuera del límite en suma');
subplot(2,1,2)
imshow(Ims); 
title('Imagen con suma de 100 general');
pixel=Im(200,600);
Pixelfuera=imadd(pixel,6);

%%Forzando un pixel valor minimo en resta%%
Imr=imsubtract(Im2,220);
Im2(:,700:800,:)= -256;
figure(2)
subplot(2,1,1)
imshow(Im2);
title('Imagen con sección fuera del límite en resta');
subplot(2,1,2)
imshow(Imr);
title('Imagen con resta general de 220');
pixelr=Im(200,600);
Pixelfuerar=imsubtract(pixel,252);

%%División
Imd = imdivide(Im3,2);
Imdd2=imresize(Im4,[922 1070]);
Imd2 = imdivide(Im3,Imdd2);
figure(3)
subplot(2,1,1)
imshow(Imd);
title('Imagen dividida entre 2');
subplot(2,1,2)
imshow(Imd2);
title('Imagen dividida entre otra imagen');

%%Multiplicacion
Imm=immultiply(Im3,0.75);
Im16=uint16(Im3);
Imm2=immultiply(Im16,Im16);
figure(4)
subplot(2,1,1)
imshow(Imm);
title('Imagen multiplicada por 0.75');
subplot(2,1,2)
imshow(Imm2);
title('Imagen multiplicada por si misma');

%%Complemento
bw2 = imcomplement(Im6);
figure(5)
subplot(2,1,1)
imshow(Im6);
title('Imagen original');
subplot(2,1,2)
imshow(bw2);
title('Imagen complementada');


