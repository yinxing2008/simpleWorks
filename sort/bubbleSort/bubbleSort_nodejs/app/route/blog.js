/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
const Router = require('koa-router');

const { Resolve } = require('@lib/helper');

const router = new Router({
  prefix: '/'
})

router.get('sort', async (ctx) => {
  ctx.body = sort()
})

function sort() {
  let array = [2, 1, 5, 4, 3]
  for (let i = 0; i < array.length - 1; i++) {
    for (let j = 0; j < array.length - 1 - i; j++) {
      if (array[j] > array[j + 1]) {
        let tmp = array[j + 1]
        array[j + 1] = array[j]
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
