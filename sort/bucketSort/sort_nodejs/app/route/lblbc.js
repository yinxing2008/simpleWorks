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
  const array = [2, 1, 5, 4, 3];
  var tmpArr = [];

  for (var i = 0; i < array.length; i++) {
    var num = array[i];
    tmpArr[num] = tmpArr[num] || 0;
    tmpArr[num]++;
    num == null;
  }

  var result = ''
  for (var i = 0; i < tmpArr.length; i++) {
    if (tmpArr[i]) {
      result += i + ' ';
    }
  }
  return result
}


module.exports = router
