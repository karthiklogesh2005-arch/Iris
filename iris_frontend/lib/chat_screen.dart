import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'chat_input.dart';
import 'chat_bubble.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> messages = [];
  bool sidebarCollapsed = false; // ⬅ starts UN-collapsed

  void sendUserMessage(String text) {
    setState(() {
      messages.add({'role': 'user', 'text': text});
      messages.add({
        'role': 'ai',
        'text': 'This is a placeholder AI response for: "$text"',
      });
    });
  }

  void newChat() {
    setState(() {
      messages.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(
            collapsed: sidebarCollapsed,
            onToggle: () {
              setState(() {
                sidebarCollapsed = !sidebarCollapsed;
              });
            },
            onNewChat: newChat,
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      return ChatBubble(
                        text: msg['text']!,
                        isUser: msg['role'] == 'user',
                      );
                    },
                  ),
                ),
                ChatInput(onSend: sendUserMessage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
