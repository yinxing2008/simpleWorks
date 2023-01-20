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

    private void sort(int[] array) {
        int[][] bucket = new int[10][array.length];
        int[] bucketElementCounts = new int[10];
        int digitOfElement;
        int max = 0;
        for (int value : array) {
            if (max < String.valueOf(value).length()) {
                max = String.valueOf(value).length();
            }
        }

        int index;
        for (int i = 0, n = 1; i < max; i++, n *= 10) {
            for (int value : array) {
                digitOfElement = value / n % 10;
                bucket[digitOfElement][bucketElementCounts[digitOfElement]] = value;
                bucketElementCounts[digitOfElement]++;
            }
            index = 0;
            for (int k = 0; k < bucketElementCounts.length; k++) {
                if (bucketElementCounts[k] != 0) {
                    for (int l = 0; l < bucketElementCounts[k]; l++) {
                        array[index] = bucket[k][l];
                        index++;
                    }
                }
                bucketElementCounts[k] = 0;
            }
        }
    }

    private void showArray(int[] array) {
        StringBuilder sb = new StringBuilder();

        for (int value : array) {
            sb.append(value).append(" ");
        }
        ((TextView) findViewById(R.id.textView)).setText(sb.toString());
    }
}