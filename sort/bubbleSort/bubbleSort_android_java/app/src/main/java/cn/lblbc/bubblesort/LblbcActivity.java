package cn.lblbc.bubblesort;

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

    private void showArray(int[] array) {
        StringBuilder sb = new StringBuilder();

        for (int value : array) {
            sb.append(value).append(" ");
        }
        ((TextView) findViewById(R.id.textView)).setText(sb.toString());
    }
}