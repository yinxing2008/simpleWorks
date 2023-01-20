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

    private static void printArray(int[] array) {
        System.out.println(Arrays.toString(array));
    }
}
