import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/residence/ui/residence_state.dart';
import 'package:test/residence/ui/residence_view_model.dart';

class ResidencePage extends StatelessWidget {
  const ResidencePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBarWidget(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            _PropertySearchConditionCard(),
            _PropertyListSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.search, size: 24, color: Colors.white),
            SizedBox(height: 4),
            Text(
              '物件',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}

class _AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const _AppBarWidget();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon:
            const Icon(Icons.keyboard_arrow_left, color: Colors.teal, size: 32),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey[200],
            ),
            child: Text(
              'おすすめ',
              style: TextStyle(
                color: Colors.teal[300],
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[200],
                ),
                child: Text(
                  'リフォーム',
                  style: TextStyle(
                    color: Colors.teal[300],
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '1',
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
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_circle, color: Colors.teal, size: 32),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}

class _PropertySearchConditionCard extends StatelessWidget {
  const _PropertySearchConditionCard();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Text(
                        'カウルのおすすめ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '新着3件',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '編集',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 12,
                        ),
                      ),
                      Icon(Icons.mode_edit, color: Colors.teal),
                      SizedBox(width: 15),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.train,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '東京駅・品川駅・川崎駅・横浜駅・目黒駅',
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.monetization_on,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '下限なし〜2,000万円',
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Icon(
                            Icons.info_outline,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '1R〜4LDK / 10m²以上 / 徒歩20分',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}

class _PropertyCard extends StatelessWidget {
  const _PropertyCard(this.data);
  final ResidenceItem data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final imageSize = constraints.maxWidth * 0.5;
              return _ImageWidget(
                imagePath: data.imageUrl,
                madoriPath: data.floorPlanUrl,
                imageSize: imageSize,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      data.propertyTitle.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Text(
                      data.price.toString(),
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.train,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      data.access.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.monetization_on,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      data.roomDetails.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.info_outline,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      data.buildingInfo.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.delete_outline, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            '興味なし',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border, color: Colors.grey),
                          SizedBox(width: 10),
                          Text(
                            'お気に入り',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PropertyListSection extends ConsumerWidget {
  const _PropertyListSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(residenceViewModelProvider);
    final notifier = ref.read(residenceViewModelProvider.notifier);

    ref.listen(residenceViewModelProvider, (previous, next) {
      if (previous == null) {
        notifier.fetchResidenceItems();
      }
    });
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (state.isReadyData && state.residenceItems.isNotEmpty) {
      return ListView.builder(
        itemCount: state.residenceItems.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final data = state.residenceItems[index];
          return _PropertyCard(data);
        },
      );
    } else {
      return const Center(
        child: Text(
          'データを取得できませんでした',
          style: TextStyle(color: Colors.white),
        ),
      );
    }
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
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'お気に入り',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(
                Icons.message,
                color: Colors.grey,
              ),
              Positioned(
                top: -4,
                right: -4,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  constraints: const BoxConstraints(
                    minHeight: 12,
                    minWidth: 12,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '1',
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
          label: 'メッセージ',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'マイページ',
        ),
      ],
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
      ),
      backgroundColor: Colors.white,
      selectedItemColor: Colors.teal,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {},
    );
  }
}

class _ImageWidget extends StatelessWidget {
  const _ImageWidget({
    required this.imagePath,
    required this.madoriPath,
    required this.imageSize,
  });

  final String imagePath;
  final String madoriPath;
  final double imageSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (imagePath.isNotEmpty)
          SizedBox(
            height: imageSize,
            width: imageSize,
            child: Image.network(imagePath),
          )
        else
          SizedBox(
            height: imageSize,
            width: imageSize,
            child: Image.asset('images/home.png'),
          ),
        if (madoriPath.isNotEmpty)
          SizedBox(
            height: imageSize,
            width: imageSize,
            child: Image.network(
              madoriPath,
            ),
          )
        else
          SizedBox(
            height: imageSize,
            width: imageSize,
            child: Image.asset('images/madori.png'),
          ),
      ],
    );
  }
}
