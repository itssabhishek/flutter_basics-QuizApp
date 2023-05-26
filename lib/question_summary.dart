import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, dynamic>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.deepOrange,
                              child: Text((data['question_index']).toString()),
                            ),
                            title: Text(data['question'] as String),
                            subtitle: Text(
                              'Correct answer: ${data['correct_answer'] as String} \n'
                              'Your answer: ${data['user_answer'] as String} \n',
                            ),
                            isThreeLine: true,
                          ),
                        ),
                        const Divider(height: 0),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
