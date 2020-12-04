//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .blue

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!0000"
        label.textAlignment = .left
        label.textColor = .white
        
        view.addSubview(label)
        
        let contentLab = UILabel()
        contentLab.frame = CGRect(x: 150, y: 300, width: 200, height: 20)
        contentLab.text = "testLabel"
        contentLab.textAlignment = .left
        contentLab.textColor = .white
        
        view.addSubview(label)
        view.addSubview(contentLab)
        
        
        _ = minMax(array: [1, 7])
        
        self.view = view
    }
    
    func minMax(array: [Int]) -> (min: Int, max: Int)? {
        if array.isEmpty { return nil }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            }
        }
        return (currentMin, currentMax)
    }
//    if let bounds = minMax(array)
//    if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]) {
//        print("最小值为 \(bounds.min)，最大值为 \(bounds.max)")
//    }
    
    
    
    
    
    
    
    
    
    
    
    
    // dictionary的使用
//    var someDic = [keyType : valueType]()
    var testDic = [Int: String]()
    var testDic1:[Int: String] = [1:"one", 2:"two", 3:"three"]
    var testDic2:[String: String] = ["name":"Jhams", "age":"twelve", "school":"Tshua", "hometown":"beijing"]
    
//    var oneKey = testDic2[name]
//    var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
//
////    var someVar = someDict[1]
//
//    print( "key = 1 的值为 \(someVar)" )
//    print( "key = 2 的值为 \(someDict[2])" )
//    print( "key = 3 的值为 \(someDict[3])" )
    
    
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
