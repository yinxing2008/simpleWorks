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
  var first = 0
  var last = array.length - 1
  mergeSort(array,first, last)
  return convertToStr(array)
}
function mergeSort(array,first, last) {
  if (first < last) {
    var mid = Math.floor((first + last) / 2)
    mergeSort(array,first, mid)
    mergeSort(array,mid + 1, last)
    binaryMerge(array,first, mid, last)
  }
}
function binaryMerge(array,first, mid, last) {
  var tmpArray = Array(array.length).fill(0)
  var left, right, index
  for (index = first; index <= last; index++) {
    tmpArray[index] = array[index]
  }
  index = first
  left = first
  right = mid + 1
  for (; left <= mid && right <= last && index <= last; index++) {
    if (tmpArray[left] <= tmpArray[right]) {
      array[index] = tmpArray[left++]
    } else {
      array[index] = tmpArray[right++]
    }
  }
  while (left <= mid) {
    array[index++] = tmpArray[left++]
  }
  while (right <= last) {
    array[index++] = tmpArray[right++]
  }
}

function convertToStr(array) {
  var result = ''
  for (let i = 0; i < array.length; i++) {
    result += array[i] + ' '
  }
  return result
}

module.exports = router
