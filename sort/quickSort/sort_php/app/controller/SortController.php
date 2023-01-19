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
        $result = $this->sortMe($array);
        return var_dump($result);
    }

    public function sortMe($arr)
    {
        $length = count($arr);
        if (!is_array($arr) || $length <= 1) {
            return $arr;
        }
        $baseValue = $arr[0];
        $leftArr = array();
        $rightArr = array();
        for ($i = 1; $i < $length; $i++) {
            if ($arr[$i] < $baseValue) {
                $leftArr[] = $arr[$i];
            } else {
                $rightArr[] = $arr[$i];
            }
        }
        $leftArr = $this->sortMe($leftArr);
        $rightArr = $this->sortMe($rightArr);
        return array_merge($leftArr, array($baseValue), $rightArr);
    }
}
