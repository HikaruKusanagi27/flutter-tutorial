import 'package:flutter/material.dart';
import 'package:test/drift/database.dart';

class DriftPage extends StatelessWidget {
  DriftPage({
    super.key,
    required this.database,
  });
  final AppDatabase database;
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  final _deadlineController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('登録しているTodoはありません'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('登録'),
                content: SizedBox(
                  width: 300,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _titleController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.text_fields),
                            labelText: 'タイトルを入力してください',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '値を入力してください';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _contentController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.subject),
                            labelText: '内容を入力してください',
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '値を入力してください';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _deadlineController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.calendar_today),
                            labelText: '期限を選択してください',
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return '値を入力してください';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('キャンセル'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _saveUserData();
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('保存'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.create),
      ),
    );
  }

  void _saveUserData() {
    // TODO: データベースに保存する処理を実装
  }
}
