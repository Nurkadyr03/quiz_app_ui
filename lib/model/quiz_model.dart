class Quiz {
  const Quiz(
    this.question,
    this.answer,
  );

  final String question;
  final bool answer;
}

const q1 = Quiz('Кыргызстанда 7 область барбы?',true);
const q2 = Quiz('Кыргызстандын борбору Бишкекби?', true);
const q3 = Quiz('Эн кичине материк бул тундук Америкабы?', false);
const q4 = Quiz('Ошко 3000 жыл болгонбу?', true);
const q5 = Quiz('Крокодил бакка чыгы алабы?', false);
const q6 = Quiz('Жер планетасы эн чонбу?', false);
const q7 = Quiz('Flutter мобилдик тиркеме жасай алабы?', true);
const q8 = Quiz('Бал бузулабы?', false);

const quizzes = <Quiz>[
  q1,
  q2,
  q3,
  q4,
  q5,
  q6,
  q7,
  q8,
];
