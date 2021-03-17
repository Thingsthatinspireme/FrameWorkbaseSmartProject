<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>쌍방향채팅</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            list-style-type: none;
            text-decoration: none;
            font-family: 'Noto Sans KR', sans-serif;
            font-size: 1em;
            font-weight: 300;
            color: #000;
        }
    
        body {
            width: 100%;
            height: auto;
            background-color: #367FFF;
            /* body에 스타일링을 지양해주십시오. */
        }
        /*채팅창 구현*/
        #send_message {
            border: 1px solid black;
            float: none;
        }
    
        .chat {
            clear: both;
            width: 90%;
            height: auto;
            margin: 0 auto;
        }
        
        #my-chat-content {
            width: 100%;
            min-height: 280px;
            margin: 10px 0 10px 0;
            background-color: whitesmoke;
        }
    
        .chat-input {
            width: 80%;
            float: left;
        }
    
        #chat-content {
            resize: none;
            width: 100%;
            height: 100px;
        }
        #chatBtn {
            font-size: 10px;
            width: 40px;
            margin: 40px 0px 40px 15px;
            float: right;
        } 
    </style>
    <script src="js/jquery-1.12.4.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<body>
    <input type="text" id="nickname" class="form-inline" placeholder="닉네임을 입력해주세요" required autofocus>
    <button class="btn btn-primary" id="name">확인</button>
    <div class="chat">
        <div id="my-chat-content">
        </div>
        <div class="chat-input-wrapper">    
            <div class="chat-input">
                <textarea id="chat-content" type="text" name="chat_input"></textarea>
            </div>
            <div>
                <button class="chat-input" id="chatBtn" type="button">Send</button>
            </div>
        </div>

    </div>
</body>
<script>
    var ws;
    var nickname;
	var chatroom = ${chatroom};
	
    document.getElementById("name").addEventListener("click", function(){
        nickname = document.getElementById("nickname").value;
        document.getElementById("nickname").style.display="none";
        document.getElementById("name").style.display="none";
        connect();
    })

    document.getElementById("chatBtn").addEventListener("click", function(){
        send();
    })

    function connect() {
        ws = new WebSocket("ws://localhost:9999/Where2Park/chat.do");
        ws.onopen = onOpen;
        ws.onclose = onClose;
        ws.onmessage = onMessage;
    }
    function disconnect(){
        ws.send(chatroom + ":" + nickname + " :님이 퇴장하셨습니다");
        ws.onClose();
    }

    function send() {
        msg = document.getElementById("chat-content").value;
        ws.send(chatroom + ":" + nickname + ":" + msg);
        document.getElementById("chat-content").value = "";
    }

    function onOpen(){
        ws.send(chatroom + ":" + nickname + " : 님이 입장하셨습니다.");
    }

    function onMessage(e){
        data = e.data;
        var nick = data.split(":");
        var my_chat_content = document.getElementById("my-chat-content");

        if(nick[1] == nickname){
            var my = document.createElement("div");
            my.setAttribute('class', 'my');
            my.setAttribute('style', 'float : right; width : 90%; text-align:right;');
            my.innerHTML = my.innerHTML + "<br>" + data + "<br>";
            my_chat_content.appendChild(my);
        } else{
            var you = document.createElement("div");
            you.setAttribute('class', 'you');
            you.setAttribute('style', 'float : left; width : 90%; text-align:left;');
            you.innerHTML = you.innerHTML + "<br>" + data + "<br>";
            my_chat_content.appendChild(you);
        }  
    }

    function onClose(){

    }
</script>

</html>