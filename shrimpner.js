"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var process_ts_1 = require("https://deno.land/std@0.177.0/node/process.ts");
function solve() {
    return input.split("\n").reduce(function (prev, curr) {
        var numbers = getNumbers(curr);
        var first = numbers.at(0);
        var last = numbers.at(-1);
        var smushed = Number("".concat(first).concat(last));
        return prev + smushed;
    }, 0);
}
var mapping = {
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
};
function getNumbers(line) {
    var char = 0;
    var ln = line;
    var final = [];
    while (char < ln.length) {
        Object.keys(mapping).forEach(function (key) {
            if (ln.substring(char).startsWith(key)) {
                final.push(mapping[key]);
            }
        });
        var asNumber = Number(ln.at(char));
        if (!isNaN(asNumber)) {
            final.push(asNumber);
        }
        char++;
    }
    return final;
}
var start = (0, process_ts_1.hrtime)();
console.log(solve());
var end = (0, process_ts_1.hrtime)();
console.log(end[1] - start[1]);
