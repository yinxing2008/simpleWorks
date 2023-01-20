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

fun sort(array: IntArray) {
    for (i in 1 until array.size) {
        val insertVal = array[i]
        var insertIndex = i - 1
        while (insertIndex >= 0 && insertVal < array[insertIndex]) {
            array[insertIndex + 1] = array[insertIndex]
            insertIndex--
        }
        array[insertIndex + 1] = insertVal
    }
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
