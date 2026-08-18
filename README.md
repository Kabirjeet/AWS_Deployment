
```
NeuroFlux
├─ .DS_Store
├─ Backend
│  ├─ .env
│  ├─ config
│  │  ├─ db.js
│  │  └─ multer.js
│  ├─ controllers
│  │  ├─ aiController.js
│  │  ├─ authController.js
│  │  ├─ chatController.js
│  │  ├─ documentController.js
│  │  ├─ flashcardController.js
│  │  ├─ progressController.js
│  │  └─ quizController.js
│  ├─ middleware
│  │  ├─ auth.js
│  │  └─ errorHandler.js
│  ├─ models
│  │  ├─ ChatHistory.js
│  │  ├─ Document.js
│  │  ├─ Flashcard.js
│  │  ├─ Quiz.js
│  │  └─ User.js
│  ├─ package-lock.json
│  ├─ package.json
│  ├─ routes
│  │  ├─ aiRoutes.js
│  │  ├─ authRoutes.js
│  │  ├─ chatRoutes.js
│  │  ├─ documentRoutes.js
│  │  ├─ flashcardRoutes.js
│  │  ├─ leaderboardRoutes.js
│  │  ├─ progressRoutes.js
│  │  └─ quizRoutes.js
│  ├─ server.js
│  ├─ testMongo.js
│  ├─ uploads
│  │  └─ documents
│  │     ├─ 1772368665880-151359632-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772368723607-783341472-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772504090735-476998107-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772504234727-174253514-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772505978825-297566546-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772508993918-408355853-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772514738433-713065009-24CSE0212 Data Structures using Object Oriented Programming-II (1).pdf
│  │     ├─ 1772522508291-272852653-linux basic command part 3.pdf
│  │     ├─ 1772557940082-879848988-linux basic command part 3.pdf
│  │     ├─ 1772642061642-637052150-oilrig_threat_actor_slides.pdf
│  │     ├─ 1773205913279-563714427-Unit 1 - Introduction to Embedded System.pdf
│  │     ├─ 1773308776604-590594270-introduction_to_nodejs.pdf
│  │     ├─ 1773308918403-433795278-Circular_20260227192704_Announcement_St1_Linux_Administration.pdf
│  │     ├─ 1773670784377-53062225-Unit 1 - Introduction to Embedded System.pdf
│  │     ├─ 1775798606005-246897649-linux basic command part 3.pdf
│  │     └─ 1775799716580-296086175-linux basic command part 3.pdf
│  └─ utils
│     ├─ geminiService.js
│     ├─ pdfParser.js
│     └─ textChunker.js
├─ Frontend
│  ├─ NeuroFlux
│  │  ├─ README.md
│  │  ├─ eslint.config.js
│  │  ├─ index.html
│  │  ├─ package-lock.json
│  │  ├─ package.json
│  │  ├─ public
│  │  │  ├─ logo.svg
│  │  │  └─ vite.svg
│  │  ├─ src
│  │  │  ├─ App.jsx
│  │  │  ├─ assets
│  │  │  │  └─ react.svg
│  │  │  ├─ components
│  │  │  │  ├─ auth
│  │  │  │  │  └─ ProtectedRoute.jsx
│  │  │  │  ├─ common
│  │  │  │  │  ├─ Button.jsx
│  │  │  │  │  ├─ Spinner.jsx
│  │  │  │  │  └─ abc.txt
│  │  │  │  ├─ documents
│  │  │  │  │  ├─ DocumentCard.jsx
│  │  │  │  │  └─ SummaryCard.jsx
│  │  │  │  └─ layout
│  │  │  │     ├─ AppLayout.jsx
│  │  │  │     ├─ Header.jsx
│  │  │  │     └─ Sidebar.jsx
│  │  │  ├─ context
│  │  │  │  ├─ AuthContext.jsx
│  │  │  │  └─ ThemeContext.jsx
│  │  │  ├─ index.css
│  │  │  ├─ main.jsx
│  │  │  ├─ pages
│  │  │  │  └─ Auth
│  │  │  │     ├─ Dashboard
│  │  │  │     │  └─ DashboardPage.jsx
│  │  │  │     ├─ Documents
│  │  │  │     │  ├─ DocumentChatPage.jsx
│  │  │  │     │  ├─ DocumentDetailsPage.jsx
│  │  │  │     │  ├─ DocumentListPage.jsx
│  │  │  │     │  └─ DocumentSummaryPage.jsx
│  │  │  │     ├─ Flashcards
│  │  │  │     │  ├─ FlashcardPage.jsx
│  │  │  │     │  └─ FlashcardsListPage.jsx
│  │  │  │     ├─ ForgotPasswordPage.jsx
│  │  │  │     ├─ LoginPage.jsx
│  │  │  │     ├─ NotFoundPage.jsx
│  │  │  │     ├─ Profile
│  │  │  │     │  └─ ProfilePage.jsx
│  │  │  │     ├─ Quizzes
│  │  │  │     │  ├─ QuizResultPage.jsx
│  │  │  │     │  ├─ QuizTakePage.jsx
│  │  │  │     │  └─ QuizzesListPage.jsx
│  │  │  │     └─ RegisterPage.jsx
│  │  │  ├─ services
│  │  │  │  ├─ aiService.js
│  │  │  │  ├─ authService.js
│  │  │  │  ├─ documentService.js
│  │  │  │  ├─ flashcardService.js
│  │  │  │  ├─ progressService.js
│  │  │  │  └─ quizService.js
│  │  │  └─ utils
│  │  │     ├─ apiPath.js
│  │  │     └─ axiosInstance.js
│  │  └─ vite.config.js
│  └─ package-lock.json
└─ README.txt

```