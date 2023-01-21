/*
 厦门大学计算机专业 | 前华为工程师
 专注《零基础学编程系列》  http://lblbc.cn/blog
 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 公众号：蓝不蓝编程
 */
Page({
  data: {
    array: [2, 1, 5, 4, 3],
    arrayStr: '',
  },
  onLoad: function () {
    this.shuffle()
  },
  shuffle() {
    let array = [2, 1, 5, 4, 3]
    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  sort() {
    let array = this.data.array
    for (let i = 1; i < array.length; i++) {
      var insertVal = array[i]
      var insertIndex = i - 1
      while (insertIndex >= 0 && insertVal < array[insertIndex]) {
        array[insertIndex + 1] = array[insertIndex]
        insertIndex--
      }
      array[insertIndex + 1] = insertVal
    }

    this.setData({
      array: array,
      arrayStr: this.convertToStr(array),
    })
  },
  convertToStr(array: number[]) {
    var result = ""
    for (let i = 0; i < array.length; i++) {
      result += array[i] + " "
    }
    return result;
  }

})