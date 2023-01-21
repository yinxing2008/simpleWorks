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
  var min = array[0]
  var max = min
  for (var i = 0; i < array.length; i++) {
    if (array[i] > max) {
      max = array[i]
    } else if (array[i] < min) {
      min = array[i]
    }
  }

  var counting = Array(max - min + 1).fill(0)
  for (var i = 0; i < array.length; i++) {
    counting[array[i] - min] += 1
  }
  var index = -1
  for (var i = 0; i < counting.length; i++) {
    for (var j = 0; j < counting[i]; j++) {
      index++
      array[index] = i + min
    }
  }
  return convertToStr(array)
}

function convertToStr(array) {
  var result = ''
  for (let i = 0; i < array.length; i++) {
    result += array[i] + ' '
  }
  return result
}

module.exports = router
