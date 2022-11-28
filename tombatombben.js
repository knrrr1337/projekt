//tomb a tombben
const tomb = [[3, 4, 2, 3], [5, 4, 3, 1]];
const tombos = [];

/*
for (let i = 0; i < 3; i++) {
    tombos[i] = [];
    for (let j = 0; j < 3; j++) {
        tombos[i][j] = j;
    }
}

for (let i = 0; i < tombos.length; i++) {
    for (let  j = 0; j < tombos[i].length; j++)
        console.log(tombos[i][j])
}
*/

/*
for (let i = 0; i < 3; i++) {
    tombos[i] = [];
    for (let j = 0; j < 5; j++) {
        let szam = Math.floor(Math.random() * 10 + 10)
        tombos[i].push(szam)
    }

}

console.log(tombos)
*/

//3 nev bekerese 

const tomber = [];

for (let i = 0; i < 3; i++) {
    tombos[i] = [];
    let familyName = prompt("nev");
    let givenName = prompt("nev");
    let nev = familyName + " " + givenName;
    let email = String(familyName).toLowerCase() + String(givenName).toLowerCase()[0] + "@tanulo.hu";
    let jelszoSzam = Math.floor(Math.random() * (1000 - 100 + 1) + 101);
    let jelszo = familyName[0].toUpperCase() + givenName[0].toUpperCase() + jelszoSzam
    for (let j = 0; j < 3; j++) {
        tomber[i] = []
        tomber[i].push(nev, email, jelszo)
    }
    

}

console.log(tomber)