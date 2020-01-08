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
        	#commentHolder {
        		padding: 9px 11px 5px 11px;
        		border-style: solid 1px;
        	}
        </style>
        
  
  
<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.4.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.4.0/firebase-analytics.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-auth.js"></script>
<script src="https://www.gstatic.com/firebasejs/3.1.0/firebase-database.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyChJiWpMLnBZ3sGGBQ-dsgBEJWOBzC6M2g",
    authDomain: "moonji-b6a80.firebaseapp.com",
    databaseURL: "https://moonji-b6a80.firebaseio.com",
    projectId: "moonji-b6a80",
    storageBucket: "moonji-b6a80.appspot.com",
    messagingSenderId: "427748449063",
    appId: "1:427748449063:web:6df95552dc507135106702"
  };
  // Initialize Firebases
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
</script>





  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">아 나 바 다 MALL</a>
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
            <a class="nav-link" href="login.jsp">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="join.jsp">Join</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="infor.jsp">MyPage</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>



  <!-- Page Content -->
  <div class="container">
  
    <div class="row">

      <div class="col-lg-3">
        <h1 class="my-4">Shopping Mall</h1>
        <!-- 
        <div class="list-group">
          <a href="#" class="list-group-item active">Category 1</a>
          <a href="#" class="list-group-item">Category 2</a>
          <a href="#" class="list-group-item">Category 3</a>
        </div>
         -->
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div class="card mt-4">
          <!--  <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">-->
          <div class="card-body">
            <h3 class="card-title" id="title"></h3><br>
            <h4 id="price"></h4>
            <br><hr>
            <p class="card-text" id="content"></p>
            
            <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
            4.0 stars
            <br>
        <button>구매하기</button>
          </div>
        </div>
        
       
        <!-- /.card -->





<script>
// 이 idk를 main에서 받아와함..
var idk;



var id = sessionStorage.value;






    
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



		<!-- 
		<input type="button" value="post" onclick="add()"> <input type="button" value="취소" onclick="main()">
		 -->
		

		<!-- Review -->

        <div class="card card-outline-secondary my-4">
          <div class="card-header">
            Product Reviews
          </div>
          <div class="card-body">
         
         <div id="post">

		
          </div> <!-- end post -->
        
            <input type="button" class="btn btn-success" onclick="createReview()" value="Leave a Review">
        
        
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
