/*
  厦门大学计算机专业 | 前华为工程师
  专注《零基础学编程系列》  http://lblbc.cn/blog
  包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
  公众号：蓝不蓝编程
 */
using System.Collections.Generic;
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
            Sort(array,array.Length);
            ShowArray(array);
        }
        private void Shuffle()
        {
            array = new int[] { 2, 1, 5, 4, 3 };
        }

        static void Sort(int[] array, int len, int bucketsize = 4)
        {
            int max = GetMaxValue(array, len);
            int min = GetMinValue(array, len);
            List<List<int>> buckets = new List<List<int>>();
            int bucketnum = (max - min) / bucketsize + 1;
            for (int i = 0; i < bucketnum; i++)
            {
                buckets.Add(new List<int>());
            }
            for (int i = 0; i < len; i++)
            {
                int bucketIndex = (array[i] - min) / bucketsize;
                buckets[bucketIndex].Add(array[i]);
            }
            int index = 0;
            for (int i = 0; i < buckets.Count; i++)
            {
                buckets[i].Sort();
                for (int j = 0; j < buckets[i].Count; j++)
                {
                    array[index++] = buckets[i][j];
                }
            }
        }
        static int GetMaxValue(int[] array, int len)
        {
            int max = array[0];
            for (int i = 1; i < len; i++)
            {
                if (array[i]>max)
                {
                    max = array[i];
                }
            }
            return max;
        }

        static int GetMinValue(int[] array, int len)
        {
            int min = array[0];
            for (int i = 1; i < len; i++)
            {
                if (array[i] <min)
                {
                    min = array[i];
                }
            }
            return  min;
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
