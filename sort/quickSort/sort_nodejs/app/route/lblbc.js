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
  var array = [2, 1, 5, 4, 3]
  array = sortMe(array, 0, array.length - 1);
  return convertToStr(array);
}

function sortMe(array, low, high) {
  if (low >= high) {
    return;
  }
  var index = array[low];
  var i = low;
  var j = high;
  while (i < j) {
    while (i < j && array[j] >= index) {
      j--;
    }
    if (i < j) {
      array[i] = array[j];
      i++;
    }
    while (i < j && array[i] < index) {
      i++;
    }
    if (i < j) {
      array[j] = array[i];
      j--;
    }
  }
  array[i] = index;
  this.sortMe(array, low, i - 1);
  this.sortMe(array, i + 1, high);
}

function convertToStr(array) {
  var result = ''
  for (let i = 0; i < array.length; i++) {
    result += array[i] + ' '
  }
  return result
}

module.exports = router
