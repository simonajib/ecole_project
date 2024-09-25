import { QuizModel } from './quiz.model';

export class QuestionModel {
  questionId?: number; // Optional because it is generated by the database
  content?: string;
  choices?: string[];
  correctAnswer?: string;
  explanation?: string;
  quiz?: QuizModel; // Reference to the associated quiz
  
}
