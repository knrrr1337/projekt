let ev = prompt("kerem a beviteli adatot: ");

if (ev == 2022) {
    console.log("Ez az ev")
} else {
    console.log("Nem ez az ev")
}

console.log((ev==2022)?"2022":"nem 2022");
            //kerdes    do      else do

let kor = prompt("kor: ")

console.log((kor >= 18)?"felnott":"kiskoru");

/*

&&
0 && 0 = false
0 && 1 = false
1 && 0 = false
1 && 1 = true

||
0 || 0 = false
0 || 1 = true
1 || 0 = true
1 || 1 = true

!
!1 = true
!0 = false
*/

let szam5 = prompt("szam ");

if (szam5 <= 5) {
    console.log("hetkoznap")
} else {
    console.log("hetvege")
}


let szaam = prompt("szam: ")
if (szaam > 0 ) {
    console.log("pozitiv")
} else if (szaam < 0) {
    console.log("negativ")
} else {
    console.log("nullaaaaaaaaaaaaaaaaaaaaa")
}

console.log(typeof szaam);