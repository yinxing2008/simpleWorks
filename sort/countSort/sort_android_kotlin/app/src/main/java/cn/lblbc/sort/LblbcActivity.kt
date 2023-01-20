package cn.lblbc.sort

import android.os.Bundle
import android.view.View
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
class LblbcActivity : AppCompatActivity() {
    private var array = intArrayOf(2, 1, 5, 4, 3)

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lblbc)

        showArray(array)
        findViewById<View>(R.id.shuffleButton).setOnClickListener {
            shuffle()
            showArray(array)
        }

        findViewById<View>(R.id.sortButton).setOnClickListener {
            sort(array)
            showArray(array)
        }
    }

    private fun shuffle() {
        array = intArrayOf(2, 1, 5, 4, 3)
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

    private fun showArray(array: IntArray) {
        val sb = StringBuilder()
        for (value in array) {
            sb.append(value).append(" ")
        }
        (findViewById<View>(R.id.textView) as TextView).text = sb.toString()
    }
}