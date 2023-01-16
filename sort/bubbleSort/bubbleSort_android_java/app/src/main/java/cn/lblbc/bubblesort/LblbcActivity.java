package cn.lblbc.bubblesort;

import android.os.Bundle;
import android.util.Log;

import androidx.appcompat.app.AppCompatActivity;
/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
public class LblbcActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lblbc);

        int[] array = {2, 1, 5, 4, 3};
        printArray(array);
        sort(array);
        printArray(array);
    }

    private void sort(int[] array) {
        for (int i = 0; i < array.length - 1; i++) {
            for (int j = 0; j < array.length - 1 - i; j++) {
                if (array[j] > array[j + 1]) {
                    int tmp = array[j + 1];
                    array[j + 1] = array[j];
                    array[j] = tmp;
                }
            }
        }
    }

    private void printArray(int[] array) {
        Log.i("lanbulan", "--------------");
        for (int i = 0; i < array.length; i++) {
            Log.i("lanbulan", array[i] + "");
        }
    }
}