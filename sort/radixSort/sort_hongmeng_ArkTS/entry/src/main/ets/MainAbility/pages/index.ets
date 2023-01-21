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
    var max = this.getMaxValue(array)
    for (var exp = 1; max / exp > 0; exp *= 10) {
      this.countSort(array, exp)
    }

    this.array = array
  }

  countSort(array: number[], exp: number) {
    var tmpArr = Array(array.length).fill(0)
    var bucketArr = Array(10).fill(0)

    for (var i = 0; i < array.length; i++) {
      bucketArr[Math.floor(array[i] / exp) % 10]++
    }

    for (var i = 1; i < 10; i++) {
      bucketArr[i] += bucketArr[i - 1]
    }

    for (var i = array.length - 1; i >= 0; i--) {
      tmpArr[bucketArr[Math.floor(array[i] / exp) % 10] - 1] = array[i]
      bucketArr[Math.floor(array[i] / exp) % 10]--
    }

    for (var i = 0; i < array.length; i++) {
      array[i] = tmpArr[i]
    }
  }

  getMaxValue(array: number[]) {
    var max = array[0]
    for (var i = 1; i < array.length; i++) {
      if (array[i] > max) {
        max = array[i]
      }
    }

    return max
  }

  convertToStr(array) {
    var result = ''
    for (let i = 0; i < array.length; i++) {
      result += array[i] + ' '
    }
    return result
  }
}
