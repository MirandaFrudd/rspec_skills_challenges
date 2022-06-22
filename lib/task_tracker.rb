def task_tracker(str)
    if str.include?("#TODO")
        return true
    end

    return false
end