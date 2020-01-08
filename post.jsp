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
        display: inline;
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
  

<script>
	var id = sessionStorage.value;
	var date = new Date();
	
	
	 
	  //Get a reference to the database service
	  var database = firebase.database();
	  function writeUserData(title, price, content) {

		  var date = new Date();
		   firebase.database().ref('user_post/' + id).set({
			   post_date: date.toLocaleString(),
			   num: 1,
			   title: title,
			   price: price,
			   content: content
			   });
	   
	   
	  } // end wirteUserData
	  
	  function add(){
	  var title = document.getElementById('title').value;
	  var price = document.getElementById('price').value;
	  var content = document.getElementById('content').value;
	  

	  // 서블릿으로 옮길 수 있을듯
	  if(title == ''|| price == '' || content == ''){
	  alert("Fill inputs before clicking ADD button");
	  return ;
	  }
	  
	  writeUserData(title, price, content);
	  alert('상품이 등록되었습니다.');
	  location.href="main.jsp"
	  }// end add()
	
	/*
	<div id="commentHolder" style="border-style: solid">
    <div class="commentBodyContainer">
    <textarea name="commentBody" rows="4" cols="50" placeholder="리뷰를 입력하세요"></textarea><br>
    
    
    </div>
    <br>
    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
    <hr>
    </div>
    */
    
	function createReview() {
		
    	 var obj = document.getElementById("post");
		 var div1 = document.createElement("div");
		 div1.setAttribute("id", "commentHolder");
		 div1.setAttribute("style", "border-style: solid");
		 
		 var div2 = document.createElement("div");
		 div2.setAttribute("class", "commentBodyContainer");
		 
		 var textarea = document.createElement("textarea");
		 textarea.setAttribute("cols", 50);
		 textarea.setAttribute("rows", 4);
		 
		 var small = document.createElement("small");
		 small.setAttribute("class", "text-muted");
		 small.innerHTML = date.toLocaleString();
		 var hr = document.createElement("hr");
		 
		 obj.appendChild(div1);
		 div1.appendChild(div2);
		 div2.appendChild(textarea);
		 div2.appendChild(small);
		 div1.appendChild(hr);
		 
   	  
		 
	}
    
    
    function main() {
    	location.href = main.jsp;
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
        
      </div>
      <!-- /.col-lg-3 -->



      <div class="col-lg-9">

        <div class="card mt-4">
          <!--  <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">-->
          <div class="card-body">
            <h3 class="card-title">Product Name <br> <input type="text" id="title"></h3>
            <h4>Price <br> <input type="text" id="price"></h4>
            <br>
            <p class="card-text">Content<br><textarea cols="50" rows="10" id="content"></textarea></p>
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
          </div>
        </div>
        <!-- /.card -->
        
        
        <button class="btn-1" onclick="add()">올리기</button>
        
        <button class="btn-1" onclick="main()">취소</button>
        
        
       

		<!-- Review -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Product Reviews
          </div>
          <div class="card-body">
            <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>
            <small class="text-muted">Posted by Anonymous on 3/1/17</small>
            <hr>
            <a href="#" class="btn btn-success" onclick="createReview()">Leave a Review</a> -->
         
         <div id="post">
        
        <!-- 
	<div id="commentHolder" style="border-style: solid">
    <div class="commentBodyContainer">
    <textarea name="commentBody" rows="4" cols="50" placeholder="리뷰를 입력하세요"></textarea><br>
    
    
    </div>
    <br>
    <small class="text-muted">Posted by Anonymous on 3/1/17</small>
    <hr>
    </div>
    
    <br>-->
    <input type="button" class="btn btn-success" onclick="createReview()" value="Leave a Review">
        
         
         
          </div> <!-- end post -->
        
        
        </div>
        </div>
        
        
        <!-- /.card -->

      </div>
      <!-- /.col-lg-9 -->

    </div>

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
