function derangement_array = derangements(n)
%DERANGEMENTS Computes and returns all derangements of the numbers 1..n
%   Results are returned as a matrix where each row represents a
%   derangement. The result is guaranteed to contain all possible
%   derangements of the given length. Depends on the countderangements()
%   function to preallocate the correct amount of memory. 
%   TODO: Create a nextderangement() function that works like nextperm(),
%   but for derangements. 

nderangements = count_derangements(n);
derangement_array = zeros(nderangements, n);
working_perm = zeros(1, n);
working_position = 1;
output_index = 1;

while true
    if(working_position == 0)
        break;
    end
    working_perm(working_position) = working_perm(working_position) + 1;
    if(working_perm(working_position) > n)
        working_perm(working_position) = 0;
        working_position = working_position - 1;
        continue;
    end
    if(working_perm(working_position) == working_position)
        continue;
    end
    is_valid = true;
    for i = 1:(working_position - 1)
        if(working_perm(i) == working_perm(working_position))
            is_valid = false;
            break;
        end
    end
    if(~is_valid)
        continue;
    end
    if(working_position == n)
        derangement_array(output_index, :) = working_perm;
        output_index = output_index + 1;
    else
        working_position = working_position + 1;
    end
end
