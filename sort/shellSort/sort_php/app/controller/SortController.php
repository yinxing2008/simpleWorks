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
        $arr = [2, 1, 5, 4, 3];
        $length = count($arr);
        $plus = floor($length / 2);
        while ($plus > 0) {
            for ($i = 1; $i <= $plus; $i++) {
                for ($j = $plus; $j < $length / $plus; $j += $plus) {
                    $tmp = $arr[$j];
                    for ($k = $j - $plus; $k >= 0; $k -= $plus) {
                        if ($tmp < $arr[$k]) {
                            $arr[$k + $plus] = $arr[$k];
                            $arr[$k] = $tmp;
                        }
                    }
                }
            }
            $plus = floor($plus / 2);
        }
        return var_dump($arr);
    }

}
