const readline = require('readline');

const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

rl.question('Введите число N: ', (N) => {
    N = parseInt(N);

    for (let i = 0; i < N; i++) {
        let pattern = 'A'.charCodeAt(0) + N - 1;
        let output = '';

        for (let j = 0; j <= i; j++) {
            output += String.fromCharCode(pattern--) + ' ';
        }

        console.log(output);
    }

    rl.close();
});
