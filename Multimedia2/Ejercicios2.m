clc;
Im=imread('perro','jpg');
Im2=imread('rostro','jpg');
Im3=imread('paisaje','jpg');

Imp=imread('Edificios','png');
Imp2=imread('opera','png');
Imp3=imread('psico','jpg');
Imp4=imread('psico','jpg');

                        %%Antialiasing normie%%
newsize=imresize(Im,0.50);
figure(1);
subplot(2,1,1)
imshow(newsize);
title('Perro 50% antialiasing on')
newsize2=imresize(Im,0.50,'Antialiasing', false);
subplot(2,1,2)
imshow(newsize2);
title('Perro 50% antialiasing off');

newsizeb=imresize(Im2,0.70);
figure(2);
subplot(2,1,1)
imshow(newsizeb);
title('Rostro 70% antialiasing on')
newsizeb2=imresize(Im2,0.70,'Antialiasing', false);
subplot(2,1,2)
imshow(newsizeb2);
title('Rostro 70% antialiasing off');

newsizec=imresize(Im3,0.80);
figure(3);
subplot(2,1,1)
imshow(newsizec);
title('Paisaje 80% antialiasing on')
newsizec2=imresize(Im3,0.80,'Antialiasing', false);
subplot(2,1,2)
imshow(newsizec2);
title('Paisaje 80% antialiasing off');

                        %%Antialiasing psico%%
newsizep=imresize(Imp,0.50);
figure(4);
subplot(2,1,1)
imshow(newsizep);
title('Edificios 50% antialiasing on')
newsizep2=imresize(Imp,0.50,'Antialiasing', false);
subplot(2,1,2)
imshow(newsizep2);
title('Edificios 50% antialiasing off');

newsizepb=imresize(Imp2,0.70);
figure(5);
subplot(2,1,1)
imshow(newsizepb);
title('Opera 70% antialiasing on')
newsizepb2=imresize(Imp2,0.70,'Antialiasing', false);
subplot(2,1,2)
imshow(newsizepb2);
title('Opera 70% antialiasing off');

newsizepc=imresize(Imp4,0.80);
figure(6);
subplot(2,1,1)
imshow(newsizepc);
title('Circulos 80% antialiasing on')
newsizepc2=imresize(Imp4,0.80,'Antialiasing', false);
subplot(2,1,2)
imshow(newsizepc2);
title('Circulos 80% antialiasing off');