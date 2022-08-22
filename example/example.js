//#region HEADER

const { scanf: scanf_stub, sprintf: printf_stub, fgets: fgets_stub } = require('scanf-printf-obi');

function scanf(format) {
    const res = scanf_stub.apply(this, Array.prototype.slice.call(arguments, 0));
    eval(res);
}

function printf(args){
    const res = printf_stub.apply(this, Array.prototype.slice.call(arguments, 0));
    process.stdout.write(res);
}

function fgets(args){
    const res = fgets_stub.apply(this, Array.prototype.slice.call(arguments, 0));
    eval(res);
}
//#endregion HEADER

const vowels = ['a', 'e', 'i', 'o', 'u'];

var inputWord = new String();

scanf('%s', 'inputWord');

const finalWord = inputWord.split('').map((letter) => {
    if (vowels.includes(letter)) return letter;
    
    let replaceStr = '';
    const letterCharCode = letter.charCodeAt();

    // 1
    replaceStr += letter;

    // 2
    let minLetterDist = Infinity;
    let currentVowel = '';
    
    vowels.forEach((vowel) => {
        const vowelCharCode = vowel.charCodeAt();
        const currentLetterDist = Math.abs(vowelCharCode - letterCharCode);
        if (currentLetterDist < minLetterDist) {
            currentVowel = vowel;
            minLetterDist = currentLetterDist;
        }
    });

    replaceStr += currentVowel;

    // 3
    let nextConsonantCharCode = letterCharCode + 1;
    if (nextConsonantCharCode === 'z'.charCodeAt()) nextConsonantCharCode -= 1;
    else if (vowels.includes(String.fromCharCode(nextConsonantCharCode))) nextConsonantCharCode += 1;
    
    replaceStr += String.fromCharCode(nextConsonantCharCode);

    return replaceStr;
}).join('');

printf('%s', finalWord);