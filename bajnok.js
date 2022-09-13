alert("istenem mit megy")

let toriTanar, magyarTanar, matekTanar;
toriTanar = "Kubik";
magyarTanar = "Dr Egriné opauszky eszter maria";
matekTanar = "SZekelyne";
console.log(toriTanar);

let szam = 23;
let szo = "string";
console.log(typeof(szam));

let termek1
console.log(typeof(termek1));

let ar = 3100;
const PI = 3.14;
ar++;
console.log(ar);
ar += 10;
console.log(ar);
ar -= 50;
ar *= 2;
ar /= 2;
ar %= 5; // maradekos osztas
console.log(ar);
ar *= 1001;
if (ar > 1000) {
    console.log("mitmegy");
} else {
    console.log("mitmenemmegy");
}

if (ar > 7000) {
    console.log("nagyobb mint 2000")
} else if (ar > 5000) { 
    console.log("5000-tol nagyobb")
} else {
    console.log("5000-tol kisebb")
}

let dragaKenyer = 453;

if (dragaKenyer % 2 === 0) {
    console.log("mennyire paros edes istenem")
} else {
    console.log("hat ez egyaltalan nem paros, ez nem megy nagyot")
}

if (dragaKenyer === 453) {
    alert("paratlan")
} else {
    alert("cigany indulo")
}
// == : csak erteket vizsgal
// === erteket es tipust is vizsgal

document.write(dragaKenyer);

document.write("\nBige Rajmund")

let szo1 = "5555";
let szam1 = 3333;
console.log(szo1 + szam1);
console.log(szam1 + szo1);

csak = 2222;
console.log(szam1 + csak + szo1)