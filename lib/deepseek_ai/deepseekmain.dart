import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'ChatBubble.dart';

class ChatScr extends StatefulWidget {
  const ChatScr({super.key});

  @override
  State<ChatScr> createState() => _ChatScrState();
}

class _ChatScrState extends State<ChatScr> {

  final TextEditingController _controller=TextEditingController();
  final ScrollController _scrollController=ScrollController();

  List<Map<String,String>> _messages=[];
  bool _isLoading=false;

  Future<void> _sendMessage(String message) async {
    setState(() {
      _messages.add({'role': 'user', 'message': message});
      _isLoading = true;
    });

    final response = await _fetchDeepSeekResponse(message);
    setState(() {
      _messages.add({'role': 'bot', 'message': response});
      _isLoading = false;
    });

    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
    Future<String> _fetchDeepSeekResponse(String message)async{
      final url=Uri.parse('https://api.deepseek.com');
      const apiKey='sk-fe9632c0c8d543ebbb01a5c31e258de1a';
      try{
        final response= await http.post(
          url,
          headers:{
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $apiKey',
          },
          body: jsonEncode({
            "model":"deepseek-chat",
            "message":[
              {"role":"system", "content":"You are a helpful assistant"},
            ]
          }),
        );
        print('Response Status: ${response.statusCode}');
        print('Response Body: ${response.body}');

        if(response.statusCode==200){
          final data=jsonDecode(response.body);
          return data['choice'][0]['message']['content'];
        }
        else{
          return 'Error: ${response.statusCode}, please try again';
        }
      }
      catch(e){
        return 'network error: @e';
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chat with Deepseek'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,//autoscroll
                itemCount: _messages.length,
                itemBuilder: (context,index){
                  final message= _messages[index];
                  return ChatBubble(
                    message: message['message']!,
                    isUser: message['role']=='user',
                  );
                },
              ),
            ),
            if(_isLoading) Padding(
              padding: EdgeInsets.all(8),
              child: CircularProgressIndicator(),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                          hintText: 'Type your message...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                  ),
                  SizedBox(width: 8,
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: (){
                      if(_controller.text.isNotEmpty){
                        _sendMessage(_controller.text);
                        _controller.clear();
                      }
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

