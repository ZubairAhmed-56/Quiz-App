import '../models/question_model.dart';

class QuizData {
  static const Map<String, List<Question>> questions = {
    'English': [
      Question(
          questionText: 'The word "Beautiful" is an adjective.',
          isCorrect: true),
      Question(
          questionText: 'English has 26 letters in its alphabet.',
          isCorrect: true),
      Question(questionText: '"Run" is a noun.', isCorrect: false),
      Question(
          questionText: 'Shakespeare wrote "Romeo and Juliet".',
          isCorrect: true),
      Question(
          questionText: 'The past tense of "go" is "went".', isCorrect: true),
    ],
    'General Knowledge': [
      Question(questionText: 'Pakistan was created in 1947.', isCorrect: true),
      Question(
          questionText: 'There are 7 continents in the world.',
          isCorrect: true),
      Question(questionText: 'The sun rises from the west.', isCorrect: false),
      Question(
          questionText: 'Water boils at 100 degrees Celsius.', isCorrect: true),
      Question(questionText: 'A year has 365 days.', isCorrect: true),
    ],
    'Urdu': [
      Question(questionText: 'اردو پاکستان کی قومی زبان ہے۔', isCorrect: true),
      Question(
          questionText: 'علامہ اقبال نے "ساقی نامہ" لکھا۔', isCorrect: true),
      Question(questionText: 'اردو میں 35 حروف ہیں۔', isCorrect: false),
      Question(questionText: 'غالب اردو کے مشہور شاعر ہیں۔', isCorrect: true),
      Question(
          questionText: 'اردو عربی رسم الخط میں لکھی جاتی ہے۔',
          isCorrect: true),
    ],
    'Sindhi': [
      Question(questionText: 'سندھی سندھ کی مقامی زبان آہے۔', isCorrect: true),
      Question(
          questionText: 'شاہ عبداللطیف بھٹائی سندھی شاعر ہيا۔',
          isCorrect: true),
      Question(
          questionText: 'سندھی رومن رسم الخط ۾ لکي ويندي آهي۔',
          isCorrect: false),
      Question(questionText: 'ساز شیرازی سندھی شاعر ہیا۔', isCorrect: true),
      Question(questionText: 'سندھی ۾ 52 اکھر آہن۔', isCorrect: true),
    ],
  };

  static List<Question> getQuestionsBySubject(String subject) {
    return questions[subject] ?? [];
  }
}
