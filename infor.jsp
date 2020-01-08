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
      
      /* GENERAL BUTTON STYLING */
      button,
      button::after {
        -webkit-transition: all 0.3s;
          -moz-transition: all 0.3s;
        -o-transition: all 0.3s;
          transition: all 0.3s;
      }
      
      button {
        background: none;
        border: 1px solid #bbbbbb;
        border-radius: 5px;
        color: #bbbbbb;
        display: block;
        font-size: 20px;
        font-weight: bold;
        margin: 5px;
        padding: 5px;
        position: relative;
        text-transform: uppercase;
      }
      
      button::before,
      button::after {
        background: #3c4245;
        content: '';
        position: absolute;
        z-index: -1;
      }
      
      button:hover {
        color: #2ecc71;
      }
      
      /* BUTTON 1 */
      .btn-1::after {
        height: 0;
        left: 0;
        top: 0;
        width: 100%;
      }
      
      .btn-1:hover:after {
        height: 100%;
      }
      
      
      /* GENERAL BUTTON STYLING */
      button,
      button::after {
        -webkit-transition: all 0.3s;
          -moz-transition: all 0.3s;
        -o-transition: all 0.3s;
          transition: all 0.3s;
      }
      
      button {
        background: none;
        border: 1px solid #bbbbbb;
        border-radius: 5px;
        color: #bbbbbb;
        display: block;
        font-size: 20px;
        font-weight: bold;
        margin: 5px;
        padding: 5px;
        position: relative;
        text-transform: uppercase;
      }
      
      input::before,
      input::after {
        background: #3c4245;
        content: '';
        position: absolute;
        z-index: -1;
      }
      
      input:hover {
        color: #2ecc71;
      }
      
      /* BUTTON 1 */
      .btn-1::after {
        height: 0;
        left: 0;
        top: 0;
        width: 100%;
      }
      
      .btn-1:hover:after {
        height: 100%;
      }
      
  
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
    <style>
      span {
        font-size: 23px;
        
      }
      span.d {
      
        font-family: "Nanum Gothic", sans-serif;
        font-weight: bold;
        test-align: center;
        font-size: 40px;
        color: #5f6769;
      }
      
      span.a {
      font-family: "Nanum Gothic", sans-serif;
        font-weight: bold;
        test-align: center;
        font-size: 40px;
        color: black;
      }
  </style>
  
<style>
	#target {
		float:left;
	}
</style>

</head>

<body>
	<script>

	var idk;
	var id = sessionStorage.value;
	
	function buy() { // add

		var ret = confirm("구매하시겠습니까?");
		// id에 있는 user_buy에 idk정보 넣을 것	
		
		
		if (id == null) {
			 alert("로그인한 상태에서 이용이 가능합니다.");
			 location.href="login.jsp";
		 }
		 else { // 로그인되어있는 경우 
			 if(ret == true) {
					
					var user_post = firebase.database().ref('user_post/'+idk);
					user_post.remove();
					
					
					firebase.database().ref('user_data/' + id).set({
						   user_buy: idk
					});
					
				alert("구매완료");
				location.reload();
				}
		 }		
	} // end buy
	
	
	
	function admin() {
        if(id == "admin")
        {
        	location.href = "admin.jsp";
        }
        else{
            alert("관리자 권한이 없습니다.");
        }
 	}
 
 	function goWrite() {
		 if (id == null) {
			 alert("로그인한 상태에서 이용이 가능합니다.");
			 location.href="login.jsp";
		 }
		 else { 
			 location.href = "post.jsp";	 
		 }
	 
 	}
 
 	function goInfor() {
        location.href = "infor.jsp";
	 }

 	function goJoin() {
		 location.href = "join.jsp";
 	}
	
 	function logined() {
 		if (id == null) {
			 alert("로그인한 상태에서 이용이 가능합니다.");
			 location.href="login.jsp";
		 }
		 else {
			 //location.href = "write3.jsp";
			 //createDIV();
			 location.href = "post.jsp";
		 }
 	}
 	
 	
	</script>

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
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
		<br>
        <span class="a">아<span class="d">껴쓰고
        <span class="a">나<span class="d">눠쓰고
        <span class="a">바<span class="d">꿔쓰고
        <span class="a">다<span class="d">시쓰고
        <br>
        </p>
        
        
        <script>
        	
        document.write("<h5>" + id +"님 환영합니다."+"</h5>")
        
                  
        </script>
        
        
        <div id="clock"></div>
        
        <script>
        // 시계
        function setClock() {
                var now = new Date();
                var s = now.getHours() + " : " + now.getMinutes() + " : " + now.getSeconds();
                document.getElementById("clock").innerHTML = s;

                setTimeout("setClock()", 1000);
          }
       setClock();
        
        
        </script>
        
        
        
        <br>
        <div class="container">
        <button class="btn-1" onclick="logined()">POSTING</button>
        </div>
        
      </div>
      <!-- /.col-lg-3 -->


<div id="infor" style="margin:50px; padding:50px;">

<form action="update" method="post">
<table class="table">
		<tr>
				<td>
					<label for="name">이름
				</td>
				<td>
					<input type="text" name="name" id="name" size="20px">
				</td>
		</tr>
		<tr>
			<td>
				<label for="gender">성별
			</td>
			<td>
				<input type="text" name="gender" id="gender" size="20px">
			</td>
		</tr>
		<tr>
				<td>
					<label for="major">전화번호
				</td>
				<td>
					<input type="text" name="tel" id="tel" size="20px">
				</td>
			</tr>
			<tr>
			<td>
				<label for="grade">이메일
			</td>
			<td>
				<input type="text" name="email" id="email" size="20px">
			</td>
        </tr>
        <tr>
			<td>
				<label for="grade">최근 로그인
			</td>
			<td>
				<input type="text" name="late" id="late" size="20px">
			</td>
        </tr>
       
	</table>
	<input type="submit" class="btn-1" style="postion: absolute; left:200px;" value="회원정보 수정">

</form>

<script>
var id = sessionStorage.value;
var user_data = firebase.database().ref('user_data');
//var divobj = document.getElementById("data");
var date = new Date();

user_data.once('value', function(snapshot) {
	snapshot.forEach(function(childSnapshot) {
		var childData = childSnapshot.val();
		if(childData.user_id==id){
			//divobj.innerHTML+="최근 로그인 : "+childData.last_login+"<br>";
			
			var user_data_db = firebase.database().ref('user_data/'+childSnapshot.key);
			user_data_db.set({
				user_id : childData.user_id,
				user_pw: childData.user_pw,    	  
				last_login: date.toLocaleString()
			});
    }
  });
});

var user_name = document.getElementById("name");
var gender = document.getElementById("gender");
var tel = document.getElementById("tel");
var email = document.getElementById("email");

user_name.disabled = true;
gender.disabled = true;
tel.disabled = true;
email.disabled = true;
late.disabled = true;

var user_profile = firebase.database().ref('user_profile/'+id);
user_profile.once('value',function(snapshot){ // 읽어오기
	var data=snapshot.val();
	user_name.value=data.name;
	gender.value=data.gender;
	tel.value=data.tel;
	email.value=data.email;
	late.value=date.toLocaleString()
	
});
function main() {
	location.href = "main.jsp";
}

</script>
<br>
<!-- <button class="btn-1" onclick="main()" >메인으로</button> -->
</div>


</body>
</html>