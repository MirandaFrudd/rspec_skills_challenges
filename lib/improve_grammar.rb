def improve_grammar(str)
    if str.start_with?(str[0].capitalize) && /[!.?]\z/.match(str)
        return true
    # elsif str.start_with?(str[0].downcase)
    else
        return false
    end
end