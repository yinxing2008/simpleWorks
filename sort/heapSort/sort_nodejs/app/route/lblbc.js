/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
const Router = require('koa-router');

const router = new Router({
  prefix: '/'
})

router.get('sort', async (ctx) => {
  ctx.body = sort()
})

function sort() {
  let array = [2, 1, 5, 4, 3]
  for (var i = Math.floor(array.length / 2) - 1; i >= 0; i--) {
    adjustHeap(array, i, array.length)
  }
  for (var j = array.length - 1; j > 0; j--) {
    var temp = array[0]
    array[0] = array[j]
    array[j] = temp
    adjustHeap(array, 0, j)
  }
  return convertToStr(array)
}
function adjustHeap(array, i, length) {
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

function convertToStr(array) {
  var result = ''
  for (let i = 0; i < array.length; i++) {
    result += array[i] + ' '
  }
  return result
}

module.exports = router
