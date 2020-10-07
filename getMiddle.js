function getMiddle(s)
{
    var position;
    var length; 

    if (s.length % 2 == 1) {
        position = s.length / 2
        length = 1
    } else {
        position = s.length / 2 - 1
        length = 2
    }
    return s.substring(position, position + length)
}

//alternates
function getMiddle(s) {
    var middle = s.length / 2;
    return (s.length % 2) 
        ? s.charAt(Math.floor(middle))
        : s.slice(middle - 1, middle + 1);
}

function getMiddle(s)
{
    return s.substr(Math.ceil(s.length / 2 - 1), s.length % 2 === 0 ? 2 : 1);
}

//best one
function getMiddle(s)
{
    let middle = Math.floor(s.length/2);

    return s.length % 2 === 0
        ? s.slice(middle-1, middle+1)
        : s.slice(middle, middle+1);
}
