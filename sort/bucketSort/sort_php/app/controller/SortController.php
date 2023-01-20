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
        $resultArray = [];
        $length = count($array);
        for ($i = 0, $max = $array[$i]; $i < $length; $i++) {
            if ($max < $array[$i]) {
                $max = $array[$i];
            }
            $bucket[$array[$i]] = [];
            array_push($bucket[$array[$i]], $array[$i]);
        }
        for ($i = 0; $i <= $max; $i++) {
            if (!empty($bucket[$i])) {
                $l = count($bucket[$i]);
                for ($j = 0; $j < $l; $j++) {
                    $resultArray[] = $bucket[$i][$j];
                }
            }
        }
        return var_dump($resultArray);
    }
}
