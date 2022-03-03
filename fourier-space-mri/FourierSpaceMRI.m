% Joseph Young Lee

% Demonstrates the use of conver

%% Normal
data1 = ifft2(kspace1);
data1 = log(abs(data1));
figure;
subplot(1,2,1)
imagesc(data1);colormap(gray); axis off; title('MRIdata, kspace1')

subplot(1,2,2)
data2 = ifft2(kspace2);
data2 = log(abs(data2));

imagesc(data2);colormap(gray); axis off; title('MRIdata, kspace2')
%% Alternating

altkspace1 = kspace1;
altkspace1(:, 1:2:512) = 0;
data1 = ifft2(altkspace1);
data1 = log(abs(data1));
figure;
subplot(1,2,1)
imagesc(data1);colormap(gray); axis off; title('MRIdata, kspace1 alternating')

altkspace2 = kspace2;
altkspace2(:, 1:2:512) = 0;
data2 = ifft2(altkspace2);
data2 = log(abs(data2));
subplot(1,2,2)
imagesc(data2);colormap(gray); axis off; title('MRIdata, kspace2 alternating')

%% central 256

c256kspace1 = kspace1;
c256kspace1(:, 1:128) = 0;
c256kspace1(:, 384:512) = 0;

data1 = ifft2(c256kspace1);
data1 = log(abs(data1));
figure;
subplot(1,2,1)
imagesc(data1);colormap(gray); axis off; title('MRIdata, kspace1 center 256')

c256kspace2 = kspace2;
c256kspace2(:, 1:128) = 0;
c256kspace2(:, 384:512) = 0;

data2 = ifft2(c256kspace2);
data2 = log(abs(data2));
subplot(1,2,2)
imagesc(data2);colormap(gray); axis off; title('MRIdata, kspace2 center 256')

%% central 128

c128kspace1 = kspace1;
c128kspace1(:, 1:256-64) = 0;
c128kspace1(:, 256+64:512) = 0;

data1 = ifft2(c128kspace1);
data1 = log(abs(data1));
figure;
subplot(1,2,1)
imagesc(data1);colormap(gray); axis off; title('MRIdata, kspace1 center 128')

c128kspace2 = kspace2;
c128kspace2(:, 1:256-64) = 0;
c128kspace2(:, 256+64:512) = 0;

data2 = ifft2(c128kspace2);
data2 = log(abs(data2));
subplot(1,2,2)
imagesc(data2);colormap(gray); axis off; title('MRIdata, kspace2 center 128')

%% central 64

c64kspace1 = kspace1;
c64kspace1(:, 1:256-32) = 0;
c64kspace1(:, 256+32:512) = 0;

data1 = ifft2(c64kspace1);
data1 = log(abs(data1));
figure;
subplot(1,2,1)
imagesc(data1);colormap(gray); axis off; title('MRIdata, kspace1 center 64')

c64kspace2 = kspace2;
c64kspace2(:, 1:256-32) = 0;
c64kspace2(:, 256+32:512) = 0;

data2 = ifft2(c64kspace2);
data2 = log(abs(data2));
subplot(1,2,2)
imagesc(data2);colormap(gray); axis off; title('MRIdata, kspace2 center 64')
