import 'package:flutter/material.dart';

class ChatInput extends StatefulWidget {
  final Function(String) onSend;

  const ChatInput({super.key, required this.onSend});

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  final TextEditingController controller = TextEditingController();

  void send() {
    if (controller.text.trim().isEmpty) return;
    widget.onSend(controller.text.trim());
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Color(0xFF242933),
        border: Border(top: BorderSide(color: Color(0xFF2F3542))),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Send a message...',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => send(),
            ),
          ),
          const SizedBox(width: 10),

          // 🔵 Circular Arrow Button
          GestureDetector(
            onTap: send,
            child: Container(
              width: 44,
              height: 44,
              decoration: const BoxDecoration(
                color: Color(0xFF66D9E8),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.double_arrow_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
