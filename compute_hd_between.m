function hd = compute_hd_between(permutation0, permutation1)
%COMPUTE_HD_BETWEEN Compute the hamming distance between two given
%permutations
%   A version of the built-in hamming distance function, but returns an
%   integer hamming distance rather than a float. 
%   TODO: If possible, create optimized versions of this to check for
%   certain situations, such as whether hd(p0, p1) is less than or greater 
%   than a given value based on the idea that you don't necessarily have to 
%   check all positions to determine an inequality like this. 
%   Update 10/12/2019: converted to use built-in vector operations. Now only one line
%   of code, and hopefully faster

hd = nnz(permutation0 - permutation1);

end

