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
    var i = array.count / 2 - 1
    
    while i >= 0
    {
        adjustHeap(_startIndex:i, length:array.count);
        i -= 1
    }
    
    i = array.count - 1
    while i > 0
    {
        let temp = array[0];
        array[0] = array[i];
        array[i] = temp;
        adjustHeap(_startIndex: 0, length:i);
        i -= 1
    }
}

func adjustHeap( _startIndex:Int,  length:Int) {
    var startIndex = _startIndex
    let tmp = array[startIndex];
    
    var j = startIndex * 2 + 1
    
    while j < length
    {
        if (j + 1 < length && array[j] < array[j + 1]) {
            j += 1;
        }
        if (array[j] > tmp) {
            array[startIndex] = array[j];
            startIndex = j;
        } else {
            break;
        }
        j = j * 2 + 1
    }
    
    array[startIndex] = tmp;
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
