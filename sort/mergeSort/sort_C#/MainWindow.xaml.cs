/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
 */
using System.Text;
using System.Windows;

namespace Sort
{
    public partial class MainWindow : Window
    {
        private int[] array = { 2, 1, 5, 4, 3 };
        public MainWindow()
        {
            InitializeComponent();
            ShowArray(array);
        }

        private void ShuffleButton_Click(object sender, RoutedEventArgs e)
        {
            Shuffle();
            ShowArray(array);
        }
        private void SortButton_Click(object sender, RoutedEventArgs e)
        {
            Sort(array);
            ShowArray(array);
        }
        private void Shuffle()
        {
            array = new int[] { 2, 1, 5, 4, 3 };
        }

        public static void Sort(int[] array)
        {
            int first = 0;
            int last = array.Length - 1;
            MergeSort(array, first, last);
        }

        private static void MergeSort(int[] array, int first, int last)
        {
            if (first < last)
            {
                int mid = (first + last) / 2;
                MergeSort(array, first, mid);
                MergeSort(array, mid + 1, last);
                BinaryMerge(array, first, mid, last);
            }

        }
        public static void BinaryMerge(int[] array, int first, int mid, int last)
        {
            int[] tmpArray = new int[array.Length];
            int left, right, index;
            for (index = first; index <= last; index++)
            {
                tmpArray[index] = array[index];
            }

            for (index = left = first, right = mid + 1; left <= mid && right <= last && index <= last; index++)
            {
                if (tmpArray[left] <= tmpArray[right]) { array[index] = tmpArray[left++]; }
                else { array[index] = tmpArray[right++]; }
            }
            while (left <= mid) array[index++] = tmpArray[left++];
            while (right <= last) array[index++] = tmpArray[right++];
        }
        private void ShowArray(int[] array)
        {
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < array.Length; i++)
            {
                sb.Append(array[i] + " ");
            }
            label.Content = sb.ToString();
        }

    }
}
