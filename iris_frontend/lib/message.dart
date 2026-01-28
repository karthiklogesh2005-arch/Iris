class Message {
  final String role; // 'user' or 'assistant'
  final String text;

  Message({required this.role, required this.text});
}