package cn.lblbc.sort;

import android.os.Bundle;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
public class LblbcActivity extends AppCompatActivity {
    private int[] array = {2, 1, 5, 4, 3};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lblbc);
        showArray(array);

        findViewById(R.id.shuffleButton).setOnClickListener(view -> {
            shuffle();
            showArray(array);
        });

        findViewById(R.id.sortButton).setOnClickListener(view -> {
            sort(array);
            showArray(array);
        });
    }

    private void shuffle() {
        array = new int[]{2, 1, 5, 4, 3};
    }

    private static void sort(int[] array) {
        int max = getMaxValue(array);
        for (int exp = 1; max / exp > 0; exp *= 10)
            countSort(array, exp);
    }

    private static void countSort(int[] array, int exp) {
        int[] tmpArr = new int[array.length];
        int[] bucketArr = new int[10];

        for (int i = 0; i < array.length; i++)
            bucketArr[(array[i] / exp) % 10]++;

        for (int i = 1; i < 10; i++)
            bucketArr[i] += bucketArr[i - 1];

        for (int i = array.length - 1; i >= 0; i--) {
            tmpArr[bucketArr[(array[i] / exp) % 10] - 1] = array[i];
            bucketArr[(array[i] / exp) % 10]--;
        }

        for (int i = 0; i < array.length; i++) {
            array[i] = tmpArr[i];
        }
    }

    private static int getMaxValue(int[] array) {
        int max = array[0];
        for (int i = 1; i < array.length; i++) {
            if (array[i] > max) {
                max = array[i];
            }
        }

        return max;
    }

    private void showArray(int[] array) {
        StringBuilder sb = new StringBuilder();

        for (int value : array) {
            sb.append(value).append(" ");
        }
        ((TextView) findViewById(R.id.textView)).setText(sb.toString());
    }
}