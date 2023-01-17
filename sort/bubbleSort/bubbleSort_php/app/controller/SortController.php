<?php
//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》  http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程
declare(strict_types=1);

namespace app\controller;

use Exception;
use think\facade\Request;


class SortController
{
    public function sort()
    {
        $array = [2, 1, 5, 4, 3];
        for ($i = 0; $i < count($array) -1; $i++) {
            for ($j = 0; $j < count($array) -1 -$i; $j++) {
                if ($array[$j] > $array[$j + 1]) {
                    $tmp = $array[$j];
                    $array[$j] = $array[$j + 1];
                   $array[$j + 1] = $tmp;
               }
           }
       }
       return var_dump($array);
    }
}
