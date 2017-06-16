//
//  main.swift
//  pinasdS10
//
//  Created by user on 2017/6/16.
//  Copyright © 2017年 user. All rights reserved.
//

import Foundation

var arrobj:[MyClass01] = []
var obj1 = MyClass01(x:2)
print(obj1[2])
obj1.x = 3
for i in 1...9{
    print(obj1[i])
}
print(obj1[3,4])

print(obj1[3.14])
//get
print(obj1[3.14])
//    get     set
obj1[3.14] = 7.456

var obj2 = Sub11()

print(obj2.x)
obj2.f1()
obj2.f2(x: 1)
obj2.f2(y: 2)

var obj3 = Super3()
var obj31 = Sub31()
var obj32 = Sub32()

print(obj3 is Super3)
print(obj31 is Sub31)
print(obj32 is Sub32)

print(obj31 is Super3)
print(obj31 is String)
obj3.f1()
obj31.f1()
obj32.f2()

var obj33:Super3 = Sub31()

print(obj33 is Sub31)
print(obj33 is Sub32)
//obj 能呼叫的方法只有在所屬的類別可調用

var obj34 = obj33 as! Sub31

print(type(of:obj34))

obj34.f2()

//var obj35 = obj33 as! Sub32
//33,34指標一樣只有型別不同
if obj33 === obj34 {
    print("ok")
}else{
    print("XX")
}

//需要為父類別時只能用父類別有的方法,才可執行
obj33.f1()

func neesSuper3(obj:Super3){
    obj.f1()
//用向下轉型的方式達成調用子類別的方法
    if obj is Sub31{
        (obj as! Sub31).f3()
    }
    if obj is Sub32{
        (obj as! Sub32).f4()
    }
    
}

//若沒有多行只能這樣寫
//func neesSuper3(obj:Super31){
//    obj.f1()
//}
//
//func neesSuper3(obj:Super32){
//    obj.f1()
//}

neesSuper3(obj:obj31)
neesSuper3(obj:obj32)

var obj35:Super3 = obj31 as Super3

//AnyObject 任何物件
func needObj(obj:AnyObject){
    print(type(of:obj))
}

needObj(obj: obj33)

//Any =>OK(class onject struct value enum)
//      NG(func)
func needAnything(something:Any){
    print(type(of:something))
}
//string is struct 做成的
//needObj(obj: "Hello")

//
//   向下轉型---> as!
//  Super3  ---sub31
//          |--sub32
//
//      as<-----向上轉型

obj32.f1()
//extension class and struct新增方法
extension Sub32{
    func sayYa(){print("Ya!!")}
}
obj32.sayYa()

extension Int{
    
    func sayHello(){
        print("1234 \(self.hashValue)")
    }
}

123.sayHello()

