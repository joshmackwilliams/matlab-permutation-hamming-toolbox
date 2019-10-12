function ascii = permutation_set_to_ascii(set)
%PERMUTATION_SET_TO_ASCII Convert a permutation set to ascii
%   Converts a permutation set to ascii by separating each digit by spaces
%   and each permutation with a newline. 

ascii = "";
i = 1; 
while i <= length(set)
    j = 1;
    while j < length(set(i, :))
        ascii = ascii + set(i, j) + " ";
        j = j + 1;
    end
    ascii = ascii + set(i, j) + newline;
    i = i + 1;
end

end

