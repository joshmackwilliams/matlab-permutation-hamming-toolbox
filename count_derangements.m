function nderangements = count_derangements(n)
%COUNTDERANGEMENTS Returns the number of derangements of n symbols
%   Used by the derangements() function to preallocate the correct amount
%   of memory when computing derangements. Runtime is O(n)
nderangements = 1;
nmin1derangements = 0;
for i = 3:n
    nmin2derangements = nmin1derangements;
    nmin1derangements = nderangements;
    nderangements = (i - 1) * (nmin1derangements + nmin2derangements);
end
end

