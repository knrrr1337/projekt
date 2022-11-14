//TOMBOK


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
