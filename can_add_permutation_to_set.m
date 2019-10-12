function answer = can_add_permutation_to_set(set, d, permutation)
%CAN_ADD_PERMUTATION_TO_SET Returns true if hd(set U permutation) >= d
%   Returns true if the given permutation can be added to the set without 
%   reducing hd(set) below d

answer = true;
for i = 1:size(set, 1)
    if compute_hd_between(set(i, :), permutation) < d
        answer = false;
        return;
    end
end

end

