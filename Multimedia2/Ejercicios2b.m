%%Disminuir intensidad de una imagen%%
clc;
Im=imread('perrogris','jpg');
Im2=imread('paisaje','jpg');
Im3=imread('jarron','jpg');

figure(1);
subplot(2,1,1)
imshow(Im);
title('Original');
ImR=double(Im);
ImRed=ImR*0.5;
ImReducida=uint8(ImRed);
subplot(2,1,2)
imshow(ImReducida);
title('Intensidad a 0.5');

figure(2);
subplot(2,1,1)
imshow(Im2);
title('Original');
ImR2=double(Im2);
ImRed2=ImR2*0.25;
ImReducida2=uint8(ImRed2);
subplot(2,1,2)
imshow(ImReducida2);
title('Intensidad a 0.25');

%%Rotar una imagen 5° y aplicar imadd e imfuse%%

Im3r=imrotate(Im3,5);
Im3r=imresize(Im3r,[455 500]);
suma=imadd(Im3,Im3r);
figure(3)
imshow(suma);
imf=imfuse(Im3,Im3r);
title('Imagen usando imsum al rotar 5°');
figure(4)
imshow(imf);
title('Imagen usando imfuse al rotar 5°');
imf2=imfuse(Im3,Im3r, 'blend');
figure(5)
imshow(imf2);
title('Imagen usando imfuse y blend al rotar 5°');

%%Usando imfuse ritar de 1 en 1 hasta 5 e ir sumando consigo mnisma%%
Im3r1=imrotate(Im3,1); %%Rotar un grado
Im3r1=imresize(Im3r1,[455 500]);
imf2=imfuse(Im3,Im3r, 'blend');
Im3r2=imrotate(Im3,2); %%Rotar dos grados
Im3r2=imresize(Im3r2,[455 500]);
imf3=imfuse(Im3r1,Im3r2, 'blend');
Im3r3=imrotate(Im3,3); %%Rotar tres grados
Im3r3=imresize(Im3r3,[455 500]);
imf4=imfuse(Im3r2,Im3r3, 'blend');
Im3r4=imrotate(Im3,4); %%Rotar cuatro grados
Im3r4=imresize(Im3r4,[455 500]);
imf5=imfuse(Im3r3,Im3r4, 'blend');
Im3r5=imrotate(Im3,5); %%Rotar cinco grados
Im3r5=imresize(Im3r5,[455 500]);
imf6=imfuse(Im3r4,Im3r5, 'blend');
figure(6)
imshow(imf6);
title('Imagen usando imfuse y blend, sumada consigo misma de 1° en 1° hasta 5°');