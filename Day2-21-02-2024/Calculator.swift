func calculator(_ a: Int, _ b: Int, _ c: String) -> Any {
    switch c {
    case "+":
        return a + b
    case "-":
        if a > b {
            return a - b
        }
        return b - a
    case "*":
        return a * b
    case "/":
        if a > b {
            return a / b
        }
        return b / a
    default:
        return "Wrong operator"
    }
}

print(calculator(2, 3, "+"))
print(calculator(2, 3, "*"))
print(calculator(2, 3, "//"))
