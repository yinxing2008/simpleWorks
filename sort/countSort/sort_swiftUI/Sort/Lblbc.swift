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

func sort2() {
    for i in 0...array.count-2 {
        for j in 0...array.count-2-i {
            if (array[j] > array[j + 1]) {
                let tmp = array[j + 1];
                array[j + 1] = array[j];
                array[j] = tmp;
            }
        }
    }
}

func sort() {
    var min = array[0]
    var max = min
    for i in 0...array.count-1 {
        if (array[i] > max) {
            max = array[i]
        } else if (array[i] < min) {
            min = array[i]
        }
    }
    
    var counting:[Int] =  [Int](repeating: 0, count: max - min + 1)
    
    for i in 0...array.count-1 {
        counting[array[i] - min] += 1
    }
    var index = -1
    for i in 0...counting.count-1 {
        for _ in 0...counting[i]-1 {
            index += 1
            array[index] = i + min
        }
    }
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
