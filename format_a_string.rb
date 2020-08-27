#my_solution
def list names
    all_names = names.map do |person|
        person[:name]
    end
    if all_names.count > 2
        extracted = all_names.each do |names|
            names
        end
        remove_last = (extracted.first extracted.size - 1)
        join = remove_last.join(", ")
        "#{join} & #{extracted.last}"
    elsif all_names.count == 2
        extracted = all_names.each do |names|
            names
        end
        extracted.join(" & ")
    else all_names.count == 1
        all_names.each do |name|
            return name
        end
    else 
        ""
    end
end

list ([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'}] )

#other solutions
def list names
    names = names.map { |name| name[:name] }
    last_name = names.pop
    return last_name.to_s if names.empty?
    "#{names.join(', ')} & #{last_name}"
end

def list names
    ret = ""
    until names.length == 0
        if names.length >= 3
            ret << names.shift[:name] + ", "
        elsif names.length == 2
            ret << names.shift[:name] + " & "
        else
            ret << names.shift[:name]
        end
    end
    ret
end

def list names
    names.map(&:values).flatten.each_slice(names.size > 1 ? names.size - 1 : 1).map{|n| n.join(', ')}.join(' & ')
end

def list names
    name_array = names.map { |hash| hash[:name] }
    case name_array.size
    when 0
        return ''
    when 1
        return name_array.first
    else
        last_name = name_array.pop
        name_array.join(', ') + " & #{last_name}"
    end
end