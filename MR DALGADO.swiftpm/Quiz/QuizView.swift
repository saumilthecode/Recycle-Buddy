import SwiftUI
import SPConfetti

struct QuizView: View {
    
    var questions = [
        Questions(Question: "Can shampoo bottles with the V symbol be recycled?", Option1: "No", Option2: "Yes", Option3: "ocasionally", Option4: "seldom", Answer: 4, plainTextAnswer: "the process of recycling PVC and V is complex, so in most cases they cannot be simply thrown in plastic recycling bags or boxes after use. PVC and V products need to be separated and collected by specific companies or organizations"),
        Questions(Question: "plastic", Option1: "plastic", Option2: "plastic", Option3: "plastic", Option4: "plastic", Answer: 2, plainTextAnswer: "PLASTIC"),
        Questions(Question: "plastic?", Option1: "plastic", Option2: "plastic", Option3: "plastic", Option4: "plastic", Answer: 4, plainTextAnswer: "PLASTIC"),
        Questions(Question: "plastic", Option1: "plastic", Option2: "plastic", Option3: "plastic", Option4: "plastic", Answer: 2, plainTextAnswer: "PLASTIC"),
        Questions(Question: "Ethan Dalgado", Option1: "Ethan Dalgado", Option2: "Ethan Dalgado", Option3: "Ethan Dalgado", Option4: "Ethan Dalgado", Answer: 3, plainTextAnswer: "Ethan Dalgado")
    ]
    
    @State var Progress = Double(0.0)
    @State var questionIndex = 0
    @State var QuestionsDone = Int(0)
    @State var selectedAnswer = Int(0)
    @State var isCorrect = Bool(false)
    @State private var showingSheet = false
    @State private var showingFeedback = false
    @EnvironmentObject var navigationManager: NavigationManager
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 177/255, green: 239/255, blue: 239/255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack {
                        // Progress Bar
                        ProgressView(value: Progress, total: 5)
                            .progressViewStyle(.linear)
                            .tint(.blue)
                            .scaleEffect(x: 0.8, y: 0.3)
                            .padding()
                            .offset(y: -200)
                        
                        Text("You are \(QuestionsDone) / 5 questions done!")
                            .bold()
                            .italic()
                            .offset(y: -400)
                            .padding(50)
                    }
                    
                    // Question Text
                    Text(questions[questionIndex].Question)
                        .font(.title2)
                        .bold()
                        .padding()
                        .offset(y: -100)
                    
                    // Option Buttons
                    HStack(spacing: 20) {
                        Button(action: {
                            selectedAnswer = 1
                            handleAnswer()
                        }) {
                            Text(questions[questionIndex].Option1)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedAnswer = 2
                            handleAnswer()
                        }) {
                            Text(questions[questionIndex].Option2)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                        }
                    }
                    .offset(y: -50)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            selectedAnswer = 3
                            handleAnswer()
                        }) {
                            Text(questions[questionIndex].Option3)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            selectedAnswer = 4
                            handleAnswer()
                        }) {
                            Text(questions[questionIndex].Option4)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color(red: 154/255, green: 199/255, blue: 116/255))
                                .cornerRadius(10)
                        }
                    }
                    .offset(y: 0)
                    
                    // Progress Text
                }
                .sheet(isPresented: $showingSheet) {
                    ScoreView(questionsDone: QuestionsDone)
                }
                .alert(isPresented: $showingFeedback) {
                    Alert(
                        title: Text(isCorrect ? "Correct!" : "Incorrect"),
                        message: Text(isCorrect ? "You got it right!" : "The correct answer is \(questions[questionIndex].plainTextAnswer)"),
                        dismissButton: .default(Text("Next Question"), action: moveToNextQuestion)
                    )
                }
                
            }
            .onAppear {
                Progress = Double(QuestionsDone)
            }
        }
    }
    
    private func handleAnswer() {
        isCorrect = selectedAnswer == questions[questionIndex].Answer
        if isCorrect {
            SPConfetti.startAnimating(.centerWidthToDown, particles: [.triangle, .arc], duration: 1)
        }
        showingFeedback = true
    }
    
    private func moveToNextQuestion() {
        QuestionsDone += 1
        if QuestionsDone == questions.count {
            showingSheet = true
        } else {
            questionIndex = (questionIndex + 1) % questions.count
            Progress = Double(QuestionsDone)
            selectedAnswer = 0
        }
    }
}



#Preview {
    QuizView()
}
