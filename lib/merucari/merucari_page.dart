import 'package:flutter/material.dart';

class MerucariPage extends StatelessWidget {
  const MerucariPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const String appTitle = '出品';
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            appTitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          child: Column(
            children: [
              _CategorySection(),
              _ExhibitionSection(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.deepOrange[600],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt_outlined, size: 24, color: Colors.white),
          ],
        ),
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}

class _CategorySection extends StatelessWidget {
  const _CategorySection();

  final String howToStartSellingImage = 'images/how_to_start_selling.png';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = (screenWidth - 10 * 5) / 4;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.asset(
            howToStartSellingImage,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                '出品へのショートカット',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    const Text(
                      '写真を撮る',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.image,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    const Text(
                      'アルバム',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    Icon(
                      Icons.line_weight,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    const Text(
                      'バーコード\n(本・コスメ)',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.content_paste,
                      size: 30,
                    ),
                    SizedBox(height: 5),
                    const Text(
                      '下書き一覧',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ListingList extends StatelessWidget {
  const _ListingList(this.data);
  final ListingInfo data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    data.imagePath,
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.productName,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          data.amount,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.local_fire_department,
                              color: Colors.blue,
                              size: 15,
                            ),
                            Text(
                              data.numberOfViews,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 110,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      '出品する',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
        Divider(
          thickness: 0.1,
          color: Colors.grey[300],
        ),
      ],
    );
  }
}

class ListingInfo {
  ListingInfo({
    required this.imagePath,
    required this.productName,
    required this.amount,
    required this.numberOfViews,
  });
  final String imagePath;
  final String productName;
  final String amount;
  final String numberOfViews;
}

class _ExhibitionSection extends StatelessWidget {
  _ExhibitionSection();

  final List<ListingInfo> _data = [
    ListingInfo(
      imagePath: 'images/camera.png',
      productName: 'sony a7iii',
      amount: '¥5555.0',
      numberOfViews: '800人が探しています',
    ),
    ListingInfo(
      imagePath: 'images/camera.png',
      productName: 'sony a7iii',
      amount: '¥5555.0',
      numberOfViews: '800人が探しています',
    ),
    ListingInfo(
      imagePath: 'images/camera.png',
      productName: 'sony a7iii',
      amount: '¥5555.0',
      numberOfViews: '800人が探しています',
    ),
    ListingInfo(
      imagePath: 'images/camera.png',
      productName: 'sony a7iii',
      amount: '¥5555.0',
      numberOfViews: '800人が探しています',
    ),
    ListingInfo(
      imagePath: 'images/camera.png',
      productName: 'sony a7iii',
      amount: '¥5555.0',
      numberOfViews: '800人が探しています',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '売れやすい持ち物',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '使わないモノを出品してみよう！',
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'すべてを見る＞',
                          style: TextStyle(
                            color: Colors.blue[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey[300],
          ),
          ListView.builder(
            itemCount: _data.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = _data[index];
              return _ListingList(data);
            },
          ),
        ],
      ),
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              Positioned(
                top: -6,
                right: -6,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(
                    minHeight: 15,
                    minWidth: 15,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '5',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          label: 'ホーム',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined), label: 'お知らせ'),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt_outlined, color: Colors.grey),
          label: '出品',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_comment_outlined,
            color: Colors.grey,
          ),
          label: 'メッセージ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'マイページ',
        ),
      ],
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      currentIndex: 0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {},
    );
  }
}
