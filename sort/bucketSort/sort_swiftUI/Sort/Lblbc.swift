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

func sort()
{
    let maxValue = array.max()
    var bucket:[Int] = Array.init(repeatElement(0, count: maxValue! + 1))
    var newArray:[Int] = Array.init()
    
    for index in array {
        let numId = index
        bucket[numId] += 1
    }
    
    for index in bucket.indices {
        while bucket[index] > 0 {
            newArray.append(index)
            bucket[index] -= 1
        }
    }
    
    array =  newArray
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
