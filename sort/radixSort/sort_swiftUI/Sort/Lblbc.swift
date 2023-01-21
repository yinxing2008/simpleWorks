// 厦门大学计算机专业 | 前华为工程师
// 专注《零基础学编程系列》  http://lblbc.cn/blog
// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
// 公众号：蓝不蓝编程

import SwiftUI

var array = [2, 1, 5, 4, 3]

struct Lblbc: View {
    @State var arrayStr = ""
    var body: some View {
        VStack {
            Text(arrayStr)
            HStack{
                Button(action: {
                    shuffle()
                    arrayStr = convertToStr()
                })
                {
                    Text("打乱")
                }.padding()
                Button(action: {
                    sort()
                    arrayStr = convertToStr()
                })
                {
                    Text("排序")
                }.padding()
            }
            
        }.onAppear(perform: {
            arrayStr = convertToStr()
        })
        .padding()
    }
}

func shuffle() {
    array = [2, 1, 5, 4, 3];
}

func sort() {
    var bucket = createBucket()
    let maxNum = getMaxValue(array: array)
    let maxLength = getNumberLen(number: maxNum)
    
    for digit in 1...maxLength {
        for item in array {
            let baseNumber = fetchBaseNumber(number: item, digit: digit)
            bucket[baseNumber].append(item)
        }
        
        var index = 0
        for i in 0..<bucket.count {
            while !bucket[i].isEmpty {
                array[index] = bucket[i].remove(at: 0)
                index += 1
            }
        }
    }
}

private func createBucket() -> Array<Array<Int>> {
    var bucket: Array<Array<Int>> = []
    for _ in 0..<10 {
        bucket.append([])
    }
    return bucket
}

private func getMaxValue(array: Array<Int>) -> Int {
    var maxNumber = array[0]
    for item in array {
        if maxNumber < item {
            maxNumber = item
        }
    }
    return maxNumber
}

func getNumberLen(number: Int) -> Int {
    return "\(number)".count
}

func fetchBaseNumber(number: Int, digit: Int) -> Int{
    if digit > 0 && digit <= getNumberLen(number: number) {
        var numbersArray: Array<Int> = []
        for char in "\(number)" {
            numbersArray.append(Int("\(char)")!)
        }
        return numbersArray[numbersArray.count - digit]
    }
    return 0
}

func convertToStr()-> String {
    var result = ""
    for i in 0...array.count-1 {
        result.append(String(array[i])+" ")
    }
    return result
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Lblbc()
    }
}
