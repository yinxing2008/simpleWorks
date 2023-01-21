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
        $bucket = [];
        $result = [];
        $min = $array[0];
        $max = $array[0];
        foreach ($array as $item) {
            if ($item < $min) {
                $min = $item;
            }
            if ($item > $max) {
                $max = $item;
            }
        }
        foreach ($array as $v) {
            if (!isset($bucket[$v])) {
                $bucket[($v)] = 0;
            }
            $bucket[$v]++;
        }
        for ($i = $min; $i <= $max; $i++) {
            while (isset($bucket[$i]) && $bucket[$i] > 0) {
                array_push($result, $i);
                $bucket[$i]--;
            }
        }
        return var_dump($result);
    }
}
