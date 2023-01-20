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
        if (array.length == 0) return;
        int min = array[0];
        int max = min;
        for (int num : array) {
            if (num > max) {
                max = num;
            } else if (num < min) {
                min = num;
            }
        }
        int[] counting = new int[max - min + 1];
        for (int i = 0; i < array.length; i++) {
            counting[array[i] - min] += 1;
        }
        int index = -1;
        for (int i = 0; i < counting.length; i++) {
            for (int j = 0; j < counting[i]; j++) {
                index++;
                array[index] = i + min;
            }
        }
    }

    private static void printArray(int[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
        System.out.println();
    }
}
