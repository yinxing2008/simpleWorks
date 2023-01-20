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
    var brr = []
    var index, buckets, baseVal
    var arrMaxVal, arrMinVal
    var sortedIndex = 0,
      n = array.length
    arrMaxVal = array[0]
    arrMinVal = array[0]
    for (var i = 0; i < n; i++) {
      if (arrMaxVal < array[i]) {
        arrMaxVal = array[i]
      }
      if (arrMinVal > array[i]) {
        arrMinVal = array[i]
      }
    }

    if (arrMaxVal == arrMinVal) return
    buckets = Math.ceil(Math.sqrt(n))
    baseVal = Math.ceil((arrMaxVal - arrMinVal + 1) / buckets)
    for (var i = 0; i < n; i++) {
      index = Math.floor((array[i] - arrMinVal) / baseVal)
      if (!brr[index]) {
        brr[index] = [array[i]]
      }
      else if (Array.isArray(brr[index])) {
        for (var j = brr[index].length - 1;j >= 0 && brr[index][j] > array[i];j--) {
          brr[index][j + 1] = brr[index][j]
        }
        brr[index][j + 1] = array[i]
      }
    }

    for (var i = 0; i < brr.length; i++) {
      if (Array.isArray(brr[i])) {
        for (var j = 0; j < brr[i].length; j++) {
          array[sortedIndex++] = brr[i][j]
        }
      }
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