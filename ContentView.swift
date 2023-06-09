var label = "横幅："
var width = 60
//widthをString型にする(型変換）
print(label + String(width))

var apple = 10
print("私は\(apple)個りんごを持っています")


var number = 290
if number == 10 {
    print(10)
}
else if number == 30 {
    print(30)
}else {
    print("それ以外")
}

//break文が不要である！！
switch number {
case 10:
    print(10)
case 30:
    print(30)
default:
    print("それ以外だよ")
}

//オプショナル型≒nilを入れることができる型　ラップすると言う
//既存の方を包み込むイメージ
//let 定数名：　Optional＜型＞　= 型に対応した値
//let 定数名：型？ ←シンタックスシュガー　３２行目の簡単版）
//var opitionalInt: Int? = 39
//print(opitionalInt)//int型ではなく、Optional型になる　普通の型に戻すにはアンラップする必要がある

//強制的アンラップ
//var optionalInt: Int? = 40
//print(optionalInt!)//「！」をつけることにより、optional型から強制的にInt型に変換することができる

//オプショナルバインディング・・・値がnilであっても、うまく処理することができる
//var optioonalInt: Int? = nil
//if let unwrapedInt = optioonalInt{
//    print(unwrapedInt)
//}else{
//    print("unwrapedはnil")
//}


//guardを使ったオプショナルバインディング（{}文の外でも使える）
//guard let 定数名　＝　オプショナル型の変数　else{
//    nilの時の処理
//    return
//}
//nilではないときの処理
//guard
var optionalInt: Int? = 20

func Unwrap(){
    guard let unwrapedInt = optionalInt else {
        print("unwrapedはnilだよん")
        return
    }
    print(unwrapedInt)
}

Unwrap()

//配列と空の配列
var hyotei = ["跡部景吾","忍足侑士","宍戸亮"]

print(hyotei[1])

hyotei.append("芥川慈郎")

print(hyotei)

//空配列（String型）
var emptyArray = [String]()

print(emptyArray)

//辞書(キーと値のペアを持つ複数の値を格納できるデータ構造のこと）
var hissatuwaza = [
    "跡部景吾":"破滅へのロンド",
    "越前リョーマ":"ドライブB",
    "白石蔵之介":"聖書テニス"
]

print(hissatuwaza["白石蔵之介"]!)

hissatuwaza["手塚国光"] = "手塚ゾーン"

print(hissatuwaza)

var karappodictionary = [String: Int]()
print(karappodictionary)

//for-in  繰り返し行う処理のこと
