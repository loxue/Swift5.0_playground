import UIKit


/** 字符串字面量 */
let someString = "some string literal value"

/** 多行字符串字面量 */
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""


let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

let lineBreaks = """
This string starts with a line break.
It also ends with a line break.
"""


/** 初始化空字符串 */
var emtyString = ""
var anotherEmptyString = String()

if emtyString.isEmpty {
    print("nil")
}

/** 字符串的可变性 */
var variableString = "five"
variableString += " horse"

//let xonstantString = "dasdasd"
//xonstantString += "jjjj"    // let修饰的是常量，不可变的


/** 字符串是值类型 */
for chasracter in "difff".reversed() {
    print(chasracter)
}

let exclamation: Character = "!"

/** 拼接字符串和字符 */
let string1 = "hello"
let string2 = " John"
var welcom = string1 + string2
var instri = "America"
instri += string2
instri.append(string2)  // 字符串拼接

/** 字符串插入 */
let oneCount = 3
let message = "\(oneCount) minus 2.5 is \(Double(oneCount) * 2.5)"

/** 访问和修改字符串 */
let greeting = "Hello Kitty!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(greeting.startIndex, offsetBy: 7)]

for indec in greeting.indices {
    print("\(greeting[indec])")
}
for subIndex in greeting {
    print("\(subIndex)")
}

/** 插入和删除 */
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: "sdasdasd", at: welcome.endIndex)
//
var school = "CC"
school.append("汽车股份有限公司")
school.insert("s", at: school.endIndex)
school.insert("N", at: school.startIndex)
school.append(contentsOf: " good")
school.insert(contentsOf: " nice", at: school.index(school.startIndex, offsetBy: 8))
//
welcom.remove(at: welcom.index(before: welcom.endIndex))
//
let rangge = welcom.index(welcom.endIndex, offsetBy: -6) ..< welcom.endIndex
welcom.removeSubrange(rangge)

/** 字符串比较 */
let sss = "abcde"
let ddd = "abcde"
if sss == ddd {
    print("字符串相等！")
} else {
    print("字符串不等！")
}


/** 前缀和后缀相等 */
let contentInfo = [
    "Num Content 1: Verona, A public place",
    "Num Content 2: Capulet's mansion",
    "Num Content 3: A room in Capulet's mansion",
    "Num Content 4: A street outside Capulet's mansion",
    "Num Content 5: The Great Hall in Capulet's mansion",
    "Num Content 1: Outside Capulet's mansion",
    "Num Content 2: Capulet's orchard",
    "Num Content 3: Outside Friar Lawrence's cell",
    "Num Content 4: A street in Verona",
    "Num Content 5: Capulet's mansion",
    "Num Content 6: Friar Lawrence's cell"
]

var startIndexStr = 0
for content in contentInfo {
    if content.hasPrefix("Num ") {
        startIndexStr += 1
    }
//    print(startIndexStr)
    
    if content.hasSuffix("Content") {
        startIndexStr -= 1
    }
    print("\(startIndexStr)" + "测试数据")
}



