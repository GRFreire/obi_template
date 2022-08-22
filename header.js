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
