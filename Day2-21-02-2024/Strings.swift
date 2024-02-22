let hello = "Hello world"

//Multiline String
let welcomemsg = """
Hi I am Karan learning swift language.  
I am doing intern in Roro Solutions.
"""

print(hello)
print(welcomemsg)

// Special Characters in String
let heart = "\u{1F495}"
print(heart)

//Concatenation of string
var sumofwords = welcomemsg+heart
print(sumofwords)

//Size of the string
print(sumofwords.count)

//Inserting and Removing
var welcome = "Hello"
welcome.insert(contentsOf:"!",at:welcome.endIndex)
print(welcome) //"Hello!" as output
welcome.remove(at:welcome.index(before: welcome.endIndex))
print(welcome) //"Hello" as output
