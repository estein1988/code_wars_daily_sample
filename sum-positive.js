// You get an array of numbers, return the sum of all of the positives ones.

// Example [1,-4,7,12] => 1 + 7 + 12 = 20

// Note: if there is nothing to sum, the sum is default to 0.
function positiveSum(arr) {
    var negatives = [];
    var sum = 0;

    for(var i=0; i < arr.length; i++) {
        if (arr[i] < 0) {
            negatives.push(arr[i])
        }else{
            sum += arr[i];
        }
    }
    return sum
}

console.log(positiveSum([1,2,3]))

//alternate
function positiveSum (arr) {
    return arr.filter(x => x>=0).reduce((a, c) => a + c, 0);
}