import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/qiita/ui/qiita_state.dart';
import 'package:test/qiita/ui/qiita_view_model.dart';

class QiitaPage extends ConsumerWidget {
  const QiitaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(qiitaViewModelProvider);
    final notifier = ref.read(qiitaViewModelProvider.notifier);

    return PopScope(
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          notifier.onBackHome();
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: state.isReadyData
                  ? _QiitaList(state.qiitaItems)
                  : _SearchButtons(
                      () => notifier.fetchQiitaItems('flutter'),
                      () => notifier.fetchQiitaItems('android'),
                      () => notifier.fetchQiitaItems('ios'),
                    ),
            ),
            Visibility(
              visible: state.isLoading,
              child: const ColoredBox(
                color: Color(0x88000000),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _QiitaList extends StatelessWidget {
  const _QiitaList(this._list);

  final List<QiitaItem> _list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _list.length,
      itemBuilder: (context, index) {
        final item = _list[index];

        return Container(
          padding: const EdgeInsets.only(
            top: 4,
            bottom: 4,
            left: 8,
            right: 8,
          ),
          child: Card(
            elevation: 4,
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.network(
                    item.user?.profileImageUrl ?? '',
                    height: 64,
                  ),
                  const SizedBox(width: 16),
                  Flexible(
                    child: Text(
                      item.title ?? '',
                      maxLines: 3,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SearchButtons extends StatelessWidget {
  const _SearchButtons(
    this.onTapFlutter,
    this.onTapAndroid,
    this.onTapiOs,
  );

  final VoidCallback onTapFlutter;
  final VoidCallback onTapAndroid;
  final VoidCallback onTapiOs;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onTapFlutter,
          child: const Text('Flutter'),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: onTapAndroid,
          child: const Text('android'),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: onTapiOs,
          child: const Text('ios'),
        ),
      ],
    );
  }
}
