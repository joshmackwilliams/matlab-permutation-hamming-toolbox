function out_permutation = compose_perms(in_permutation, shift_permutation)
%SHIFT_BY_PERMUTATION Shift in_permutation using shift_permutation
%   Every element in in_permutation is moved to the index at the same
%   position in shift_permutation. Note that any symbol is allowed in the
%   input permutation, but the shift permutation must include only numbers
%   between 1 and the length of in_permutation. Additionally,
%   in_permutation and shift_permutation must be the same length. 

if(length(in_permutation) ~= length(shift_permutation))
    error("Input permutation and shift permutation should be the same length");
end

out_permutation = zeros(1, length(in_permutation));
i = 1;
while i <= length(shift_permutation)
    out_permutation(i) = in_permutation(shift_permutation(i));
    i = i + 1;
end

end

