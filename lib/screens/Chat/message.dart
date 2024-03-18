import 'package:flutter/material.dart';
import 'package:break_arcade/constants/app_colors.dart';
import 'package:break_arcade/screens/Profile/profile.dart';
import 'package:intl/intl.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<Message> _messages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.phone,
              color: AppColors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert_rounded,
              color: AppColors.white,
            ),
            onPressed: () {},
          ),
        ],
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  "assets/snakeGame.png",
                  width: 35,
                  height: 35,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                "Micheal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return MessageBubble(
                  isSender: message.isSender,
                  message: message.message,
                  time: message.time,
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.inputBg,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: TextField(
                      controller: _messageController,
                      style: const TextStyle(color: AppColors.white),
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: 'Message...',
                        hintStyle: const TextStyle(color: AppColors.grayText),
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: const Icon(
                            Icons.sentiment_satisfied_alt,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.inputBg,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.send_rounded,
                      color: _messageController.text.isNotEmpty
                          ? AppColors.primaryBlue
                          : AppColors.grayText,
                    ),
                    onPressed: () {
                      if (_messageController.text.isNotEmpty) {
                        setState(
                          () {
                            _messages.add(
                              Message(
                                isSender: true,
                                message: _messageController.text,
                                time: DateTime.now(),
                              ),
                            );
                            _messageController.clear();
                          },
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool isSender;
  final String message;
  final DateTime time;

  const MessageBubble({
    Key? key,
    required this.isSender,
    required this.message,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double maxWidth = 0.8 * MediaQuery.of(context).size.width;
    final formattedTime = DateFormat('hh:mm a').format(time);

    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
        ),
        child: Container(
          margin: EdgeInsets.only(
            right: isSender ? 20 : 0,
            left: isSender ? 0 : 20,
            top: 5,
            bottom: 5,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isSender ? AppColors.primaryBlue : AppColors.inputBg,
            borderRadius: isSender
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(0),
                  )
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(12),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                formattedTime,
                style: TextStyle(
                  color: isSender ? Colors.white70 : AppColors.grayText,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Message {
  final bool isSender;
  final String message;
  final DateTime time;

  Message({
    required this.isSender,
    required this.message,
    required this.time,
  });
}
