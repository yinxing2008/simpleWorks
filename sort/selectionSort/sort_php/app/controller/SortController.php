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
        $this->sortMe($array);
        return var_dump($array);
    }

    public function sortMe(&$array)
    {
        $t = count($array);
        for ($i = 0; $i < $t - 1; $i++) {
            $k = $i;
            for ($j = $i + 1; $j < $t; $j++) {
                if ($array[$j] < $array[$k]) {
                    $k = $j;
                }
            }
            if ($k != $i) {
                $tmp = $array[$i];
                $array[$i] = $array[$k];
                $array[$k] = $tmp;
            }
        }
    }
}
