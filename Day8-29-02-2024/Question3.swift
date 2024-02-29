import Foundation

// Question 5

extension String {
    func capitalizeFirstChar() -> String {
        let str: String = self.dropFirst().lowercased()
        return self.first!.uppercased() + str
    }
    
    func capitalizeFirstCharOfSentence() -> String {
        let strArr: [String] = self.components(separatedBy: " ")
        var ans: String = ""
        for word in strArr {
            ans += word.first!.uppercased() + word.dropFirst().lowercased() + " "
        }
        return ans
    }
    
    func isPalindrome() -> Bool {
        let revStr: String = String(self.reversed())
        if revStr == self {
            return true
        }
        return false
    }
}

print("Malayalam".isPalindrome())
print("Karan".isPalindrome())
print("SWIFTUI".capitalizeFirstChar())
print("ramesh".capitalizeFirstChar())
let sentence: String = """
SwiftUI is a modern way to declare user interfaces for any Apple platform. 
Create beautiful, dynamic apps faster than ever before.
"""
print(sentence.capitalizeFirstCharOfSentence())
