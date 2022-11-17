//TOMBOK

/*
const napok = ["Hetfo", "kedd", "szerda"]
const raawr = ["pattanas", 5, 2.3452]

const faszos = []
faszos[0] = "pattanas";
console.log(faszos)

const faszosom = new Array();

console.table(napok);
console.log(Array.isArray(napok))



const torpok = ["TorpPapa", "Torperos", "Okoska", "Hokusz Pok"]

console.log(torpok[torpok.length - 1])


//console.table(torpok[-1]); nem lyo :(

console.log(torpok.at(-1)) // eman lyo :)


console.log(torpok)
console.table(torpok)
console.log(torpok.join(" "))


torpok.push("Rigo Jancsi")



torpok[torpok.length] = "Lelesz Szabolcs"

console.log(torpok)
console.table(torpok)


torpok.pop()

console.log(torpok)
console.table(torpok)

torpok.shift()

console.log(torpok)
console.table(torpok)

torpok.unshift("TorpPapa")

console.log(torpok)
console.table(torpok)

torpok[7] = "Torpilla";

console.log(torpok)
console.table(torpok)

const tombostomb = []

for (let i = 0; i < 10; i++) {
    tombostomb[i] = Math.floor(Math.random() * (60-20 + 1) + 20)
}

console.table(tombostomb)
tombostomb[4] = 100;
tombostomb.push(200);
tombostomb.shift()

console.table(tombostomb)
*/



const tomb = ["piros", "kek", "zold", "feher"];

tomb.push("voros", "sarga");
console.table(tomb)


tomb.unshift("lila")

console.table(tomb);

console.log(tomb.at(-2))

tomb[10] = "hupilla";

console.table(tomb);

//delete tomb[0];
//console.log(tomb);


//SPLICE

tomb.splice(7,3, "citromsarga")
console.table(tomb)

//eredeti tomb ne valtozzon, de egy reszet uj tombbe szeretned


// SLICE
const darab = tomb.slice(0, 3);
console.log(tomb);
console.log(darab)

//rendezzuk novekvo sorrendbe :

tomb.sort();
console.log(tomb)
tomb.reverse();
console.log(tomb);

// 10 db veletlen szam, 1-100 kozott

const faszos = [];

for (let i = 0; i < 10; i++) {
    faszos[i] = Math.floor(Math.random() * (100 - 1 + 1) + 1);
    console.log(faszos[i])
}

console.log("\n RAAWR \n")

//faszos.sort(); => SORT CSAK KARAKTEREKEN MUKODIK!!!

faszos.sort(function(a, b){return b-a});



console.log(faszos)

//maximum


let baszas = faszos[0];
for (let i = 0; i < faszos.length; i++) {
    if (faszos[i] > baszas){
        baszas = faszos[i]
    }
}

console.log(baszas)


let maxSzam = Math.max.apply(null, faszos);
let maxSzam2 = Math.max(...faszos);
console.log(maxSzam);
console.log(maxSzam2);
console.log("\nRAWR\n") 
//for

for (let i = 0; i < faszos.length; i++) {
    console.log(`${i}.index: ${faszos[i]}`);
}

//indexhez nem ferunk hozza
for (const szam of faszos) {
    console.log(szam)
}


//for in


