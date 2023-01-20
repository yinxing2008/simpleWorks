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
        for (int gap = array.length / 2; gap > 0; gap /= 2) {
            for (int i = gap; i < array.length; i++) {
                int j = i;
                int tmp = array[j];
                if (array[j] < array[j - gap]) {
                    while (j - gap >= 0 && tmp < array[j - gap]) {
                        array[j] = array[j - gap];
                        j -= gap;
                    }
                    array[j] = tmp;
                }
            }
        }
    }

    private static void printArray(int[] array) {
         System.out.println(Arrays.toString(array));
    }
}
