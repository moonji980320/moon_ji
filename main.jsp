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
	
	/*
		main을 로드하는 가장 중요한 함수
	*/
	allUserdata();
	


	function buy(){
		var ret = confirm("구매하시겠습니까?")

		if(ret == true)
		{
			
			// 아니 이거 왜 갑자기 삭제 안돼
			
		  var database = firebase.database();
		var user_dat = firebase.database().ref('user_post/'+idk);
		user_dat.remove();
				
		

		// 이건 잘됨
		var date = new Date();
		  var database = firebase.database();
		//buy에 정보 삽입
		 firebase.database().ref('user_buy/' + id).push({
		   buy_date: date.toLocaleString()
		   });
		
		
		
		
		alert("구매완료");
		location.reload();
		
		}
		else
		{}
	}




function allUserdata(){

    // 데이터베이스 돌면서
    // 각 데이터에 대해 createDIV 호출
    
var user_data = firebase.database().ref('user_data');
user_data.once('value', function(snapshot) {
  snapshot.forEach(function(childSnapshot) {
    var tmp = childSnapshot.val();
			idk = tmp.user_id;
    allUserProfile(tmp.user_id, tmp.last_login);
  });
});
}

function allUserProfile(id, time){

//table = document.getElementById("infotable");
var user_data = firebase.database().ref('user_post/'+id); // post를 돈다.
user_data.on('value', function(snapshot) {
    var tmp = snapshot.val(); // 접근을 한번해서 그런가보다
    
    obj = document.getElementById("post");
    
	  DIV1 = document.createElement("div");
	  DIV1.setAttribute("id", "target");
	  DIV1.setAttribute("class", "col-lg-4 col-md-6 mb-4");
	  DIV1.setAttribute("style", "width:500px; height:300px;")
	  //DIV1.setAttribute("onclick",  "show()");
		  
	  
	  DIV2 = document.createElement("div");
	  //DIV2.setAttribute("id", "DIV2");
	  DIV2.setAttribute("class", "card h-100");
	  
	  a1 = document.createElement("a");
	  a1.setAttribute("href", "#");
	  
	  //var image = document.createElement("image");
	  //image.setAttribute("src", "http://placehold.it/700x400");
	  
	  DIV3 = document.createElement("div");
	  DIV3.setAttribute("class", "card-body");
	  
		
	  h4 = document.createElement("h4");
	  h4.setAttribute("class", "card-title");
	  
	  
	  //title
	  a2 = document.createElement("a");
	  //a2.setAttribute("href", "show.jsp");
	  a2.setAttribute("onclick", "buy()");
	  a2.innerHTML = tmp.title;
	  
	  //price
	  h5 = document.createElement("h5");
	  h5.innerHTML = tmp.price;
	  
	  //content
	  p = document.createElement("p");
	  p.setAttribute("class", "card-text");
	  p.innerHTML = tmp.content;
	  
	  
	  div4 = document.createElement("div");
	  div4.setAttribute("class", "card-footer");
	  
	  
	  
	  btn1 = document.createElement("button");
	  btn1.setAttribute("class", "btn-1");
	  btn1.setAttribute("onclick", "buy()");
	  btn1.innerHTML = "구매하기";
	  

	  p2 = document.createElement("p");
	  p2.innerHTML = "작성자: " + id;
	  
	  
	  
	  obj.appendChild(DIV1);
	  DIV1.appendChild(DIV2);
	  DIV2.appendChild(a1);
	  //a1.appendChild(image);
	  
	  DIV2.appendChild(DIV3);
	  DIV3.appendChild(h4);
	  h4.appendChild(a2);
	  
	  
	  DIV3.appendChild(h5);
	  DIV3.appendChild(p);

	  DIV3.appendChild(p2);
	  DIV3.appendChild(btn1);

});
}
	



	
	/*
	function buy() { // delclick
		
		var ret = confirm("구매하시겠습니까?");
		// id에 있는 user_buy에 idk정보 넣을 것	
		
		
		if (id == null) {
			 alert("로그인한 상태에서 이용이 가능합니다.");
			 location.href="login.jsp";
		 }
		 else { // 로그인되어있는 경우 
			 if(ret == true) {
				 var database = firebase.database();
				 
				// user_buy에 새 정보를 올린다.
				//firebase.database().ref('user_buy/' + id).set({
			   	//		user_buy: idk
			  	//	 });
					
				 // user_post에 올라가 있는 정보를 삭제한다.
				 var user_post = firebase.database().ref('user_post/'+idk);
				 user_post.remove();
				 
					
				alert("구매완료");
				location.reload();
				}
		 }		
	}
	i*/
	
	
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
 	
 	function mypage() {
 		if (id == null) {
			 alert("로그인한 상태에서 이용이 가능합니다.");
			 location.href="login.jsp";
		 }
		 else {
			 location.href = "infor.jsp";	 
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
            <a class="nav-link" href="#" onclick="mypage()">MyPage</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" onclick="admin()">Admin</a>
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
                var s = now.getMonth()+1 + "월" + now.getDate() + "일" + "<br>" + now.getHours() + " : " + now.getMinutes() + " : " + now.getSeconds();
                
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



      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="hq.jpg" width="900px" height="350px" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="hq2.jpg" width="900px" height="350px" alt="Second slide">
            </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
        
        <br><br><br>

        <div class="row">
        
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
