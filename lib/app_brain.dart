import 'question.dart';

class AppBrain {
  int _questionNumber = 0;
  List<Question> _questions = [
    Question(
        'عدد كواكب المجموعة الشمسية هو ثمانية', 'images/image-1.jpg', true),
    Question('القطط هي حيوانات لاحمة', 'images/image-2.jpg', true),
    Question('الصين موجودة في القارة الإفريقية', 'images/image-3.jpg', false),
    Question('الأرض مسطحة وليست كروية', 'images/image-4.jpg', false),
  ];
  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  String getQuestionImage() {
    return _questions[_questionNumber].questionImage;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    }
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
