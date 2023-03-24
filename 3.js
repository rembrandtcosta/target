// Given json file, returns min, max, and cnt above avg, disregarding days without revenue
'use strict';

const fs = require('fs');

let rawdata = fs.readFileSync('dados.json');
let data = JSON.parse(rawdata);

const days = data.filter(x => x.valor > 0);

const values = days.map((x, _) => {return x.valor});
	     
const min = values.reduce((x, y) => Math.min(x, y)); 
const max = values.reduce((x, y) => Math.max(x, y)); 
const avg = values.reduce((x, y) => (x + y)) / days.length;

const above = values.reduce((x, y) => (x + (y > avg ? 1 : 0)), 0);

console.log("Faturamento minimo: " + min);
console.log("Faturamento maximo: " + max);
console.log("# dias acima da media: " + above);

