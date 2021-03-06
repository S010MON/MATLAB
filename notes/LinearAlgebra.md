
### Creating Vectors

	v = [1, 2, 3];  	% Creates a vector row

	v = [1; 2; 3];		% Creates a vector column

	v = [1, 2, 3];
	v = v';			% Shortcut column from row

### Operating on Vectors

Where v is the vector [1,2,3]:

	v' = [1; 2; 3]		% Gives the transpose of v

	max(v) = 3		% Selects the highest number in the vector

	[max, ind] = max(v)	% Selects the highest vector and sets ind to the index
		
		max = 3
		ind = 3				

### Creating Matrices

        M = [1, 2, 3; 4, 5, 6];

        -OR-

        M = [[1, 2, 3];[4, 5, 6]];

        -OR-

        M = [X1; X2];

        -OR-

        M = [[1; 4],[2; 5],[3; 6]];

### Indexing

        To access row r in column c of array A:   A(r,c)

        To access a range use the ':' operator:   A(r, c1:c4)   -OR-    A(r1:r2, c)

        To access from a mid point to the end:    A(r, c:end)

### Dimensions

	size(A) = [m, n];				% The size() function returns the dimensions m and n as a vector

### Colon Iterator

	1:10      = [1 2 3 4 5 6 7 8 9 10]		% Create an array from 1 to 10
	
	startValue : increment : final value		% Creates an array of values at set increments

	1 : 2 : 10	= [2, 4, 6, 8, 10]


### Linspace

	linspace(from, to, spacing)			% Creates an array of equally spaced values

	linspace(1, 600, 7)	= 1	10	20	30	40	50	60


### Zeros

	zeros(m,n)					% Creates a matrix of zeros M x N

	zeros(3,5)      =      0 0 0 0 0
                               0 0 0 0 0
                               0 0 0 0 0

### Ones

        ones(m,n)                                       % Creates a matrix of ones M x N

        ones(3,5)      	=      1 1 1 1 1
                               1 1 1 1 1
                               1 1 1 1 1

### Random

	rand(m,n)					% Creates a random M x N matrix

	rand(3,3)       =     0.8301   0.4566   0.5093
			      0.4763   0.5836   0.8557                                                                     0.5847   0.8590   0.5216

	randn(m,n) 					% Creates a gaussian random matrix

### Matrix Element-by-Element (EbE) Operations

	A.*B		Where A [ 1 2; 3 4] and B = [9 8; 7 6];

			Output = [0 8; 14 18]

	A./B		Divide EbE
	
	A.^B		Power of EbE

	>		Logical checks elements size  i.e. [1 2 3 4 5] > 3;  returns [0 0 0 1 1]


### Matrix Operations

	A'		Transpose

			C = 1 2		C' = 1 3	
			    3 4		     2 4


### Linear Algebra Operations

	[1,2]'	=	1
			2
	
	v + u		Vector addition

	c*v		Scalar multiplication of the vector by a constant

	v.u		Produces the angle Theta between the two vectors

	cross(v,u)	Produces the cross product

### Linear Dependance

	x = 3*v - 2*w + 4*u
	
	x =	-8
		-1
		 4

### Identity Matrix

	eye(n)		
	        1 0 0 0		%where n is the columns and rows
		0 1 0 0
		0 0 1 0
		0 0 0 1
      
### Determinant

	det(M)		% Where M is a n x n matrix (identity matrix)


### Inverse Matrix

	inv(M)		% resolves to Inf if there is no inverse
	pinv(M)		% resolves to an inverted matrix regardless of whether the matrix is invertable or not

### Augmented Matrix

	[A,y]		% Contatonate vector y to matrix A

### Rank
	
  if:	rank([A,y]) != rank(A)+1

	then:	y is linearly independant and there is no solutions for the SLE

### Backslash divide

	A\y	To solve augmented matrix [A,y]

### Functions

	magic(n)			% Creates a n x n matrix where all rows and columns add to the same thing
	
	find([boolean_expresson])	% Produces two vectors [r,c] that list the row and column of any element that validates to true

	sum(a)				% Sums all the elements of the vector a
	sum(a, d) 			% sums along dimension d (default is 1)

	prod(a)				% Computes the product of the vector a's elements

	floor(a)			% rounds down all elements of a to the nearest integer (i.e.  1.4 -> 1)

	ceil(a)				% rounds up all elements to the nearest integer

	max(M, [], 1)			% takes the column wise maximum of the matrix M (where 1 indicates the dimension)
