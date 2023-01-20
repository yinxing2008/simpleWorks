/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */

fun main() {
    val array = intArrayOf(2, 1, 5, 4, 3)
    println("排序前")
    printArray(array)
    sort(array)
    println("排序后")
    printArray(array)
}

private fun sort(array: IntArray) {
    if (array.isEmpty()) return
    var min = array[0]
    var max = min
    for (num in array) {
        if (num > max) {
            max = num
        } else if (num < min) {
            min = num
        }
    }
    val counting = IntArray(max - min + 1)
    for (i in array.indices) {
        counting[array[i] - min] += 1
    }
    var index = -1
    for (i in counting.indices) {
        for (j in 0 until counting[i]) {
            index++
            array[index] = i + min
        }
    }
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
