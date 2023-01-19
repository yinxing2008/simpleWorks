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
    sortMe(array: &array, left: 0, right: array.count - 1)
}

func sortMe(array: inout [Int], left: Int, right: Int) {
    if right - left <= 0 {
        return
    }
    
    var flagIndex = left
    let flagValue = array[left]
    
    for index in stride(from: left + 1, to: right + 1, by: 1) {
        let value = array[index]
        if value < flagValue {
            array[flagIndex] = value
            flagIndex += 1
            array[index] = array[flagIndex]
            array[flagIndex] = flagValue
        }
    }
    
    sortMe(array: &array, left: left, right: flagIndex - 1)
    sortMe(array: &array, left: flagIndex + 1, right: right)
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
