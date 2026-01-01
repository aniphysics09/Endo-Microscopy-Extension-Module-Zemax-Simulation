Line Spread Function (LSF)

A negative USAF 1951 resolution test target, R3L1S4N from THORLABS, was used for the calculation of Line Spread Function (LSF) from its image.

LineSpreadFunction.m MATLAB script was used to analyse the imaging quality of the optical system

The bright square pattern in between group 6 and group 7 was chosen to examine the LSF. For checking the intensity profile across the horizontal edge of the square, with low intensity above the edge and high intensity below the edge, a column value (pixel) was selected along which a vertical line can be drawn to plot the intensity. The column value was chosen near the middle part of the edge. For more accuracy in the intensity profile, a certain width was assigned to the line. The width was set as 10 pixels for images with large size of the square pattern, and 5 pixels for the images with smaller size of the square pattern. The length of the line was chosen to be 101 pixels, with 50 pixels above the edge and 50 pixels below the edge.

The plot was fitted with a customised equation of sigmoid step function: 

f(𝑥) = 𝐴. (1 +exp(𝑐−𝑡𝑥))^(-1) +𝑏 

where b is the mean base intensity above the edge; and A is the height from the mean base intensity to the mean high intensity. c is the position of the actual edge on the vertical line. t defines the slope of the curve between the base and the ceiling. 



<img width="1180" height="538" alt="image" src="https://github.com/user-attachments/assets/7681314f-2b38-4d48-bd1c-a0c42ed12a5e" />

The values of A and b were inserted into the sigmoid step equation, and the intensity profile was then fitted with equation in the curve fitting tool. The tool gives the values of the central position c and the slope t .
The equation was now modified subtracting the base b, and normalising the height by dividing with A. Also the central position was taken as c = 0. The modified equation looks like: 

f(𝑥) =  (1 + exp(−𝑡𝑥))^(-1)

Now the equation depends only on the slope, which describes the amount of the spread of the ideally sharp edge. 
The first derivative of this final equation gives the Gaussian line spread function: 

f(𝑥) = 𝑡.(exp(−𝑡𝑥)). (1 +exp(−𝑡𝑥))^(-2) 

Point Spread Function (PSF)

Fluorescent beads were used as samples for testing under the fluorescence microscope configuration, where those beads were considered to be effectively point sources and were imaged for PSF calculations. The specimen used for this case was L5155 from Sigma-Aldrich, - fluorescent yellow-green latex beads of mean particle size 30 nm, in aqueous solution. 

PointSpreadFunction.m MATLAB script was used to analyse the imaging quality of the optical system

For the calculation of the PSF, the image of the fluorescent beads was opened in ImageJ. One smallest bright dot was chosen for the calculation. The nominal pixel value close to the bright dot was read out from ImageJ. The image file was imported in MATLAB. The pixel position of the maximum intensity, within a small area around the nominal pixel value, was sorted. Next, the background noise was eliminated. Now the intensity profile along a horizontal line, of length 41 pixels, was plotted. The intensity plot was then fitted with a Gaussian, and the FWHM of the Gaussian curve was evaluated from the fit. 
On the same bright spot on the same image, intensity profile was plotted along a vertical line, i.e., along a column, in a similar manner. 

The FWHM values from the horizontally and vertically calculated PSFs were compared for sagittal and tangential difference, and averaged to obtain the result of the PSF across that particular bead.

<img width="857" height="381" alt="image" src="https://github.com/user-attachments/assets/65dfde28-dd24-456a-8e68-394923545baf" />

