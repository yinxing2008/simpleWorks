import 'package:flutter/material.dart';

/// 厦门大学计算机专业 | 前华为工程师
/// 专注《零基础学编程系列》  http://lblbc.cn/blog
/// 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
/// 公众号：蓝不蓝编程
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '快速排序 - 蓝不蓝编程'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";
  var list = [2, 1, 5, 4, 3];

  @override
  void initState() {
    super.initState();
    setState(() {
      text = convertToStr(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$text',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    shuffle(list);
                    setState(() {
                      text = convertToStr(list);
                    });
                  },
                  child: const Text('打乱'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      list = sort(list);
                      text = convertToStr(list);
                    });
                  },
                  child: const Text('排序'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void shuffle(List<int> list) {
  list.shuffle();
}

// void sort(List<int> list) {
//   for (int i = 0; i < list.length - 1; i++) {
//     for (int j = 0; j < list.length - 1 - i; j++) {
//       if (list[j] > list[j + 1]) {
//         var tmp = list[j + 1];
//         list[j + 1] = list[j];
//         list[j] = tmp;
//       }
//     }
//   }
// }

List<int> sort(List<int> list) {
  if (list.length < 2) {
    //如果只有一个值不需要排序
    return list;
  } else {
    //获取比较的标准（参考）值
    var pivot = list[0];
    //创建一个集合用来存储小于等于标准值的数值
    // 没有元素，需要显式指定泛型参数为 int 否则报错 List<dynamic>' is not a subtype of type 'List<int>
    var less = <int>[];
    //创建一个集合用来存储比标准值大的数值
    var greater = <int>[];
    //将标准值从集合中移除
    list.removeAt(0);
    //遍历整个集合
    for (var i in list) {
      if (i <= pivot) {
        //如果小于等于标准值放入less集合中
        less.add(i);
      } else {
        //如果大于标准值放入greater集合中
        greater.add(i);
      }
    }
    //使用递归的方式，对less 和 greater 再进行排序，最终返回排序好的集合
    return sort(less) + [pivot] + sort(greater);
  }
}

convertToStr(List<int> list) {
  return list.join(" ");
}
