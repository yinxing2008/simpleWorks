<?php
//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》  http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程
declare (strict_types = 1);

namespace app\controller;

class SortController
{
    public function sort()
    {
        $array = [2, 1, 5, 42, 3];
        $max = max($array);
        $max_digit = $this->get_digit($max);

        for ($i = 1; $i <= $max_digit; $i++) {
            $this->counting_sort($array, $i);
        }
        return var_dump($array);
    }

    public function counting_sort(&$array, $digit_num = false)
    {
        if ($digit_num !== false) {
            for ($i = 0; $i < count($array); $i++) {
                $array_temp[$i] = $this->get_specific_digit($array[$i], $digit_num);
            }
        } else {
            $array_temp = $array;
        }

        $max = max($array);
        $time_array = array();

        for ($i = 0; $i <= $max; $i++) {
            $time_array[$i] = 0;
        }

        for ($i = 0; $i < count($array_temp); $i++) {
            $time_array[$array_temp[$i]]++;
        }

        for ($i = 0; $i < count($time_array) - 1; $i++) {
            $time_array[$i + 1] += $time_array[$i];
        }

        for ($i = count($array) - 1; $i >= 0; $i--) {
            $sorted_array[$time_array[$array_temp[$i]] - 1] = $array[$i];
            $time_array[$array_temp[$i]]--;
        }

        $array = $sorted_array;
        ksort($array);
    }

    public function get_digit($number)
    {
        $i = 1;
        while ($number >= pow(10, $i)) {
            $i++;
        }

        return $i;
    }

    public function get_specific_digit($num, $i)
    {
        if ($num < pow(10, $i - 1)) {
            return 0;
        }
        return floor($num % pow(10, $i) / pow(10, $i - 1));
    }

}
