#likes [] // must be "no one likes this"
#likes ["Peter"] // must be "Peter likes this"
#likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
#likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
#likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"

#original

names = []

def likes(names)
    if names.count == 0
        p "no one likes this"
    elsif names.count == 1
        p names.join + " likes this"
    elsif names.count == 2
        p names.join(" and ") + " like this"
    elsif names.count == 3
        first_element = names[0]
        second_element = names[1]
        third_element = names[2]
        p "#{first_element}, #{second_element} and #{third_element} like this"
    elsif names.count >= 4
        first_element = names[0]
        second_element = names[1]
        number = names.count - 2
        p "#{first_element}, #{second_element} and #{number} others like this"
    end
end

#refacotred

names = []

def likes(names)
 if names.count == 0
    p "no one likes this"
elsif names.count == 1
    p names.join + " likes this"
elsif names.count == 2
    p names.join(" and ") + " like this"
elsif names.count == 3
    p "#{names[0]}, #{names[1]} and #{names[2]} like this"
elsif names.count >= 4
    p "#{names[0]}, #{names[1]} and #{names.count - 2} others like this"
end 

#refacotred with case

names = []

def likes(names)
    case names.size
    when 0
        p "no one likes this"
    when 1
        p "#{names[0]} likes this"
    when 2
        p "#{names[0]} and #{names[1]} likes this"
    when 3
        p "#{names[0]}, #{names[1]} and #{names[2]} like this"
    else
        p "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
    end 
end


        
    
