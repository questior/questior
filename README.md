## Questior

**Questior is a fully free to use tool to create tests/quizzes and to host them.** It is even possible to use Questior quizz on your website by just **one line of HTML code!**

<img width="960" height="540" alt="example1" src="https://github.com/user-attachments/assets/3dd993a1-d60b-40f5-88ba-e5617c3b59c4" />

*This is a minimal example of what a question might look like in a quiz made with Questinor.*

### How to create a quiz

To create a quiz, download and install the newest release. In the desktop app you have a option to create a new quiz. It is highly recommended to fill every option to avoid errors. Once you're ready, save it as .json file and share it or upload to a hosting service like Github Pages.

To edit the background image, go to Misc and enter a image link. However note that the image is recommended to be 1920x1080 and **must be a .png**

<img width="960" height="540" alt="example2" src="https://github.com/user-attachments/assets/139e5aad-10aa-4371-aaf2-4d9794a71a15" />

*This is a minimal example of what a outcome might look like in a quiz made with Questinor.*

### How to install on your website

**There are two main ways for a website owner to set up Questior.** Which are:

- Embedding the latest stable release in iFrame (recommended).
  - This will keep your site up-to-date with the latest release, but also after a major updates your quiz from older version may not work.
  - This technically could be ran from a non-code editor like Google Sites as embedding. However this hasn't been tested.
- Installing the HTML5 program straight to your website.
  - Your site won't automatically be updated, so your quizzes won't break after an update.

**How to install embedded version:**

Both versions are used with URL parameter `quiz=`, if the quiz URL is invalid, they will be sent to the main menu. Here's an example of a embedded quiz:

	<iframe src="https://questior.github.io/Questior/Index.html?quiz=https://questior.github.io/Questior/example_quiz.json"
			frameborder="0" 
			marginheight="0" 
			marginwidth="0" 
			width="100%" 
			height="100%" 
			scrolling="auto">
	</iframe>

Here it would simply load a full screen quiz from `https://questior.github.io/Questior/example_quiz.json`.

**How to install on your own server:**

1. Move all app files to one folder, for example "questior". Now when you go to `https://yourdomain/questior`, it should open the main menu.
2. You can make the user run a quiz by sending them to `https://yourdomain/questior?quiz=YOUR_QUIZ_URL_HERE`, if the quiz URL is invalid, they will be sent to the main menu.
