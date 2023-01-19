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
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
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

        private static void Sort(int[] array)
        {
            SortMe(array, 0, array.Length - 1);
        }
        private static void SortMe(int[] array, int low, int high)
        {
            if (low >= high)
            {
                return;
            }
            int index = array[low];
            int i = low;
            int j = high;
            while (i < j)
            {
                while (i < j && array[j] >= index)
                {
                    j--;
                }
                if (i < j)
                {
                    array[i] = array[j];
                    i++;
                }
                while (i < j && array[i] < index)
                {
                    i++;
                }
                if (i < j)
                {
                    array[j] = array[i];
                    j--;
                }
            }
            array[i] = index;
            SortMe(array, low, i - 1);
            SortMe(array, i + 1, high);
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
