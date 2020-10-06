function digitize(n) {
    return n.toString().split("").reverse().map(stringElement => +stringElement)
}

//alternate
function digitize(n) {
    return String(n).split('').map(Number).reverse()
}

function digitize(n) {
    return Array.from(String(n), Number).reverse();
}

//attempted this on own, I don't think had a "return" statement on both lines. set a const on first line and returned const on second line. 
function digitize(n) {
    return n.toString().split("").reverse().map(function(i){
        return parseInt(i);
    });
}