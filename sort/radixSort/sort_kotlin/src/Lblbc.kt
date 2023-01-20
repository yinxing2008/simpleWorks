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
    val bucket = Array(10) { IntArray(array.size) }
    val bucketElementCounts = IntArray(10)
    var digitOfElement: Int
    var max = 0
    for (i in array.indices) {
        if (max < array[i].toString().length) {
            max = array[i].toString().length
        }
    }
    var index: Int
    var i = 0
    var n = 1
    while (i < max) {
        for (j in array.indices) {
            digitOfElement = array[j] / n % 10
            bucket[digitOfElement][bucketElementCounts[digitOfElement]] = array[j]
            bucketElementCounts[digitOfElement]++
        }
        index = 0
        for (k in bucketElementCounts.indices) {
            if (bucketElementCounts[k] != 0) {
                for (l in 0 until bucketElementCounts[k]) {
                    array[index] = bucket[k][l]
                    index++
                }
            }
            bucketElementCounts[k] = 0
        }
        i++
        n *= 10
    }
}

private fun printArray(array: IntArray) {
    for (i in array.indices) {
        print(array[i].toString() + " ")
    }
    println()
}
