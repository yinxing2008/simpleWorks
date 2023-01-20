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
            for (int gap = array.Length / 2; gap > 0; gap /= 2)
            {
                for (int i = gap; i < array.Length; i++)
                {
                    int j = i;
                    int tmp = array[j];
                    if (array[j] < array[j - gap])
                    {
                        while (j - gap >= 0 && tmp < array[j - gap])
                        {
                            array[j] = array[j - gap];
                            j -= gap;
                        }
                        array[j] = tmp;
                    }
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
