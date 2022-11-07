/*
function kerulet(a, b, c) {
	return a + b + c;
}

const kerrulet = function(a, b, c) {
	return a + b + c;
}

const keerulet = (a, b, c) => {
    return a + b + c;
}


console.log(kerulet(1, 2, 3))
console.log(kerrulet(1, 2, 3))
console.log(keerulet(1, 2, 3))
*/


/*
function RAAAWR(voi) {
    if (typeof(voi) == "string") {
        return voi.length;
    } else if (typeof(voi) == "number") {
        return voi * 2;
    } else {
        return "Hiba van";
    }

}

console.log(RAAAWR(2))
console.log(RAAAWR("RAAWR"))
console.log(RAAAWR('2'))

*/

//rekurziv 
// faktorialis : 5*4! = 4! 4*3! stb...


// REKURZIV FUGGVENY : 
function fakt(n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        let eredmeny = n * fakt(n - 1);
        return eredmeny;
    }
}

console.log(fakt(3));


const kis = (a, b, callback) => {
    if (a < b) {
        callback(a, b)
    } else {
        callback(b, a)
    }

}

function ntolzig(n, z){
    for (n; n <= z; n++) {
        console.log(n)
    }
}


console.log(kis(30, 20, ntolzig))



const baszas = function(szo) {
    let eredmeny = "";
    for (let i = 0; i < szo.length; i++) {
        eredmeny += szo[i];
        console.log(eredmeny)
    }
}

baszas("RAAWR")