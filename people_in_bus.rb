def number(bus_stops)
    transpose = bus_stops.transpose.map {|array| array.reduce(:+)}
    transpose[0] - transpose[1]
end

p number([[10, 0], [3, 5], [5, 8]])


#alternate
def number(bus_stops)
    passengers = 0
    bus_stops.each do |a,b|
      passengers += a - b
    end
    passengers
end

describe "number" do
    it "works for some examples" do
        Test.assert_equals number([[10, 0], [3, 5], [5, 8]]), 5, "didn't work for [[10, 0], [3, 5], [5, 8]]"
        Test.assert_equals number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]), 17, "didn't work for [[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]"
        Test.assert_equals number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]), 21, "didn't work for [[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]"
    end
end