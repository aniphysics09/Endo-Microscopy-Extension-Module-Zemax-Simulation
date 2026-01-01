% Import image data from a saved image 
imFile = imread("D:\MBT\Master_Thesis\Image_Data\Beads\Beads0.tiff"); 
% Assigning nominal pixel position of a bead 
pixel_r_i = 1029; 
pixel_c_i = 1635; 
w = 20;     % defining a small area around the pixel 
% Finding actual pixel position with maximum intensity 
imFile_crop = imFile((pixel_r_i-w):(pixel_r_i+w), (pixel_c_i
w):(pixel_c_i+w)); 
[R,C] = find(imFile_crop == max(max(imFile_crop))); 
% If there are more than one pixel with same maximum intensity 
if length(R)>1 
    R = R(1); 
    C = C(1); 
end; 
 
pixel_r = pixel_r_i-w + R -1; 
pixel_c = pixel_c_i-w + C -1; 
 
% Background calculation 
BackGround_left = sum(sum(imFile(pixel_r, pixel_c-20:pixel_c
10)))/11; 
BackGround_right = sum(sum(imFile(pixel_r, 
pixel_c+10:pixel_c+20)))/11; 
BackGround = (BackGround_left + BackGround_right)/2; 
 
x = linspace(1,41,41);     % creating X-axis array for the plot 
y = zeros(41,1);    % creating array of zeros, to be filled with grey 
values 
% Assigning net grey values, eliminating the background, to the Y
axis array 
for i = 1:41; 
    y(i) = imFile(pixel_r, pixel_c-21+i) - BackGround; 
end; 
% Fitting the intensity plot with Gaussian 
f_Gauss = fit(x', y, 'gauss1'); 
height = f_Gauss.a1;        % peak value of the Gaussian 
FWHM = 2.3548 * f_Gauss.c1/1.414;   %FWHM from the fit

% Background calculation along vertical line 
BackGround_left = sum(imFile(pixel_r-20:pixel_r-10, pixel_c))/11; 
BackGround_right = sum(imFile(pixel_r+10:pixel_r+20, pixel_c))/11; 
BackGround = (BackGround_left + BackGround_right)/2; 
x = linspace(1,41,41);  % creating X-axis array for the plot 
y = zeros(41,1);    
% creating array of zeros, to be filled with grey 
values 
% Assigning net grey values, eliminating the background, to the Y
axis array 
for i = 1:41; 
y(i) = imFile(pixel_r-21+i, pixel_c) - BackGround; 
end; 
% Fitting the intensity plot with Gaussian 
f_Gauss = fit(x', y, 'gauss1'); 
height = f_Gauss.a1;        
% peak value of the Gaussian 
FWHM = 2.3548 * f_Gauss.c1/1.414;   %FWHM from the fit 