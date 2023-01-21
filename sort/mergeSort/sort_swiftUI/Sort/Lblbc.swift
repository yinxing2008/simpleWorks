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
    sortMe(arr: &array, left: 0, right: array.count - 1)
}

func sortMe(arr:inout [Int],left:Int,right:Int) {
    if left == right {
        return
    }
    let mid = left + (right - left) >> 1
    sortMe(arr: &arr, left: left, right: mid)
    sortMe(arr: &arr, left: mid + 1, right: right)
    mergeSort(arr: &arr, left: left, mid: mid, right: right)
}

func mergeSort(arr:inout [Int],left:Int,mid:Int,right:Int){
    var tmpArr:[Int] = [Int]()
    var leftLocation:Int = left
    var rightLocation:Int = mid + 1
    
    while (leftLocation <= mid && rightLocation <= right) {
        if arr[leftLocation] <= arr[rightLocation] {
            tmpArr.append(arr[leftLocation])
            leftLocation += 1
        }else{
            tmpArr.append(arr[rightLocation])
            rightLocation += 1
        }
    }
    
    while leftLocation <= mid {
        tmpArr.append(arr[leftLocation])
        leftLocation += 1
    }
    while rightLocation <= right {
        tmpArr.append(arr[rightLocation])
        rightLocation += 1
    }
    var index = left
    for item in tmpArr {
        arr[index] = item
        index += 1
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
