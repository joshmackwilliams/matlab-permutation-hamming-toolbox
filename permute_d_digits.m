function permutations = permute_d_digits(permutation, d)
%PERMUTEDIGITS Return all permutations q where hd(p, q) == d
%   Each permutation returned will be identical to the given permutation,
%   but d digits will be out of place. Depends on derangements() to
%   calculate derangements.
%   TODO: Optimize this function. 

n = length(permutation);
digitcombos = nchoosek(1:n, d);
permutations = repmat(permutation, nchoosek(n, d) * countderangements(d), 1);
dderangements = derangements(d);

x = 1;
for i = 1:(size(dderangements, 1))
    for j = 1:(size(digitcombos, 1))
        for k = 1:d
            permutations(x, digitcombos(j, k)) = permutation(digitcombos(j, dderangements(i, k)));
        end
        x = x + 1;
    end
end

end
