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

    private static void printArray(int[] array) {
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i] + " ");
        }
        System.out.println();
    }
}
