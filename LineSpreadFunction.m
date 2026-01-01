% Import image data from a saved image 
imFile = imread("D:\MBT\Master_Thesis\Image_Data\usaf01.tiff"); 
% Plot intensity across horizontal edge 
y = zeros(101,1);  % creating array of zeros, to be filled with grey 
values 
width = 10;     
% definining width of the line 
column = 1500;  % assigning the column value 
% Assigning average intensity of each row along the line 
for j = 1721:1821;    
% end row values of the line 
i_mean = mean(imFile(j,(column - width/2):(column + width/2))); 
y(j-1720) = i_mean; 
end; 

base = mean(imFile(1720:1740,column)); 
A = mean(imFile(1790:1820,column)) - base;

% Plot intensity across vertical edge 
y = zeros(101,1);   % creating array of zeros, to be filled with grey 
values 
width = 10;         
% definining width of the line 
row = 1840;          
% assigning the row value 
% Assigning average intensity of each column along the line 
for j = 1361:1461; 
i_mean = mean(imFile((row - width/2):(row + width/2),j)); 
y(j-1360) = i_mean; 
end; 
x = linspace(0,100,101);    
% creating X-axis array for the plot 
base = mean(imFile(row,1360:1380)); 
A = mean(imFile(row,1440:1460)) - base;

x1 = linspace(-20,20,51);       
t1 = 2.583;     
% creating an x-axis array 
% assigning the certain value of 't' 
dy1 = t1* exp(-t1*x1).* (1+exp(-t1*x1)).^(-2);  % creating the y
axis array for the LSF 
% FWHM of LSF 
f_Gauss_y1 = fit(x1', dy1, 'gauss1'); 
FWHM_y1 = 2.3548 * f_Gauss_y1.c1/1.414;