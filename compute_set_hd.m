function hd = compute_set_hd(set)
%COMPUTE_SET_HD Compute the minimum hamming distance between any two
%permutations in the given set
%   Iterates through the given set of permutations (a two-dimensional
%   matrix) and returns the lowest hamming distance in the set. Note that
%   this is an integer hamming distance, not a fraction. 

set_length = size(set, 1); % Hopefully avoid repeatedly computing length by using this line
hd = inf;
i = 1;
while(i <= set_length)
    permutation0 = set(i, :);
    j = i + 1;
    while(j <= set_length)
        permutation1 = set(j, :);
        pair_hd = compute_hd_between(permutation0, permutation1);
        if(pair_hd < hd)
            hd = pair_hd;
        end
        j = j + 1;
    end
    i = i + 1;
end

