import Foundation
import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)

numbers[2]


numbers.insert(4, at: 2)

numbers.remove(at: 0)
numbers

var names: [String] = []


//var dic:Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["서성환" : 1]
dic["김철수"] = 3
dic["김민지"] = 5
dic

dic["김민지"] = 6
dic

dic.removeValue(forKey: "김민지")
dic

var set: Set = Set<Int>()

set.insert(10)
set.insert(20)
set.insert(30)
set.insert(30)
set

set.remove(20)
set



func sum(a: Int, b: Int) -> Int{
    return a+b
}


sum(a: 5, b: 3)

func hello() -> String{
    return "hello"
}

hello()

func printName() -> Void{
    
}

func greeting(friend: String, me: String = "guter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "seonghwan")


func sendMessage(from myName: String, to name: String) -> String {
    return "Hello \(name)! I'M \(myName)"
}


sendMessage(from: "Gunter", to: "Json")

func sendMessage(_ name: String) -> String {
    return "안녕, \(name)"
}

sendMessage("서성환")

func sendMessage(me: String, friends: String...) -> String {
    
    return "Hello, \(friends) i'm \(me)"
}

sendMessage(me: "서성환", friends: "김민윤, 서보현")

let age = 20

if age < 19 {
    print("미성년자입니다")
}

if age < 19 {
    print("미성년자")
} else {
    print("성년자")
}


let animal = "cat"

if animal == "dog" {
    print("강아지 사료 주기")
} else if animal == "cat"{
    print("고양이 사료주기")
} else {
    print("밥주기")
}

let color = "green"

switch color {
case "blue":
    print("파란색입니다")
    
case "green":
    print("초록색입니다")
    
case "yellow":
    print("노란색입니디")
    
default:
    print("찾는 색상이 없습니다")
}

let temperature = 9.1

switch temperature {
case -20...9:
    print("겨울")
case 9...30:
    print("봄,가을")
default:
    print("여름")
}


//20220125
//반복문

/*
 for 루프상수 in 순회대상 {
    //실행할 구문
 */

for i in 1...4{
    print(i)
}

let array = [1,2,3,4,5]

for i in array{
    print(i)
}

/*
 while 조건식 {
    //실행할 구문
 }
 */

var number = 5

while number < 10 {
    number+=1
}

number

/*
 repeat {
    실행할 구문
 }while
 */

//적어도 한번은 무조건 실행 됨
var x = 6
repeat{
    x+=2
} while x < 5

print(x)

//옵셔널?

var name: String?

var optionalName: String? = "Gunter"
print(optionalName)

//옵셔널 해제 방법
//명시적 해제 - 강제해제, 비강제 해제(옵셔널 바인딩)


var number2: Int? = 3
print(number2)
print(number2!) //nil인 변수를 강제해제 할 경우 프로그램 강제종료 발생 위험

if let result = number2 {
    print(result)
} else {
    
}

func test() {
    let number3: Int? = 5
    guard let result = number3 else {return}
    print(result)
}

test()

//묵시적 해제 - 컴파일러에 의한 자동 해제, 옵셔널의 묵시적 해제

let value: Int? = 6
if value == 6{
    print("value is 6")
} else{
    print("value is not 6")
}

let string = "12"
var stringToInt: Int! = Int(string)
print(stringToInt + 1)


//구조체와 클래스
//구조체
/*
 struct 구조체 이름{
    프로퍼티와 메서드
 }
 */

struct User{
    var nickname: String
    var age: Int
    
    func information(){
        print("\(nickname) \(age)")
    }
    
}

var user = User(nickname: "gunter", age: 23)

user.nickname
user.age

user.nickname = "ablert"
user.age = 28

user.nickname
user.age

user.information()
