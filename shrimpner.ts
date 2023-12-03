import { hrtime } from "https://deno.land/std@0.177.0/node/process.ts";

function solve() {
  return input.split("\n").reduce((prev, curr) => {
    const numbers = getNumbers(curr);
    const first = numbers.at(0);
    const last = numbers.at(-1);
    const smushed = Number(`${first}${last}`);
    return prev + smushed;
  }, 0);
}

const mapping: { [key: string]: number } = {
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

function getNumbers(line: string) {
  let char = 0;
  let ln = line;
  let final = [];
  while (char < ln.length) {
    Object.keys(mapping).forEach((key) => {
      if (ln.substring(char).startsWith(key)) {
        final.push(mapping[key]);
      }
    });
    const asNumber = Number(ln.at(char));
    if (!isNaN(asNumber)) {
      final.push(asNumber);
    }
    char++;
  }

  return final;
}

const start = hrtime();
console.log(solve());
const end = hrtime();
console.log(end[1] - start[1]);
