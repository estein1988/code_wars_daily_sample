// Complete the square sum function so that it squares each number passed into it and then sums the results together.=
// For example, for [1, 2, 2] it should return 9 because 1^2 + 2^2 + 2^2 = 9.


function squareSum(numbers){
    const square = numbers.map(number => number ** 2)
    const add = (a,b) =>
        a + b
    return square.reduce(add)
}

// let square = numbers.map(number => number ** 2)

function squareSum(numbers){
    return numbers.reduce(function(sum, n){
        return (n*n) + sum;
    }, 0)
}

function squareSum(numbers){
    var sum = 0;
    numbers.forEach(function(n) {
      sum += n * n
    });
    return sum;
}