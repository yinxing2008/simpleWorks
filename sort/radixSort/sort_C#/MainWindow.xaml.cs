/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
 */
using System;
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

        public static void Sort(int[] array, int bucketNum = 10)
        {
            int maxLength = MaxLength(array);
            int[,] bucket = new int[bucketNum, array.Length + 1];
            for (int i = 0; i < maxLength; i++)
            {
                foreach (var num in array)
                {
                    int bit = (int)(num / Math.Pow(10, i) % 10);
                    bucket[bit, ++bucket[bit, 0]] = num;
                }
                for (int count = 0, j = 0; j < bucketNum; j++)
                {
                    for (int k = 1; k <= bucket[j, 0]; k++)
                    {
                        array[count++] = bucket[j, k];
                    }
                }
                for (int j = 0; j < bucketNum; j++)
                {
                    bucket[j, 0] = 0;
                }
            }
        }

        private static int MaxLength(int[] array)
        {
            if (array.Length == 0) return 0;
            int max = array[0];
            for (int i = 1; i < array.Length; i++)
            {
                if (array[i] > max) max = array[i];
            }
            int count = 0;
            while (max != 0)
            {
                max /= 10;
                count++;
            }
            return count;
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
