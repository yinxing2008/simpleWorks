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
        int first = 0;
        int last = array.length - 1;
        mergeSort(array, first, last);
    }

    private void mergeSort(int[] array, int first, int last) {
        if (first < last) {
            int mid = (first + last) / 2;
            mergeSort(array, first, mid);
            mergeSort(array, mid + 1, last);
            binaryMerge(array, first, mid, last);
        }

    }

    private void binaryMerge(int[] array, int first, int mid, int last) {
        int[] tmpArray = new int[array.length];
        int left, right, index;
        for (index = first; index <= last; index++) {
            tmpArray[index] = array[index];
        }

        for (index = left = first, right = mid + 1; left <= mid && right <= last && index <= last; index++) {
            if (tmpArray[left] <= tmpArray[right]) {
                array[index] = tmpArray[left++];
            } else {
                array[index] = tmpArray[right++];
            }
        }
        while (left <= mid) array[index++] = tmpArray[left++];
        while (right <= last) array[index++] = tmpArray[right++];
    }

    private void showArray(int[] array) {
        StringBuilder sb = new StringBuilder();

        for (int value : array) {
            sb.append(value).append(" ");
        }
        ((TextView) findViewById(R.id.textView)).setText(sb.toString());
    }
}