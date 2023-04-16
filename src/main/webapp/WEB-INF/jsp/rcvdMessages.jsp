<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Received Messages</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
      integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
      crossorigin="anonymous">
<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<style>
    .media {
        margin-bottom: 20px;
    }
    .media-body {
        background-color: black;
        border-radius: 5px;
        padding: 10px;
    }
    .media-heading {
        font-weight: bold;
        margin-bottom: 5px;
    }
</style>
            <style>
.card-body-black {
  background-color: black;
}
.container {
	margin-top: 40vh;
}
.form-control {
	width: 50%;
}
#travelers-img {
	position: fixed;
	bottom: 0;
	right: 0;
	height: 200px;
}
html,
body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    background: #000;
	color: #aaa;
}
.glow-on-hover {
    width: 220px;
    height: 50px;
    border: none;
    outline: none;
    color: #fff;
    background: #111;
    cursor: pointer;
    position: relative;
    z-index: 0;
    border-radius: 10px;
}
.glow-on-hover:before {
    content: '';
    background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5, #002bff, #7a00ff, #ff00c8, #ff0000);
    position: absolute;
    top: -2px;
    left:-2px;
    background-size: 400%;
    z-index: -1;
    filter: blur(5px);
    width: calc(100% + 4px);
    height: calc(100% + 4px);
    animation: glowing 20s linear infinite;
    opacity: 0;
    transition: opacity .3s ease-in-out;
    border-radius: 10px;
}
.glow-on-hover:active {
    color: #000
}
.glow-on-hover:active:after {
    background: transparent;
}
.glow-on-hover:hover:before {
    opacity: 1;
}
.glow-on-hover:after {
    z-index: -1;
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #111;
    left: 0;
    top: 0;
    border-radius: 10px;
}
@keyframes glowing {
    0% { background-position: 0 0; }
    50% { background-position: 400% 0; }
    100% { background-position: 0 0; }
}
input[type="text"], input[type="password"] {
  background-color: #b7b9bb;
}
</style>
</head>
<body>
<img
			src="https://user-images.githubusercontent.com/42469977/232260443-a7f78e00-7e89-4b82-b78c-df9f002d03df.gif"
			alt="Logo" style="width: 300px; height: auto;">
    <div class="container">
    
        <h1>Received Messages</h1>
        <c:forEach items="${messages}" var="message">
            <div class="media">
                <div class="media-body">
                    <h6 class="media-heading">${message.id}</h6>
                    <p>${message.content}</p>
                    <p><small>${message.date}</small></p>
                </div>
            </div>
            <hr>
        </c:forEach>
    </div>
    <div class="container">
<button type="button" class="glow-on-hover" onclick="location.href='${pageContext.request.contextPath}/'">Go Back</button>
    </div>
</body>
</html>
