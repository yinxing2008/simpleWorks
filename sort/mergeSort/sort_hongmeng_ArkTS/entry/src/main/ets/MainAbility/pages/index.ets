/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */

@Entry
@Component
struct Lblbc {
  @State array: number[] = [2, 1, 5, 4, 3]

  build() {
    Column() {
      Text(this.convertToStr(this.array))
        .fontSize(30)
        .fontWeight(FontWeight.Medium)
        .margin({ top: 10 })

      Row() {
        Button('打乱', { type: ButtonType.Normal })
          .borderRadius(5)
          .width(100)
          .backgroundColor(0x418DF9)
          .onClick(() => {
            this.shuffle()
          })
        Button('排序', { type: ButtonType.Normal })
          .borderRadius(5)
          .width(100)
          .backgroundColor(0x418DF9)
          .margin({ left: 10 })
          .onClick(() => {
            this.sort()
          })
      }.margin({ top: 20 })
    }
    .width('100%')
    .margin({ top: 100 })
  }

  shuffle() {
    this.array = [2, 1, 5, 4, 3]
  }

  sort() {
    let array = this.array
    var first = 0
    var last = array.length - 1
    this.mergeSort(first, last)
    this.array = array
  }

  mergeSort(first: number, last: number) {
    if (first < last) {
      var mid = Math.floor((first + last) / 2)
      this.mergeSort(first, mid)
      this.mergeSort(mid + 1, last)
      this.binaryMerge(first, mid, last)
    }
  }

  binaryMerge(first: number, mid: number, last: number) {
    let array = this.array
    var tmpArray = Array(array.length).fill(0)
    var left: number, right: number, index: number
    for (index = first; index <= last; index++) {
      tmpArray[index] = array[index]
    }
    index = first
    left = first
    right = mid + 1
    for (; left <= mid && right <= last && index <= last; index++) {
      if (tmpArray[left] <= tmpArray[right]) {
        array[index] = tmpArray[left++]
      } else {
        array[index] = tmpArray[right++]
      }
    }
    while (left <= mid) {
      array[index++] = tmpArray[left++]
    }
    while (right <= last) {
      array[index++] = tmpArray[right++]
    }
  }

  convertToStr(array) {
    var result = ''
    for (let i = 0; i < array.length; i++) {
      result += array[i] + ' '
    }
    return result
  }
}
