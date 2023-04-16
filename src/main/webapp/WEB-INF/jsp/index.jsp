<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Send Message</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <style>
.card-body-black {
  background-color: black;
}
.container {
	margin-top: 0vh;
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
			src="https://user-images.githubusercontent.com/42469977/232260360-01d7d6f1-3174-4999-9ccf-cd8db86953cd.gif"
			alt="Logo" style="width: 300px; height: auto;">
    <div class="container">
        <h1>Send Message</h1>
        <form method="post" action="${pageContext.request.contextPath}/send">
            <div class="form-group">
                <label for="message">Message:</label>
                <input type="text" class="form-control" id="message" name="message" placeholder="Enter message">
            </div>
            <button type="submit" class="glow-on-hover">Send Message</button>
        </form>
    </div>
    <br>
    <div class="container">
<button class="glow-on-hover" onclick="location.href='${pageContext.request.contextPath}/'">Go Back</button>
</div>
    
    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
