//while loop to pop of 1200 count the years


const growth = (initPop, growthPercent, popAug, targetPop) => {
    let years = 0;
    while (initPop < targetPop) {
        initPop += (initPop * (growthPercent / 100)) + popAug;
        years++
        console.log(`After ${years} the population is ${initPop}!`);
    }
    return years;
}

// console.log(growth(1000, 2, 50, 1200));
// console.log(growth(1000, 10, 50, 15000));
// console.log(growth(100, 15, 75, 8000));
// console.log(growth(1000, 2, 50, 1200));
