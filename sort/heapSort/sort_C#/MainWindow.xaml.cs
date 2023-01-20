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

        private static void Sort(int[] array)
        {
            for (int i = array.Length / 2 - 1; i >= 0; i--)
            {
                AdjustHeap(array, i, array.Length);
            }
            for (int j = array.Length - 1; j > 0; j--)
            {
                int temp = array[0];
                array[0] = array[j];
                array[j] = temp;
                AdjustHeap(array, 0, j);
            }
        }

        private static void AdjustHeap(int[] array, int i, int length)
        {
            int tmp = array[i];
            for (int j = i * 2 + 1; j < length; j = j * 2 + 1)
            {
                if (j + 1 < length && array[j] < array[j + 1])
                {
                    j++;
                }
                if (array[j] > tmp)
                {
                    array[i] = array[j];
                    i = j;
                }
                else
                {
                    break;
                }
            }
            array[i] = tmp;
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
