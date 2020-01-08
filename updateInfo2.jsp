<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Shop Homepage - post</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  
  <style>
  
      .checkbutton {
        width: 100px;
        height: 30px;
        font-family: 'Roboto', sans-serif;
        font-size: 11px;
        text-transform: uppercase;
        letter-spacing: 2.5px;
        font-weight: 500;
        color: #000;
        background-color: #fff;
        border: none;
        border-radius: 45px;
        box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
        transition: all 0.3s ease 0s;
        cursor: pointer;
        outline: none;
        }
      
      .checkbutton:hover {
        background-color: #2EE59D;
        box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
        color: #fff;
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
<script>
 var user_data = firebase.database().ref('user_data');

 var data = new Array();
 user_data.on('value', function(snapshot) {
   data.splice(0, data.length);
   snapshot.forEach(function(childSnapshot) {
     var childData = childSnapshot.val();
     data.push(childData.user_id);
   });
 }); // 단지 중복확인 위해서 존재하는 코드
   
 
  //Get a reference to the database service
  var database = firebase.database();
  function writeUserData(user_id, pw, gender, tel, email, name) {

	  var date = new Date();
	   firebase.database().ref('user_data/' + user_id).set({
		   user_id: user_id,
		   user_pw: pw,
		   last_login: date.toLocaleString()
		   });
   		firebase.database().ref('user_profile/' + user_id).set({
   			gender: gender,
   			tel: tel,
   			email: email,
   			name: name
  		});
   
   
  } // end wirteUserData
  
  function add(){
  var user_id = document.getElementById('userID').value;
  var user_pw = document.getElementById('userPW').value;
  var user_gender = document.getElementById('userGender').value;
  var user_tel = document.getElementById('userTel').value;
  var user_email = document.getElementById('userEmail').value;
  var user_name = document.getElementById('userName').value;
  

  if(user_id == ''|| user_pw == ''){
  alert("아이디와 비밀번호를 반드시 입력해주시기 바랍니다.");
  return ;
  }
  
  writeUserData(user_id, user_pw, user_gender, user_tel , user_email, user_name);
  alert('회원가입이 완료되었습니다. 로그인 해 주세요.');
  location.href="login.jsp"
  }// end add()
  
  
  
  function mycheck(){ // 아이디 중복 확인
      var id = document.getElementById("userID").value;
      var checked = 0;
      data.forEach(function(tmp) {
        if(tmp==id){
          document.getElementById("userID").disabled = true;

          alert("다른 회원정보를 수정 가능합니다.");
          checked = 1;
        }
      });
      if(checked==0){
        alert("아이디는 바꿀 수 없습니다.");
      }
  } // end mycheck()
  
  </script>
  </head>
  <body>
  
  <!-- <div><button onclick = "show()">show</button></div> -->
  
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




<script>

document.write("<br>");
</script>

<style>

	#two {
		position: absolute;
	}
</style>


<div class="col-lg-4" id="two"></div>
  	<div class="col-lg-4">
  		<div class="jumbotron" style="padding-top: 20px;">
  			<form>
  				<h3 style="text-align: center;">회원 정보 수정 화면</h3>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="아이디" width="70%" name="name" id="userID">
  					  <!-- <img src="check.jpg" width="30px" height="30px">-->
  					  <div class="wrap">
        <input type="button" class="checkbutton" onclick="mycheck()" value="변경 체크">
      </div>
  				</div>
  				<div class="form-group">
  					<input type="password" class="form-control" placeholder="비밀번호" name="pwd" id="userPW">
  				</div>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="이름" name="name" id="userName">
  				</div>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="성별" name="name" id="userGender">
  				</div>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="010-0000-0000" name="name" id="userTel">
  				</div>
  				<div class="form-group">
  					<input type="text" class="form-control" placeholder="id@email.com" name="name" id="userEmail">
  				</div>
  		<input type="button" class="btn btn-primary form-control" style="width:47%; background-color: #3c4245" onclick="add()" value="수정 완료">
  				
  		<input type="button" class="btn btn-primary form-control" style="width:47%; background-color: #3c4245" onclick="main()" id="join" value="취소">
  			</form>
  		
  		
  		
  		
    			
  </body>
  </html>
</body>
</html>