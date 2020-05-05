import 'question.dart';

int _questionNumber = 0;

class QuizeBrain {
  List<Question> _questionBank = [
    Question('সবার আগে পৃথিবীর আহ্নিক গতি ও বার্ষিক গতি নির্ণয় করেন আর্যভট্ট।',
        true),
    Question('গুচ্ছমূল একবীজপত্রী উদ্ভিদের বৈশিষ্ট্য।', true),
    Question('সোনারগাঁও-এর প্রাচীন বা পূর্বনাম ছিল সুবর্ণগ্রাম।', true),
    Question('মানবদেহ একটি সরল যন্ত্র।', false),
    Question('ভাইরাস কম্পিউটারের একটি যন্ত্রাংশ।', false),
    Question(
        'স্টিম টারবাইন নামে একটি যন্ত্র দিয়ে প্রথম বিদ্যুৎ উৎপাদন শুরু হয়।',
        true),
    Question('রাষ্ট্র ও সরকার এক।', false),
    Question('তামার তার বিদ্যুৎ পরিবাহী।', true),
    Question('তারামন বিবি ১০ নং সেক্টরে যুদ্ধ করেন।', false),
    Question('দ্রাবক=দ্রবণ-দ্রব।', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber = _questionNumber + 1;
    }
  }

  String getQuestionTxt() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinised() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reSet() {
    _questionNumber = 0;
  }
}
