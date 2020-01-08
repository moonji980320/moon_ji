<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Shop Homepage - Login</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">


  
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.5.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.4.0/firebase-analytics.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyDtVDfyIoSwIoXMOqob4jswBkP7tZ3-oQk",
    authDomain: "anabada-46823.firebaseapp.com",
    databaseURL: "https://anabada-46823.firebaseio.com",
    projectId: "anabada-46823",
    storageBucket: "anabada-46823.appspot.com",
    messagingSenderId: "534879323962",
    appId: "1:534879323962:web:06a8f5306393260e553203"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();


</script>
  
<style>
.container {
	align: center;
}
</style>
</head>

<script>
	var user_data = firebase.database().ref('user_data');

	function gosignup() {
		location.href = "join.jsp";
	}

	function mylogin() {
		var id = document.getElementById("id").value;
		var pw = document.getElementById("pw").value;

		var mycheck = 0;
		user_data.once('value', function(snapshot) {
			snapshot.forEach(function(childSnapshot) {
				var tmp = childSnapshot.val();
				if (tmp.user_id == id) {
					if (tmp.user_pw == pw) {
						sessionStorage.value = tmp.user_id;

						alert("로그인에 성공하였습니다.");
						mycheck = 1;
						location.href = "main.jsp"
					} else {
						alert("잘못된 비밀번호입니다");
						mycheck = 1;
					}
				}
			});
			if (mycheck == 0) {
				alert("존재하지 않는 아이디입니다");
			}
		});
	}
</script>




<div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron" style="padding-top: 20px;">
			<form action="check" method="post">
				<h3 style="text-align: center;">로그인 화면</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디"
						name="name" id="id">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호"
						name="pwd" id="pw">
				</div>

				<input type="submit" class="btn btn-primary form-control"
					style="width: 32%;" value="FIND"> <input type="button"
					class="btn btn-primary form-control" style="width: 32%;"
					onclick="mylogin()" value="로그인"> <input type="button"
					class="btn btn-primary form-control" style="width: 32%;"
					onclick="gosignup()" id="join" value="회원가입">
			</form>
		</div>
	</div>
</div>
</body>
</html>