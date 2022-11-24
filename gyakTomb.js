const animals = ["cica", "kutya", "egér", "hörcsög", "ló"];

function kiir(value, index) {
    console.log(value, index)
}

animals.forEach(kiir)

for (const index in animals) {
    if (animals[index] == "egér") {
        animals[index] = "sün";
    }
}

console.table(animals)


animals.push("medve", "majom")

console.table(animals)


animals.reverse()

console.table(animals);

const noveny = ["fa", "hovirag", "bokor", "fa"]

const eloleny = animals.concat(noveny)

console.table(eloleny)

//keressuk meg, hogy van e benne fa

console.log(eloleny.includes("fa"))

const vanEFind = eloleny.find(nev => nev == "kaktusz");

console.log(vanEFind)

//index of:
//ha nincs, akkor -1 lesz az erteke
//0. indexrol
const vanEIndexOf = eloleny.indexOf("fa");
console.log(vanEIndexOf)

//utolso indexrol
const vanELastIndexOf = eloleny.lastIndexOf("fa");
console.log(vanELastIndexOf)

//includes: true, false

const vanEIndcludes = eloleny.includes("fa");
console.log(vanEIndcludes)

//5 lotto generalas:
//novekvo sorrend

const kihuzott = [];


while (kihuzott.length != 5) {
    let randomSzam = Math.floor(Math.random() * 5 + 1);
    if (!kihuzott.includes(randomSzam)) {
        kihuzott.push(randomSzam)
    }
}
console.log(kihuzott.sort((a,b) => b-a))