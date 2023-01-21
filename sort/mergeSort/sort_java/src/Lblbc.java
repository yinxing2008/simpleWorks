import java.util.Arrays;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
public class Lblbc {
    public static void main(String[] args) {
        int[] array = {2, 1, 5, 4, 3};
        System.out.println("排序前");
        printArray(array);

        sort(array);

        System.out.println("排序后");
        printArray(array);

    }

    public static void sort(int[] array) {
        int first = 0;
        int last = array.length - 1;
        mergeSort(array, first, last);
    }

    private static void mergeSort(int[] array, int first, int last) {
        if (first < last) {
            int mid = (first + last) / 2;
            mergeSort(array, first, mid);
            mergeSort(array, mid + 1, last);
            binaryMerge(array, first, mid, last);
        }
    }

    public static void binaryMerge(int[] array, int first, int mid, int last) {
        int[] tmpArray = new int[array.length];
        int left, right, index;
        for (index = first; index <= last; index++) {
            tmpArray[index] = array[index];
        }
        index = first;
        left = first;
        right = mid + 1;
        for (; left <= mid && right <= last && index <= last; index++) {
            if (tmpArray[left] <= tmpArray[right]) {
                array[index] = tmpArray[left++];
            } else {
                array[index] = tmpArray[right++];
            }
        }
        while (left <= mid) {
            array[index++] = tmpArray[left++];
        }
        while (right <= last) {
            array[index++] = tmpArray[right++];
        }
    }

    private static void printArray(int[] array) {
        System.out.println(Arrays.toString(array));
    }
}
