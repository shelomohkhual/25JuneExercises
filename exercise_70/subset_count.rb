def subset_count(option,size)
    if option == 0
        return 0
    elsif size == 0
        return 1
    elsif option == 1
        return option
    else
        return subset_count(option-1,size-1) + subset_count(option-1,size)
    end
end
