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

        private static void Sort(int[] array)
        {
            if (array.Length == 0) return;
            int min = array[0];
            int max = min;
            foreach (int num in array)
            {
                if (num > max)
                {
                    max = num;
                }
                else if (num < min)
                {
                    min = num;
                }
            }
            int[] counting = new int[max - min + 1];
            for (int i = 0; i < array.Length; i++)
            {
                counting[array[i] - min] += 1;
            }
            int index = -1;
            for (int i = 0; i < counting.Length; i++)
            {
                for (int j = 0; j < counting[i]; j++)
                {
                    index++;
                    array[index] = i + min;
                }
            }
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
