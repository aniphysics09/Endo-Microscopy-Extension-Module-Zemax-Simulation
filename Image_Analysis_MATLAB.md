Line Spread Function (LSF)

A negative USAF 1951 resolution test target, R3L1S4N from THORLABS, was used for the calculation of Line Spread Function (LSF) from its image.

LineSpreadFunction.m MATLAB script was used to analyse the imaging quality of the optical system

The bright square pattern in between group 6 and group 7 was chosen to examine the LSF. For checking the intensity profile across the horizontal edge of the square, with low intensity above the edge and high intensity below the edge, a column value (pixel) was selected along which a vertical line can be drawn to plot the intensity. The column value was chosen near the middle part of the edge. For more accuracy in the intensity profile, a certain width was assigned to the line. The width was set as 10 pixels for images with large size of the square pattern, and 5 pixels for the images with smaller size of the square pattern. The length of the line was chosen to be 101 pixels, with 50 pixels above the edge and 50 pixels below the edge.

The plot was fitted with a customised equation of sigmoid step function: 

f(𝑥) = 𝐴. (1 +exp(𝑐−𝑡𝑥)) +𝑏 
<img width="1180" height="538" alt="image" src="https://github.com/user-attachments/assets/7681314f-2b38-4d48-bd1c-a0c42ed12a5e" />


Point Spread Function (PSF)

Fluorescent beads were used as samples for testing under the fluorescence microscope configuration, where those beads were considered to be effectively point sources and were imaged for PSF calculations. The specimen used for this case was L5155 from Sigma-Aldrich, - fluorescent yellow-green latex beads of mean particle size 30 nm, in aqueous solution. 

PointSpreadFunction.m MATLAB script was used to analyse the imaging quality of the optical system

