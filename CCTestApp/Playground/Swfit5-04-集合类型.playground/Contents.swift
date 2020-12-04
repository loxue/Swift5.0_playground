import UIKit


/** 集合
 * Swift集合类型包含：Arrays、Sets 和 Dictionaries三种基本的集合类型用来存储集合数据。
 * 数组（Arrays）是有序数据的集。
 * 集合（Sets）是无序无重复数据的集。
 * 字典（Dictionaries）是无序的键值对的集。
 */

// 数组
var someInts = [Int]()    // 初始化方式
print("\(someInts.count)") // 0

var students = [String]()
print(students.count)

someInts.append(1)  // 添加1
someInts = []       // 清空数据

/** 默认值的数组 */
var oneCount = Array(repeating: 0.94, count: 3)
var anotherCount = Array(repeating: 2.2, count: 3)
var sumCount = oneCount + anotherCount   // 合并两个数组元素

// 举例：如果两个count为3的浮点型元素数组相加，里面的和为3.14，则输出结果为元素为三个π的元素新数组
func stringEqual(param1:Float) -> String {
    var equalStr = ""
    if param1 == 3.14  {
        equalStr = "π"
    }
    return equalStr;
}
print(stringEqual(param1: 3.14))

// 数组空值判断
var shoplists = ["cheers"]
if shoplists.isEmpty {
    print("nil")
} else {
    print("!nil")
}

shoplists += ["apple","banana"]
shoplists.insert("orange", at: 1)
print(shoplists)
shoplists.remove(at: 0) // 只保留数组第0个位置的元素
shoplists.removeLast()  // 只保留数组最后一个位置的元素

// 数组的遍历
for item in shoplists {
    print(item)
}

// 数组元素枚举，列出所有元素值
for (index, value) in shoplists.enumerated() {
    print("\(String(index + 1))  \(value)")
}



////////////////////////////////////////////////////////////////////////////
/** 集合（Set）用来存储相同类型并且没有确定顺序的值。
 * 集合和数组的区别是，数组是可以有重复元素，集合没有重复元素
 */
var names = Set<String>()
names.insert("John")
print(names)

var favori: Set = ["abc","def"]
print(favori)

// 集合操作
let oneSet: Set = [1, 3, 5, 7, 9]
let twoSet: Set = [0, 2, 4, 6, 8]
let threeSet: Set = [2, 3, 5, 7]

oneSet.union(twoSet).sorted()         // 并集
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oneSet.intersection(twoSet).sorted()  // 交集
// []
oneSet.subtracting(threeSet).sorted() // 减集
// [1, 9]
oneSet.symmetricDifference(threeSet).sorted()  // 减去交集剩下的元素集合
// [1, 2, 9]


// 集合成员关系和相等
let homeAnimals: Set = ["🐶", "🐱", "🐔"]
let farmAnimals: Set = ["🐮", "🐑", "🐶", "🐱", "🐔", "🐂", "🐟", "🐍"]
//let cityAnimals: Set = ["🦆","🐦", "🐭", "🐉", "🐟", "🐍"]
let cityAnimals: Set = ["🐟", "🐍"]

homeAnimals.isSubset(of: farmAnimals)       // 前者是否是后者的子集
// true
farmAnimals.isSuperset(of: homeAnimals)     // 前者是否是后者的父集
// true
farmAnimals.isDisjoint(with: cityAnimals)   // 前者和后者是否是不连贯的集合(此处有疑问，这个函数作用是啥)
// false


////////////////////////////////////////////////////////////////////////////
/**
 *  字典
 */

var nameDic = [Int: String]()
nameDic[10] = "John"
print(nameDic)

var nbaPeoples: [String : String] = ["jiazhou": "gongniu", "xiusidun": "rocket"]
nbaPeoples.count

nbaPeoples["luoshanji"] = "huren"
print(nbaPeoples)
nbaPeoples.updateValue("kebi", forKey: "luoshanji")
print(nbaPeoples)
nbaPeoples["luoshanji"]
print(nbaPeoples)

for airporcode in nbaPeoples.keys {
    print("\(airporcode)")
}


