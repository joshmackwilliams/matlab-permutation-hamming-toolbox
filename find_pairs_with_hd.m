function find_pairs_with_hd(set, d)
%FINDPAIRSWITHHD Given a set, display pairs of permutations with distance d
%   This function is mostly intended to debug algorithms for generating
%   sets - if your algorithm generates sets with a lower hamming distance
%   than they should, you can check and see what specific permutations are
%   causing it to fail. Since this is a debug function, it just uses a
%   brute-force algorithm. No cleverness here. 

set_length = size(set, 1); % Hopefully avoid repeatedly computing length by using this line
i = 1;
while(i <= set_length)
    permutation0 = set(i, :);
    j = i + 1;
    while(j <= set_length)
        permutation1 = set(j, :);
        pair_hd = compute_hd_between(permutation0, permutation1);
        if(pair_hd == d)
            disp(permutation0);
            disp(permutation1);
            disp("------------------");
        end
        j = j + 1;
    end
    i = i + 1;
end

end

