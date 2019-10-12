function set = random_generate_set_with_distance(n, d, persistence, set)
%RANDOM_GENERATE_SET_WITH_DISTANCE Generate a set of permutations with
%length n and a minimum hamming distance of d using the random method
%   Starts with an empty set, and then repeatedly attempts to add a random
%   permutation of length n to the set. If the hamming distance between the new
%   permutataion and another permutation in the set is lower than d, the
%   permutation is not added and we try another one until we get
%   consecutive fails equal to the persistence parameter

if(nargin > 4)
    error("Too many arguments: expected between 2 and 4, got " + nargin);
end

switch nargin
    case 2
        persistence = 1000;
        set = [];
    case 3
        set = [];
end

consecutive_fails = 0;
set_length = length(set);
while(consecutive_fails < persistence)
    permutation = randperm(n);
    
    if can_add_permutation_to_set(set, d, permutation)
        set_length = set_length + 1;
        set(set_length, :) = permutation;
        consecutive_fails = 0;
    else
        consecutive_fails = consecutive_fails + 1;
    end
end

