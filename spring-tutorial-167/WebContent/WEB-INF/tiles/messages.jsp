<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	
<div id="messages">


</div>


<script type="text/javascript">
<!-- 
    var timer;
    
    function error(data){
    	$("#button"+id).data("Value","Send.");
    	alert("Error: unable to send message")
    	
    }

    function showReply(i) {
        stopTimer();
        $("#form"+i).toggle();
    }
    
    function sendMessage (i, name, email) {
    	var text = $("#" + id).val();
    	
    	$("#button"+id).prop("Value","Sending...");
    	$.ajax ({
    	        type: "POST",
    	        url: "<c:url value='/messagesend'/>",
    	        data: JSON.stringify({"content":text, "id":id}),
    	        success:sent,
    	        error: error,
    	        contentType:"application/json",
    	        dataType: "json"
    	    });  	
    }

function showMessages(data) {
		
		$("div#messages").html("");
	
		for(var i=0; i<data.messages.length; i++) {
			var message = data.messages[i];
			
			var messageDiv = document.createElement("div");
			messageDiv.setAttribute("class", "message");
			
			var subjectSpan = document.createElement("span");
			subjectSpan.setAttribute("class", "subject");
			subjectSpan.appendChild(document.createTextNode(message.subject));
			
			var contentSpan = document.createElement("span");
			contentSpan.setAttribute("class", "messagebody");
			contentSpan.appendChild(document.createTextNode(message.content));
			
			var nameSpan = document.createElement("span");
			nameSpan.setAttribute("class", "name");
			nameSpan.appendChild(document.createTextNode(message.name + " ("));
			
			var link = document.createElement("a");
			link.setAttribute("class","replylink");
			link.setAttribute("href","#");
			link.setAttribute("onclick","showReply(" + i + ")");
			link.appendChild( document.createTextNode(message.email));
			nameSpan.appendChild(link);
			nameSpan.appendChild(document.createTextNode(")"));
			
			var replyForm = document.createElement("form");
			replyForm.setAttribute("class", "replyform");
			replyForm.setAttribute("id", "form" + i);
			
			var textarea = document.createElement("textarea");
			textarea.setAttribute("class","replyarea");
			textarea.setAttribute("id","textbox"+i);
			
			var replyButton= document.createElement("input");
			replyButton.setAttribute("class", "replybutton");
			replyButton.setAttribute("type", "button");
			replyButton.setAttribute("value", "Reply");
			replyButton.onclick = function(j, name, email) {
				return function() {
					sendMessage(j, name, email);
				}
			}(i, message.name, message.email);
			
			
			replyForm.appendChild(textarea);
			replyForm.appendChild(replyButton);
			
			messageDiv.appendChild(subjectSpan);
			messageDiv.appendChild(contentSpan);
			messageDiv.appendChild(nameSpan);
			messageDiv.appendChild(replyForm);
			
			$("div#messages").append(messageDiv); 
		}
	}

	function onLoad() {
		updatePage();
		startTimer();
	}
	
	function stopTimer() {
		window.clearInterval(timer);
	}
	
	function startTimer() {
		timer = window.setInterval(updatePage, 100000);
	}
	
	function updatePage() {
		$.getJSON("<c:url value="/getmessages"/>", showMessages);
	}

	$(document).ready(onLoad); 
//-->
</script>
