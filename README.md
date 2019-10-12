# matlab-permutation-hamming-toolbox
Tools for working with permutation arrays and permutation hamming distance in MATLAB. 
# Background Information
For information on this problem, see this research paper https://utd-ir.tdl.org/handle/10735.1/5488. This is just one of many research papers on this subject. 
# Conventions
Certain conventions are used by all functions in this toolbox: 
1. The length of a permutation is usually denoted by the letter n
2. The hamming distance between two permutations is usually denoted by the letter d
3. Individual permutations are represented by a vector with one row and n columns
4. A set of permutations of length L is represented by a matrix with L rows and n columns, where each row is a permutation in the set
# Function List
Documentation is provided with the functions themselves, but summaries are also listed here for convenience: 
* compose_perms(p0, p1) - Permute one permutation by another
* compute_hd_between(p0, p1) - Returns the integer hamming distance between p0 and p1
* compute_set_hd(S) - Computes the minimum hamming distance between any two permutations in set S, where S is a permutation array
* count_derangements(n) - Returns the number of derangements that exist for a vector on length n
* derangements(n) - Returns all derangements of the numbers 1..n
* find_pairs_with_hd(S, d) - A debugging tool that displays all pairs of permutations in set S with a hamming distance of d
* nextperm(x, n) - Documentation can be found here: https://www.mathworks.com/matlabcentral/fileexchange/22692-nextperm
* permute_d_digits(p, d) - Returns a set S of all permutations where the hamming distance between p and S(i) == d
