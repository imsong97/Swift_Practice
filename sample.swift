class Person{
    var name: String = "swift"
    var age: Int = 10
}
let inst: Person = Person()

//상수 선언 -> let, 차후에 변경 불가능
let 상수이름: 타입 = 값
//변수 선언 -> var, 차후에 변경 가능
var 변수이름: 타입 = 값
//값의 타입이 명확하다면
let 상수이름 = 값
var 변수이름 = 값

//let에서, 한번 선언 후 첫 할당은 가능하지만 그 이후로는 값 변경이 불가능
let 상수이름1: 타입 // 값 할당X
상수이름1 = 값1 // 첫 할당 -> 가능
상수이름1 = 값2 // 두번째 할당 -> 에러


//출력
print(inst) // 단순출력

dump(inst) // (인스턴스의) 자세한 설명 출력


//보간법
let num: Int = 10
print("보간법 \(num)") // "보간법 10" 출력


//데이터타입 -> *데이터타입에 엄격함*
UInt -> 양의정수, Int형 적용X
Character -> 한글자, String형 적용X, String->Char도 적용X


//Any
Swift에서 모든 타입을 지정하는 키워드, but 값에 nil은 불가능

//AnyObject
모든 클래스타입을 지정하는 프로토콜

//nill
없음을 나타내는 키워드, null


//컬렉션 타입
//1. Array
var arr1: Array<타입> = Array<타입>()
var arr2: Array<타입> = [타입]()
var arr3: [타입] = [타입]()
var arr4: [타입] = []
let arr5 = [1,2,3] // 불변 배열
arr1.append(100) // 100 삽입
arr1.count // 1
arr1.contains(100) // true
arr1.contains(2) // false
arr1.remove(at:0) // remove(at:인덱스번호) -> 100 삭제
arr1.removeLast() // 마지막 인덱스 삭제
arr1.removeAll() // 모두 삭제

//2. 딕셔너리
var dic1: Dictionary<key타입: value타입> = Dictionary<key타입: value타입>()
(배열과 같이 축약형 가능)
let dic2: [key타입: value타입] = [:] // line 15
dic1.removeValue(forKey: key이름) // key이름에 해당하는 value값 삭제
dic1["key"] = nil // 가능, removeValue과 비슷한 기능

//3. Set
var s1: Set<타입> = Set<타입>()
(축약형X)
s1.insert(100) // 100 삽입
s1.insert(100) // s1안에는 100하나만 존재 -> Set는 중복값이 없는 것을 보장해줌
s1.count // 1
s1.contains(100) // true
s1.contains(2) // false
s1.remove(100) // 100 삭제
s1.removeFirst() // 0번 인덱스 삭제

let s2: Set<Int> = [1,3,2]
let s3: Set<Int> = [4,6,5]
s2.union(s3) // [2,1,3,6,4,5] -> 랜덤순서로 합집합이 됨 
s2.sorted() // [1,2,3] -> 정렬
s2.intersection(s3) // s2와 s3의 교집합
s2.substracting(s3) // s2-s3의 차집합


//함수
func 함수명(전달인자레이블 매개변수이름: 매개변수타입 = 매개변수기본값, ~) -> 반환타입 {
    return 반환값
}

func 함수명(전달인자레이블 매개변수이름: 매개변수타입 = 매개변수기본값, ~) -> Void {
    // 매개변수기본값을 가지는 매개변수는 매개변수들 중 맨뒤에 위치하는게 좋다
    // 전달인자레이블: 매개변수의 역할을 좀 더 명확하게 하거나 함수 사용자의 입장에서 표현하고자 할 때 사용, 같은 함수명이라도 전달인자레이블로 인해 다른 함수로 인식
    // 호출 -> 함수명(매개변수이름: 값) vs 함수명(전달인자레이블: 값)
}

func 함수명(전달인자레이블 매개변수이름: 매개변수타입...){
    return 반환값
    // 가변 매개변수: 매개변수타입 뒤에 ... 을 찍음, 함수당 하나만 가능, 맨뒤에 위치하는게 좋다
}

//함수의 타입표현 (자바스크립트의 익명함수와 비슷)
var 변수이름: (매개변수타입, 매개변수타입, ~) -> 반환타입

func 함수명1(function: (매개변수타입, 매개변수타입, ~) -> 반환타입){
    function(매개변수값, 매개변수값, ~)
}
    //호출-> 함수명1(function: 함수(매개변수))


//조건문
소괄호 생략 가능
한줄은 중괄호생략하던 방법 사용X
switch-case문 사용 시 default문 반드시 작성
명시적으로 break쓰지 않아도 됨, break를 쓰지 않는것처럼 하려면 fallthrough 사용

//범위연산자
1..<100 // 1이상 100미만
1...100 // 1이상 100이하

//반복문
소괄호 생략 가능
딕셔너리형도 가능
for (key, value) in 딕셔너리이름{

}
do-while문은 repeat-while문 으로


//옵셔널
값이 있을수도 있고 없을수도 있음
nil의 가능성을 명시적으로 표현 -> 예외상황 최소화
let 변수명: Optional<타입> = nil
let 변수명: 타입? = nil or 값 // 타입 뒤에 ?사용, 일반적인 방법
let 변수명: 타입! = nil or 값 // 타입 뒤에 !사용

//?사용
변수명 = 변수명 + 1 (X)// 기존 변수처럼 사용 *불가능*
변수명 = nil // nil사용 가능

//!사용 -> 암시적 추출 옵셔널
변수명 = 변수명 + 1 // 기존 변수처럼 사용 가능
변수명 = nil // nil사용 가능

//옵셔널 바인딩
옵셔널의 값을 꺼내오는 방법 중 하나
nil체크 & 안전한 값 추출


//구조체 -> 값타입
struct 구조체이름 {
    // 변수 -> 인스턴스 프로퍼티
    // 함수 -> 인스턴스 함수
    // 변수나 함수 앞에 static -> 타입 프로퍼티 / 타입 메서드
}
var 변수이름: 구조체이름 = 구조체이름()
변수이름.프로퍼티
구조체이름.메서드
구조체이름.타입프로퍼티


//클래스 -> 참조타입
class 클래스이름{
    // 변수 -> 인스턴스 프로퍼티
    // 함수 -> 인스턴스 함수
    // 변수나 함수 앞에 static or class -> 타입 프로퍼티 / 타입 메서드
    // static: 재정의 불가능 / class: 재정의 가능
}
var 변수이름: 클래스이름 = 클래스이름() // var 대신 let써도 가변
변수이름.프로퍼티
클래스이름.메서드
클래스이름.타입프로퍼티