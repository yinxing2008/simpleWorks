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
        sortMe(array, 0, array.length - 1);
    }

    public static void sortMe(int[] array, int low, int high) {
        if (low >= high) {
            return;
        }
        int pivot = array[low];
        int l = low;
        int r = high;
        int tmp;
        while (l < r) {
            while (l < r && array[r] >= pivot) {
                r--;
            }
            while (l < r && array[l] <= pivot) {
                l++;
            }
            if (l < r) {
                tmp = array[l];
                array[l] = array[r];
                array[r] = tmp;
            }
        }
        array[low] = array[l];
        array[l] = pivot;
        if (low < l) {
            sortMe(array, low, l - 1);
        }
        if (r < high) {
            sortMe(array, r + 1, high);
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