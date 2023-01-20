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

    private static void sort(int[] array) {
        for (int i = array.length / 2 - 1; i >= 0; i--) {
            adjustHeap(array, i, array.length);
        }
        for (int j = array.length - 1; j > 0; j--) {
            int temp = array[0];
            array[0] = array[j];
            array[j] = temp;
            adjustHeap(array, 0, j);
        }
    }

    private static void adjustHeap(int[] array, int startIndex, int length) {
        int tmp = array[startIndex];
        for (int j = startIndex * 2 + 1; j < length; j = j * 2 + 1) {
            if (j + 1 < length && array[j] < array[j + 1]) {
                j++;
            }
            if (array[j] > tmp) {
                array[startIndex] = array[j];
                startIndex = j;
            } else {
                break;
            }
        }
        array[startIndex] = tmp;
    }

    private static void printArray(int[] array) {
         System.out.println(Arrays.toString(array));
    }
}
