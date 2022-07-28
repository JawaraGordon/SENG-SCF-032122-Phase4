console.log("good luck, you've got this!!", "🍀")

// Given an array [2, 9, 1, 3] create a custom method/function to sort the array without using a built in sort method such as .sort.

// are there any other methods that are off limits
// can I use MDN


// - Write the question down and confirm your assumptions 
// ask about constraints: how large, include duplicates
//  - Write out/explain steps for the solution before coding 
//  - Code out solution 
//  - Run test case examples 
//  - Give Big - O

// [2, 9, 1, 3]
// [1, 2, 3, 9]

function sort(array){
    for (let i = 0; i < array.length; i++) {
        console.log("starter array", array)
        for (let j = i + 1; j < array.length; j++) {
        // console.log("current i", array[i], "current j", array[j])
        if (array[i] > array[j]){
            [array[i], array[j]] = array[[j], array[i]];
        }
    }
}
return array
}

// create new array = []
// while loop
// function newSort(arr){
//     let array = []
// let smallest = Math.min(...arr)
// arr.indexOf(smallest)
// .splice()

// }


// let temp = array[i]
// array[i] = array[j]
// array[i] = temp

console.log(sort([2,9,1,3]))