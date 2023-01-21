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
        $len = count($array);
        for ($i = floor($len / 2) - 1; $i >= 0; $i--) {
            $this->adjustHeap($array, $i, $len);
        }
        for ($j = $len - 1; $j > 0; $j--) {
            $this->swap($array, 0, $j);
            $this->adjustHeap($array, 0, $j);
        }
        return var_dump($array);
    }

    private function adjustHeap(&$array, $i, $length)
    {
        $tmp = $array[$i];
        for ($k = 2 * $i + 1; $k < $length; $k = 2 * $k + 1) {
            if ($k + 1 < $length && $array[$k] < $array[$k + 1]) {
                $k++;
            }
            if ($tmp < $array[$k]) {
                $array[$i] = $array[$k];
                $i = $k;
            } else {
                break;
            }

        }
        $array[$i] = $tmp;
    }

    private function swap(&$array, $a, $b)
    {
        $tmp = $array[$a];
        $array[$a] = $array[$b];
        $array[$b] = $tmp;
    }
}
