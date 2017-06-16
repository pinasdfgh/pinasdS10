//
//  MyClasses.swift
//  pinasdS10
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

//----------subscript--------
//物件[] 帶出subscript ->return
//[]是陣列不用寫成X:...這樣

class MyClass01{
    var x:Int
    init(x:Int){self.x = x }
    subscript(y:Int)->String{
        return "\(x)x\(y) = \(x * y)"
    }
    subscript(y:Int,z:Int)->Int{
        return 123
    }
    subscript(y:Double) -> Double{
        get{
            print("get")
            return floor(y)
        }
        set{
            print("set")
            self.x = Int(ceil(newValue))
            print(self.x)
        }
    }
}

//-----------------------------------------
//
class Super1{
    private var x:Int = 10
    var y = 2
    //儲存刑
    var z = 2
    //變動型
    var a:Int{
        get{
            return 3
        }
        set{
            
        }
    }
    func f1(){
        print("super1:f1()")
    }
    func f2(x:Int)->Double{
        print("f2(x:Int)")
        return 1.0
    }
    
}
//laber 不同也代表func不同
class Sub11:Super1{
    var x = 3
    //屬性的override需要用(get && set) or (willSet && didSet)不能用直接賦值的方式
    override var y:Int{
        get{
            return 3
        }
        set{
            
        }
    }
    override var z:Int{
        willSet{
            
        }
        didSet{
            
        }
    }
    
    override var a:Int{
        get{
            return 3
        }
        set{
            
        }
    }
    
    
    override func f1(){
        super.f1()
        print("Sub11:f1()")
    }
    func f2(y:Int){
        print("f2(y:Int)")
    }
    override func f2(x:Int) ->Double{
        f1()
        super.f1()
        return 1.0
    }
}

//----------------------------------

//final 代表最後一代
final class Super2{
    
}

//class Sub21 : Super2{
//    
//}
//---------------轉型------------------

class Super3{
    func f1(){
        print("Super3:f1()")
    }
}
class Sub31:Super3{
    override func f1(){
        print("Sub31:f1()")
    }
    func f2(){
        print("sub31:f2()")
    }
    func f3(){
        print("sub32:f3()")
    }
}
class Sub32:Super3{
    override func f1(){
        print("Sub32:f1()")
    }
    func f2(){
        print("sub32:f2()")
    }
    func f4(){
        print("sub32:f4()")
    }
}

//
//   向下轉型---> as!
//  Super3  ---sub31
//          |--sub32
//
//      as<-----向上轉型


//date 處理





