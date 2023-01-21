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
  for (let gap = Math.floor(array.length / 2); gap > 0; gap /= 2) {
    for (let i = gap; i < array.length; i++) {
      var j = i
      var tmp = array[j]
      if (array[j] < array[j - gap]) {
        while (j - gap >= 0 && tmp < array[j - gap]) {
          array[j] = array[j - gap]
          j -= gap
        }
        array[j] = tmp
      }
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
