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

array = [2, 1, 5, 4, 3]

function sort() {
  sortMe(0, array.length - 1);
  return convertToStr(array);
}

function sortMe(slow, fast) {
  let base = array[slow];
  array[slow] = 0;
  let left = slow;
  let right = fast;
  while (left < right) {

    if (array[left] === 0) {
      if (array[right] < base) {
        array[left] = array[right];
        array[right] = 0;
        left = left + 1;
      }
      else {
        right = right - 1;
      }
    } else if (array[right] === 0) {
      if (array[left] >= base) {
        array[right] = array[left];
        array[left] = 0;
        right = right - 1;
      }
      else {
        left = left + 1;
      }
    }
  }
  array[left] = base;
  if ((left - 1) - slow > 0) {
    sortMe(slow, left - 1);
  }
  if (fast - (right + 1) > 0) {
    sortMe(right + 1, fast);
  }
  return
}

function convertToStr(array) {
  var result = ''
  for (let i = 0; i < array.length; i++) {
    result += array[i] + ' '
  }
  return result
}

module.exports = router
