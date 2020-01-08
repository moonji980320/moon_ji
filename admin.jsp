
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
  
   .table {
      border-collapse: collapse;
      border-top: 3px solid #168;
      margin: 50px;
      padding: 20px;
    }  
    
    .table th {
      color: #168;
      background: #f0f6f9;
      text-align: center;
    }
    
    .table th, .table td {
      padding: 10px;
      border: 1px solid #ddd;
    }
    .table th:first-child, .table td:first-child {
      border-left: 0;
    }
    .table th:last-child, .table td:last-child {
      border-right: 0;
    }
    .table tr td:first-child{
      text-align: center;
    }
    .table caption{caption-side: bottom; display: none;}
    
    
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
        border: 1px solid #3c4245;
        border-radius: 5px;
        color: #bbbbbb;
        display: block;
        font-size: 15px;
        font-weight: bold;
        margin: 10px;
        padding: 10px;
        position: relative;
        text-transform: uppercase;
        float: left;
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
      
  </style>
  
</head>

<script>


var idk;
allUserdata();



function delclick(){
	var ret = confirm("정말 삭제하시겠습니까?");

	if(ret == true)
	{
	var user_dat = firebase.database().ref('user_data/'+idk);
	user_dat.remove();
	var user_prof = firebase.database().ref('user_profile/'+idk);
	user_prof.remove();
	alert("삭제가 완료되었습니다.");
	
	location.href="admin.jsp";
	
	}
	else
	{}
	
}

function allUserdata(){
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
	table = document.getElementById("infotable");
	var user_data = firebase.database().ref('user_profile/'+id);
	user_data.on('value', function(snapshot) {
	      var tmp = snapshot.val(); // 접근을 한번해서 그런가보다
	      
	      new_tr = document.createElement("tr");
	      
	      td_id = document.createElement("td");
	      td_id.innerHTML = id;
	      new_tr.appendChild(td_id);
	      
	      td_name = document.createElement("td");
	      td_name.innerHTML = tmp.name;
	      new_tr.appendChild(td_name);
	      
	      td_gender = document.createElement("td");
	      td_gender.innerHTML = tmp.gender;
	      new_tr.appendChild(td_gender);
	      
	      td_time = document.createElement("td");
	      td_time.innerHTML = time;
	      new_tr.appendChild(td_time);
	      
	      var del_btn = document.createElement("button");
	      del_btn.setAttribute("class", "btn-1");
	      del_btn.innerHTML="삭제";
	      del_btn.setAttribute("onclick", "delclick()");
	      new_tr.appendChild(del_btn);
	      
	      table.appendChild(new_tr);
		});
	}

</script>

<body>

<form action="search" method="post">
<table class="table" id="infotable" border=1>
<tr id="align">
<td>ID</td>
<td>이름</td>
<td>성별</td>
<td>최근 접속시간</td>
</tr>
</table>
  <input type="submit" style="position: absolute; left: 80px;" value="DB검색">
  </form>
  
  
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
  
  <br>
  



<br>
<!-- <button class="btn-1" onclick="main()">메인으로</button> -->
</body>
</html>