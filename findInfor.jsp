<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - main</title>

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
      
      
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style>
	#target {
		float:left;
	}
</style>

</head>

	<script>
	

	var user_data = firebase.database().ref('user_data');

	function findPW() {

		var id = document.getElementById("id").value;

		var mycheck = 0;
		user_data.once('value', function(snapshot) {
			snapshot.forEach(function(childSnapshot) {
				var tmp = childSnapshot.val();
				{
				if (tmp.user_id == id) { // 아이디가 존재한다면
					pw.value = "비밀번호는 " + tmp.user_pw;
					alert("비밀번호를 찾았습니다.");
				}
				/*
				else {
					alert("회원 정보가 존재하지 않습니다.");
				}
				*/
				}
			});

		});
	}
	
	</script>


<body>


  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="main.jsp">아 나 바 다 MALL</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="main.jsp">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.jsp">Login</a> <!-- 로그인이 되어있는 경우엔 로그아웃 페이지로 이동 -->
          </li>
          <li class="nav-item">
            <a class="nav-link" href="join.jsp">Join</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="infor.jsp">MyPage</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" onclick="admin()">Admin</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


  <!-- Page Content -->


<div class="container" style="padding:100px; align:center;">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="check" method="post">
					<h3 style="text-align: center;">비밀번호 찾기</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="name" id="id">
					</div>

					<input type="button" class="btn btn-primary form-control"
						style="width: 100%;" onclick="findPW()" value="비밀번호 찾기"> <br>
					<br>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="비밀번호"
							name="pwd" id="pw" disabled>
					</div>
				</form>
			</div>
		</div>
	</div>

    
        <div id="post">
        
        </div>

          
  <!-- /.container -->
  
  <!-- Footer -->
  
  <footer class="py-5 bg-dark">
  <!--   <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div> -->
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
