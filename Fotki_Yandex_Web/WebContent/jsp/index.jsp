<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
	<title>Yandex Fotki</title>
</head>
<body>
	<h1>Hello World!</h1>
	<button>Hide</button>
	<br/>
	<div class = "photo"></div>
	<div></div>


	<script type = "text/javascript">
	$(document).ready(function (){
		$("button").click(function(){
			 $.getJSON("https://api-fotki.yandex.ru/api/users/erzhikk89/albums/?format=json&callback=?", function(result){
					var albums = result.entries;
					var alb_count = albums.length;
					var html = "";
					var html_image = "";
					console.log(alb_count);
					
					for(var i = 0; i <= 1; i++){
						var alb = albums[i];
						var title = alb.title;
						var image = alb.img.S.href;
						html += "<div class=\"album\"><img src='" + image + "'/><p>" + title + "</p></div>";
						
						
						
						
					}
					html = "<div>" + html + "</div>";
					$(".photo").append(html);
					
		        });
		});
	});
	
	</script>
</body>
</html>