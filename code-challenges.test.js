// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining items.

// a) Create a test with an expect statement using the variable provided.
// HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

describe("removeThisShuffleThat", () => {
    it("takes in an array, removes the first item from the array and shuffles the remaining items", () => {
        const colors1 = ["purple", "blue", "green", "yellow", "pink"]
        // Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]
        const colors2 = ["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
        // Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]
        expect(removeThisShuffleThat(colors1)).toEqual(expect.arrayContaining(["yellow", "blue", "pink", "green"]))
        expect(removeThisShuffleThat(colors2)).toEqual(expect.arrayContaining(["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]))
    })
})

// Output: ReferenceError: removeThisShuffleThat is not defined

// b) Create the function that makes the test pass.

const removeThisShuffleThat = (array) => {
    const newColors = array.slice(1)
    for (let i = 0; i < newColors.length; i++) {
        const randomIndex = Math.floor(Math.random() * newColors.length);
        [newColors[i], newColors[randomIndex]] = [newColors[randomIndex], newColors[i]] 
  }
  return newColors
}

// Output: PASS

// Pseudo code:
// Input: An array of strings
// Ouput: An array of strings with one value less and shuffled
// Create function newColors that will take an array as it's parameter
    // Create a new variable that will take the array's values. 
        // Utilizing .slice(1), the new variable will extract all values from the original array from index 1 onward. 
        // Utilize a for loop that will start from index 0 of the array; the conditions will go up to as far as the full length of the new array (randomIndex); and the increment will be every 1 following the last.
        // create a new variable that will utilize Math.floor(Math.rando()) multiplied by the length of new variable newColors.
        // (I had to research this but I utilized an array destructuring method; this took a while to actually understand.) To randomize/shuffle indexes for a return, utilizing the array destructuring method [], newColors[i] and newColors[randomIndex] will now be swapped. (randomIndex) variable equates to a random Index through newColors. 
            // Note: I'm unable to really understand how to fully shuffle as i and randomIndex could eventually equate the same index. I looked into the Fisher Yates Shuffle Algorithm but I am unable to understand how it works fully thus didn't incorporate it into this set of code. 
    // Return newColors

// --------------------2) Create a function that takes in an object that contains up votes and down votes and returns the end tally.

// a) Create a test with expect statements for each of the variables provided.

describe("tallyCount", () => {
    it("takes in an object that contains up votes and down votes and returns the end tally", () => {
        const votes1 = { upVotes: 13, downVotes: 2 }
        // Expected output: 11
        const votes2 = { upVotes: 2, downVotes: 33 }
        // Expected output: -31
        expect(tallyCount(votes1)).toBe(11)
        expect(tallyCount(votes2)).toBe(-31)

    }) 
})

// Output: tallyCount is not defined

// b) Create the function that makes the test pass.

const tallyCount = (object) => {
    return object.upVotes - object.downVotes
}

// Output: PASS

// Pseudo code:
// Input: An object
// Output: A number (total of the object)
// Create function tallyCount with object as it's parameter.
    // The return will call on object's key's values. object.upVotes to subtract by object.downVotes.
        // Note: Would "return object.upVotes - object.downVotes" be considered hard coding? 
