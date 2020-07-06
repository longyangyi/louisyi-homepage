<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>易哟喂</title>
</head>
<body lang=ZH-CN bgcolor="#d0d0d0">
	<div>
		<p align=center>
			<b><span style='font-size: 20pt; color: #008B8B'>Welcome
					to Louis Yi</span></b>
		</p>
		
		<form method='post' name='leaveMessageForm'>
			<textarea name='messageText'
				placeholder='给我留言吧，仅我可见！'
				cols='80' rows='5'></textarea><br>
			<input type='button' value='留言' onclick='leaveMessage()'></input>
		
		</form>

		<p align=right>
			<span style='font-size: 15pt'>（其实这里什么都没有！）</span>
		</p>
		
		<p align=center>
			<img width=554 height=554 src="index.files/image001.jpg">
		</p>
		
		<p align=center>
			<span style='font-size: 13pt;color:#FF3030'>+Q 1875308109</span>
		</p>
		
		<p align=right>
			<a href="index.files/audio.mp3"><span style='font-size: 19pt'>试音</span></a>
		</p>

		<p>
		<ul>
			<span style='font-size: 15pt'>rom for whyred</span>
			<li><img src='index.files/file.svg'> <a
				href='http://www.louisyi.top:443/file/PixelExperience_whyred-10.0-20200116-0722-update-20200208-1928-OFFICIAL.zip'>PixelExperience_whyred-10.0-20200116-0722-update-20200208-1928-OFFICIAL.zip</a>
			</li>
			<li><img src='index.files/file.svg'> <a
				href='http://www.louisyi.top:443/file/AOSiP-10-Alpha-whyred-20200113-fdm.zip'>AOSiP-10-Alpha-whyred-20200113-fdm.zip</a>
			</li>
		</ul>
		</p>

	</div>
	<script>
		function leaveMessage(){
			var xmlHttp=new XMLHttpRequest();
			var text=leaveMessageForm.messageText.value;
			var url='LeaveMessageServlet?messageText=' + text;
			xmlHttp.open('POST',url,true);
			xmlHttp.send();
			alert("留言成功！");
		}
	</script>
</body>
</html>