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
        $array = [2, 1, 5, 4, 3];
        $start = 0;
        $end = count($array) - 1;
        $this->sortMe($array, $start, $end);
        return var_dump($array);
    }
    public function sortMe(&$arr, $start, $end)
    {
        if ($start < $end) {
            $mid = floor(($start + $end) / 2);
            $this->sortMe($arr, $start, $mid);
            $this->sortMe($arr, $mid + 1, $end);
            $this->mergeSort($arr, $start, $mid, $end);
        }
    }

    public function mergeSort(&$arr, $start, $mid, $end)
    {
        $i = $start;
        $j = $mid + 1;
        $tmp = [];
        while ($i <= $mid && $j <= $end) {
            if ($arr[$i] <= $arr[$j]) {
                $tmp[] = $arr[$i++];
            } else {
                $tmp[] = $arr[$j++];
            }
        }
        while ($i <= $mid) {
            $tmp[] = $arr[$i++];
        }
        while ($j <= $end) {
            $tmp[] = $arr[$j++];
        }
        for ($k = 0; $k < count($tmp); $k++) {
            $arr[$k + $start] = $tmp[$k];
        }
    }

}
