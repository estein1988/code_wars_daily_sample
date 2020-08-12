#filter_list([1,2,'a','b']) == [1,2]
#filter_list([1,'a','b',0,15]) == [1,0,15]
#filter_list([1,2,'aasf','1','123',123]) == [1,2,123]

l = [1, 2, 'a', 'b']

def filter_list(l)
    l.select do |element|
        element.class == Integer
    end
end

p filter_list(l)