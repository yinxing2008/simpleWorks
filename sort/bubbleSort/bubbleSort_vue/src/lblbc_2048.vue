 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
<template>
  <div class="wrapper">
    <div>arrayStr</div>
    <div class="btn-row">
      <div class="btn" bindtap="shuffle">打乱</div>
      <div class="btn btn-right" bindtap="sort">排序</div>
    </div>
  </div>
</template>
  
<script lang="ts">
export default {
  data() {
    return {
      array: [],
    arrayStr: '',
    }
  },
  mounted() {
    this.shuffle() 
  },
  methods: {
    startGame() {
      this.isGameOver = false
      this.cellArr = Array.from(Array(4)).map(() => Array(4).fill(0))
      this.fillOneEmptyCell()
      this.fillOneEmptyCell()
    },
    
  }
}
</script>
  
<style scoped lang="less">
.wrapper {
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  margin-top: 50px;
}
.btn-row{
  margin-top: 20px;
}

.btn {
  display: inline-block;
  padding: 0 20px;
  height: 40px;
  line-height: 40px;
  border-radius: 5px;
  cursor: pointer;
  text-align: center;
  color: #f9f6f2;
  background: #418DF9;
}

.btn-right {
  margin-left: 10px;
}

</style>
  