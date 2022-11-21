AN EFFICIENT EDGE DETECTION
ALGORITHM FOR NOISY MEDICAL
IMAGE
B.Tech. Project Report-II
By
Abhilash Kashyap
Abhishek Singh
Rabi Sankar Mahata
Dipen Ruidas
Under Supervision of
Asst. prof. Mr. Ranjit Kumar Mandal
Department of Computer Sc. and Engineering
Government College of Engineering and Ceramic
Technology
Kolkata
December 2019
1
A Project Report
Submitted in partial fulfillment of the requirements for the
award of the degree of
Bachelor of Technology
In
Computer Sc. and Engineering
By
ABHILASH KASHYAP
Roll No. : GCECTB-R16-3002
ABHISHEK SINGH
Roll No. : GCECTB-R16-3003
RABI SANKAR MAHATA
Roll No. : GCECTB-R16-3018
DIPEN RUIDAS
Roll No. : GCECTB-L16-3001
Department of Computer Sc. and Engineering
Government College of Engineering
and Ceramic Technology
Kolkata
December 2019
2
DECLARATION
We hereby declare that the project entitled “AN EFFICIENT EDGE DETECTION ALGORITHM
FOR NOISY MEDICAL IMAGE” submitted for the B. Tech. (CSE) degree is our original work and
the project has not formed the basis for the award of any other degree, diploma, fellowship or any other
similar titles.
Name and Roll No. of the Students Signature of the Students
1. ABHILASH KASHYAP ( Roll No. : GCECTB-R16-3002 )
2. ABHISHEK SINGH ( Roll No. : GCECTB-R16-3003 )
3. RABI SANKAR MAHATA ( Roll No. : GCECTB-R16-3018 )
4. DIPEN RUIDAS ( Roll No. : GCECTB-L17-3001 )
Place:
Date:
3
Government College of Engineering
And Ceramic Technology
73, A. C. Banerjee Lane, Kolkata, West Bengal 700010
…………………………………………………………………………
BONAFIDE CERTIFICATE
Certified that this project report titled AN EFFICIENT EDGE DETECTION ALGORITHM
FOR NOISY MEDICAL IMAGE is the authentic work carried out by ABHILASH KASHYAP
(Roll No. : GCECTB-R16-3002), ABHISHEK SINGH (Roll No. : GCECTB-R16-3003), RABI
SANKAR MAHATA (Roll No. : GCECTB-R16-3018), DIPEN RUIDAS (Roll No. : GCECTBL17-3001) who carried out the project work under my supervision. Certified further, that to the
best of my knowledge the work reported herein does not form part of any other project report or
dissertation on the basis of which a degree or award was conferred on an earlier occasion on this
or any other candidate.
………………………………………………………..
ASST. PROF. MR. RANJIT KUMAR MANDAL
SUPERVISOR
Assistant Professor
Department of Computer Science and Engineering
Government College of Engineering and
Ceramic Technology
Kolkata-700010
…………………………………………………………. …………………………………………
Dr. K. Saha Roy
HEAD OF THE DEPARTMENT
Assistant Professor & Head
Department of Computer Science and Engineering
Government College of Engineering and
Ceramic Technology
Kolkata-700010
External Examiner
4
ABSTRACT
Edge detection is an important technique for detecting edges and edge extraction in image
processing Edge detection of medical mages is in existence since many years but was still a
challenging and scope of research. It was found that the previously used algorithm or
technique were not that efficient to produce idle result in different cases, in most of the
cases medical images used to contain boundaries, shadows, noises, therefore it was difficult
to find out exact edge from the noisy image.
5
ACKNOWLEDGEMENT
We four students of Computer Science And Engineering of 4th year in Government College of
Engineering And Ceramic Technology are preparing a final year project named “AN
EFFICIENT EDGE DETECTION ALGORITHM FOR NOISY MEDICAL IMAGE” . We
whole heartedly express our sincere gratitude to our project guide Asst. Prof. Mr. Ranjit
Kumar Mandal who guided us throughout the project. We are also thankful to all our teachers
for explaining on critical aspect of topics related to the project. We would like to thank all of
the faculty members of all other respective departments for their intimate co-operation
throughout the period of the project. And last but not the least we would like to thank our
Principal Prof. Dr. Krishnendu Chakraborty for providing us with such a wonderful
opportunity.
x
TABLE OF CONTENTS
Title Page 1
Declaration of the Students 2
Bonafide Certificate 3
Abstract 4
Acknowledgement 5
List of Tables 6
1. INTRODUCTION i
1.1 Problem Definition i
1.2 Project Overview/Specifications i
1.3 Software Specification ii
2. LITERATURE SURVEY iii
2.1 Existing System iii
2.2 Proposed System iv
2.3 Feasibility study
3. SYSTEM ANALYSIS & DESIGN v
3.1 Flowcharts / DFDs / ERDs v
3.2 Algorithms vii
3.3 Design and test steps xii
4. RESULTS / OUTPUTS xiv
5. CONCLUSIONS AND SCOPE FOR FUTURE WORK xvii
6. REFERENCES xviii
7. APPENDICES xix
xi
INTRODUCTION:
PROBLEM DEFINATION:
An efficient edge detection algorithm for noisy medical image. Each and every
medical image contains some visual noise. It is generally desirable for image
brightness (or film density) to be uniform except where it changes to form an image.
here are some factors which however tends to generate some variation in brightness of
the displayed image even when the image runs out of details. No imaging method is
free of noise, but noise is much more prevalent in certain types of imaging procedures
than in others.
PROJECT OVERVIEW & SPECIFICATION:
Noise in images:
Image noise is random variation of brightness or colour information in the images
captured. It is degradation in image signal caused by external sources. Images
containing multiplicative noise have the characteristic that the brighter the area the
noisier it. But mostly it is additive.
Types of Image noise:
There are different types of image noise. They can typically be divided into 3 types.
Photoelectronic, Impulse, Structured
Under photoelectronic there are 2 types:
Photon
Thermal
Under impulse there are 2 types:
Salt noise and Pepper noise Where we have worked only on Gaussian Noise which
comes under Thermal Noises of Photoelectronic type and Salt and Pepper noise of
Impulse type.
xii
Why we detect edges:
Most of the shape information of an image is enclosed in edges. So first we detect
these edges in an image and by using these filters and then by enhancing those areas
of image which contains edges, sharpness of the image will increase and image will
become clearer.
Type of edge detection techniques:
There are many edge detection techniques. Here are some of the masks for edge
detection which we have compared previously :
Prewitt Operator
Sobel Operator
Robert Operator
Canny Edge Detector.
We will be working with Canny Edge Detector since it gives the best result.
Image Filtering:
Image filtering is used to:
Remove noise
Sharpen contrast
Highlight contours
Detect edges
Other uses?
Image filters can be classified as linear or nonlinear. Linear filters are also know as
convolution filters as they can be represented using a matrix multiplication.
Thresholding and image equalisation are examples of nonlinear operations, as is the
median filter.
There are many pre-existing filtering techniques out of which we used :
i. Median filter for Salt and Pepper noise
ii. Sigma Filter for Gaussian noise.
xiii
SOFTWARE SPECIFICATION:
We are currently working on MATLAB R2016a version. And may take help of some
other software’s in future according to the requirement of this project.
LITERATURE SURVEY:
EXISTING SYSTEM:
There are many pre-existing techniques by which only edges are being detected, as we
have previously seen, if some amount of noise is added to the image the pre-existing
techniques fails to detect only the edges of the image rather they would detect even
the noises.
PROPOSED SYSTEM:
As all of our comparative studies were done previously, we found out canny as the
best edge detector. Hence we worked further taking canny edge detector in use. As a
result we get that canny detects also the noises which are being added.
According to the concept of removal of noises and then detection of edges Canny
edge detector was taken in use for the detection for removal Sigma filter has been
used to remove the Gaussian noise and Median filter has been used to remove the Salt
and Pepper noise. So according to our concept firstly we’ve detected the edges of the
original medical image through canny edge detector, and then we’ve added some
noise to the image, after that we’ve added a suitable filter and suitable results were
found.
FEASIBILITY STUDY:
According to the concept of removal of noises and then detection of edges both going
simultaneously but there were no as such techniques previously which would do both
at the same time.
Yes this topic is certainly feasible. But as per now it is possible through merging an
edge detection technique and a noise removal technique together as in the same code
or merging two algorithms and creating a new algorithm which would work both way. 
xiv
SYSTEM ANALYSIS & DESIGN:
FLOWCHARTS:
Flow chart of canny edge detection algorithm:
xv
ALGORITHM:
Canny Edge Detector:[6][7][8][9][10]
Noise reduction by smoothing
Noise contained in image is smoothed by convolving the input image I (i, j) with
Gaussian filter G.Mathematically, the smooth resultant image is given by
Prewitt operators are simpler to operator as compared to sobel operator but more
sensitive to noise in comparison with sobel operator.
Finding gradients
In this step we detect the edges where the change in grayscale intensity is maximum.
Required areas are determined with the help of gradient of images. Sobel operator is
used to determine the gradient at each pixel of smoothened image. Sobel operators in i
and j directions are given as
These sobel masks are convolved with smoothed image and giving gradients in i and j
directions.
Therefore edge strength or magnitude of gradient of a pixel is given by
xvi
The direction of gradient is given by
Non maximum suppressions:
Non maximum suppression is carried out to preserves all local maxima in the gradient
image, and deleting everything else this results in thin edges. For a pixel M (i, j):
Firstly round the gradient direction then compare the gradient
magnitude of the pixels in positive and negative gradient directions i.e. If gradient
direction is east then compare with gradient of the pixels in east and west directions
say E (i, j) and W (i, j) respectively.
If the edge strength of pixel M (i, j) is largest than that of E (i, j) and W (i, j), then
preserve the value of gradient and mark M (i, j) as edge pixel, if not then suppress
or remove.
Hysteresis thresholding :
The output of non-maxima suppression still contains the local maxima created by
noise. Instead choosing a single threshold, for avoiding the problem of streaking two
thresholds are used.
For a pixel M (i, j) having gradient magnitude G following conditions exists to detect pixel as
edge:
xvii
MEDIAN FILTER:
Median filtering is a nonlinear method used to remove noise from
images. It is widely used as it is very effective at removing noise while preserving
edges. It is particularly effective at removing ‘salt and pepper’ type noise. The median
filter works by moving through the image pixel by pixel, replacing each value with
the median value of neighbouring pixels. The pattern of neighbours is called the
"window", which slides, pixel by pixel, over the entire image. The median is
calculated by first sorting all the pixel values from the window into numerical order,
and then replacing the pixel being considered with the middle (median) pixel value.
The following example shows the application of a median filter to a simple
one dimensional signal.
A window size of three is used, with one entry immediately preceding and
following each entry.
y[0] = median[3 3 9] = 3 y[5] = median[3 6 8] = 6
y[1] = median[3 4 9] = 4 y[6] = median[2 6 8] = 6
y[2] = median[4 9 52] = 9 y[7] = median[2 2 6] = 2
y[3] = median[3 4 52] = 4 y[8] = median[2 2 9] = 2
y[4] = median[3 8 52] = 8 y[9] = median[2 9 9] = 9
For y[1] and y[9], extend the left-most or right most value outside the boundaries of
the image same as leaving left-most or right most value unchanged after 1-D median.
xviii
SIGMA FILTER:
The Sigma filter is also identified as a neighborhood filter. It replaces the intensity
value of the current pixel by the average of all of the intensity values whose distance
is smaller than Sigma to the current intensity value. The Sigma value therefore defines
the intensity interval within which the pixels in the neighborhood are supposed to be.
Pseudo Code:
for each pixel Input(x,y)
{ sum=0; no=0; MidPixel=Input(x,y);
for each neighbor inside the kernel centered around (x,y):
if (abs(Input(x,y)-MidPixel) <= sigma) { sum+=Input(x,y); no++; }
if (no != 0) Output(X,Y)=Round(sum/no); else Output(x,y)=Input(x,y);
}
DESIGN AND TEST STEPS:
PROCESS OF HOW CANNY EDGE DETECTION ALGORITHM
WORKS:
The Process of Canny edge detection algorithm can be broken down to 5 different
steps:
1. Apply Gaussian filter to smooth the image in order to remove the noise
2. Find the intensity gradients of the image
3. Apply non-maximum suppression to get rid of spurious response to edge
detection.
4. Apply double threshold to determine potential edges
5. Track edge by hysteresis: Finalize the detection of edges by suppressing all the
other edges that are weak and not connected to strong edges.
xix
PROCESS OF HOW MEDIAN FILTER ALGORITHM WORKS:
Median filtering is a nonlinear method used to remove noise from images. It is widely
used as it is very effective at removing noise while preserving edges. It is particularly
effective at removing ‘salt and pepper’ type noise. The median filter works by moving
through the image pixel by pixel, replacing each value with the median value of
neighbouring pixels. The pattern of neighbours is called the "window", which slides,
pixel by pixel, over the entire image. The median is calculated by first sorting all the
pixel values from the window into numerical order, and then replacing the pixel being
considered with the middle (median) pixel value.
PROCESS OF HOW SIGMA FILTER ALGORITHM WORKS:
The Sigma filter is also identified as a neighborhood filter. It replaces the intensity
value of the current pixel by the average of all of the intensity values whose distance
is smaller than Sigma to the current intensity value. The Sigma value therefore defines
the intensity interval within which the pixels in the neighborhood are supposed to be.
xx
RESULT AND OUTPUTS:
ADDED SALT & PEPPER NOISE TO THE ORIGINAL IMAGE:
FOR BRAIN:
xxi
FOR CHEST:
xxii
ADDED GAUSSIAN NOISE TO THE ORIGINAL IMAGE:
FOR BRAIN:
xxiii
FOR CHEST:
xxiv
CONCLUSIONS:
The project entitled “An efficient edge detection algorithm for noisy medical image”
is a system that deals with the issue related to noisy images. As all of our comparative
studies were done previously, we found out canny as the best edge detector. Hence we
worked further taking canny edge detector in use. As a result we get that canny
detects also the noises which are being added. So according to our concept firstly
we’ve detected the edges of the original medical image through canny edge detector,
and then we’ve added some noise to the image, after that we’ve added a suitable filter
and suitable results were found. 
xxv
REFERENCES:
[1] Dim, Jules R.; Takamura, Tamio (2013-12-11). "Alternative Approach for
Satellite Cloud Classification: Edge Gradient Application". Advances in
Meteorology. 2013: 1–8. doi:10.1155/2013/584816. ISSN 1687-9309.
[2]^ Prewitt, J.M.S. (1970). "Object Enhancement and Extraction". Picture processing
and Psychopictorics. Academic Press.
[3] Feature Detectors – Sobel Edge Detector
[4]Machine Perception Of Three-Dimensional Solids
[5]^ LS. Davis, "A survey of edge detection techniques", Computer Graphics and
Image Processing, vol 4, no. 3, pp 248-260, 1975
[6] James Clerk Maxwell,1868 DIGITAL IMAGE PROCESSING Mathematical and
Computational
Methods.
[7] R .Gonzalez and R. Woods, Digital Image Processing, ,Addison Wesley, 1992, pp
414 - 428.
[8] S. Sridhar, Oxford university publication. , Digital Image Processing.
[9] Shamik Tiwari , Danpat Rai & co.(P) LTD. “Digital Image processing”
[10] J. F. Canny. “A computational approach to edge detection”. IEEE Trans. Pattern
Anal. Machine
Intell., vol.PAMI-8, no. 6, pp. 679-697, 1986 Journal of Image Processing (IJIP),
Volume (3) : Issue (1)