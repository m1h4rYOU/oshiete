import consumer from "./consumer"

consumer.subscriptions.create("QuestionChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p>${data.content.text}</p>`;
    const questions = document.getElementById('questions');
    const newMessage = document.getElementById('question_text');
    const submit = document.getElementById('submit');
    submit.disabled = false;
    questions.insertAdjacentHTML('afterbegin', html);
    newMessage.value='';
  }
});
