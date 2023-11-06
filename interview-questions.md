# ASSESSMENT 4: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What is the virtual DOM in React?

Your answer: The Virtual DOM in React is the hidden guy who updates the DOM without refreshing the whole DOM, with the user's interactions. For example in LinkedIn, when I choose to "support" or "like" a user's post, the Virtual DOM will update that specific area target on the site only by adding the thumbs up emoji or the heart in a hand emoji.

Researched answer: The Virtual DOM was designed to make web applications more efficient. It is the in-memory representation of the DOM and creates a new representation of the DOM when a change occurs by a user interaction. When a new representation of the DOM is created, the Virtual DOM then does a compare and contrast with the previous representation and identifies the difference/change. With doing so, the Virtual DOM reduces the overall workload on the site and thus improves the application's performance.

2. Ruby has an implicit return. What does that mean?

Your answer: This implies a return without having to type in return for example how we would have to type return in JavaScript to see a result. For example, in Ruby, we have method called adding_number with two parameters called number1 and number 2. The next line will be a return line without calling keyword return, number 1 + numer 2. Then finally ending the block of code with an end at the next line. Visual example:
def adding_number(number1, number2)
    number1 + number2
end

Researched answer: An implicit return refers to an automatic return as the result of a ethod or block of codes without utilizing keyword return. Ruby methods will return the value of the last set of code evaluated within itself. As a developer, we are able to use keyword return still if we want to end the method early or make the return clearly stated. 

3. Compare and contrast JavaScript and Ruby. What are three things they have in common and what are three differences?

Your answer: Both JavaScript and Ruby are programming languages. They both follow line by line structure and although they have syntax use differences, they both require an ending to their blocks of codes. Their differences is the use of syntaxes. JavaScript uses curly braces {} to dfine a block of codes whereas Ruby uses do and end. Their call on for use of argument is also quite different. In JavaScript, you have to invoke with console.log, in paranetheses, the function name and then the argument which should be placed in it's own set of paranetheses within the function parentheses. In Ruby, you can just invoke the function/method with a p, the function/method name, and then the argument. 

Researched answer: Both JavaScript and Ruby offer abstractions and built-in features that makes it easier for developers to write code. Both lanauges are dynamic which provides flexibility and coding is written line by line but don't require consolidation. In contrast, JavaScript allows object-oriented and functional programming styles whereas Ruby is primary object-oriented with support for metaprogramming. Syntax use is also differently used in both languages such as {} for JavaScript and do and end for Ruby. As far as usage, JavaScript is used for web and mobile development which makes it commonlly used for building web applications. Ruby is a general use language which makes it more suitable for a range of applications beyond the web. 

4. STRETCH: What is a version manager?

Your answer: I'm unable to answer this question well. I will assume it's a tool that handles multiple versions of languages. Perhaps like a library?

Researched answer: Version manager is a software system that asists developers and teams to manage multiple versions of programming languages, libraries, frameworks, and other software components. The main purposes of a version manager are: dependency management - helps manages and tracks the versions of libraries and  packages used within a project to help projects work as expected, environmental isolation - provides the ability to create isolated development environment, tool version control -  allows developers to switch between programming languages and tools, and compatibility - ensures projects are working correctly across different environment and platforms. 

## Looking Ahead: Terms for Next Week

1. RSpec: A behavior-driven framework for Ruby programming. Designed specifically for testing and documentation of Ruby codes, integration testing, and acceptance testing. It is commonly used for testing Ruby on Rails applications and encourages a test-first development approach. I can assume this will be similar to the principles of testing on jest for JavaScript. 

2. Test-driven development: TDD is a development method that encourages writing tests before the actual functions. There are three steps: Red, Green, and Refactor. Red phase is the good fail test that defines the behavior that is wanted. Green phase is after the good fail test. This phase is the phase that the actual code is created to make the test pass. Refactor phase is utilized to improve the code written in the green phase to make it more readible and maintainable. 

3. CRUD: CRUD is an acronym for Create, Read, Update, and Delete. Create involves adding new information or data to a database. Read is the action of retrieving and viewing/reviewing the data from that database. Update is the process of modifying the data in the database. Delete is the removal of data from the database. CRUD is important to applications such as web, mobile apps, and any software that deals with data management. 
