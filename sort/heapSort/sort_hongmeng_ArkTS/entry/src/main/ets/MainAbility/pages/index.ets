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
    .margin({top:100})
  }

  shuffle() {
    this.array = [2, 1, 5, 4, 3]
  }

  sort() {
    let array = this.array
    for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
      this.adjustHeap(array, i, array.length)
    }
    for (var j = array.length - 1; j > 0; j--) {
      var temp = array[0]
      array[0] = array[j]
      array[j] = temp
      this.adjustHeap(array, 0, j)
    }
    this.array = array
  }
  adjustHeap(array: number[], i: number, length: number) {
    var tmp = array[i]
    for (var j = i * 2 + 1; j < length; j = j * 2 + 1) {
      if (j + 1 < length && array[j] < array[j + 1]) {
        j++
      }
      if (array[j] > tmp) {
        array[i] = array[j]
        i = j
      } else {
        break
      }
    }
    array[i] = tmp
  }

  convertToStr(array) {
    var result = ''
    for (let i = 0; i < array.length; i++) {
      result += array[i] + ' '
    }
    return result
  }
}
