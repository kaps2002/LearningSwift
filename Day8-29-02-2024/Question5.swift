import Foundation

// Question 5

extension String {
    func capitalizefirstChar() -> String {
        let str: String = self.dropFirst().lowercased()
        return self.first!.uppercased() + str
    }
    func capitalizefirstCharofsentence() -> String {
        let strarr: [String] = self.components(separatedBy: " ")
        var ans: String = ""
        for i in strarr {
            // let temp: String = 
            ans += i.first!.uppercased() + i.dropFirst().lowercased() + " "
        }
        return ans
    }
    
    func ispalindrome() -> Bool {
    let revstr: String = String(self.reversed())
    if(revstr == self) {
        return true
    }
    return false
    }
}

print("Malayalam".ispalindrome())
print("Karan".ispalindrome())
print("SWIFTUI".capitalizefirstChar())
print("ramesh".capitalizefirstChar())
let sentence: String = """
SwiftUI is a modern way to declare user interfaces for any Apple platform. 
Create beautiful, dynamic apps faster than ever before.
"""
print(sentence.capitalizefirstCharofsentence())
