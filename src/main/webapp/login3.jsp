<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content="SignUp, Login, Register">
<meta name="keywords" content="Sign up, Sign in">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale-1.0">
 <title>Login</title>
  <!--Bootstrap Css-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <!--Font-aweome-->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  <!--Custom Css-->
  <link type="text/css" rel="stylesheet" href="resources/css/admin.css" />

</head>

<body>
  <section class="login_section">
    <div class="container outer_container accounts_container">
      <div class="row h-100">
        <div class="col col-sm-12 col-md-12 col-lg-8 m-0 p-0 w-100 h-100 accounts_col">
          <div class="accounts_image w-100 h-100">
            <img src="resources/img/pro2.jpg" alt="accounts_image" class="img-fluid w-100 h-100" />
          </div>
          <!--accounts_image-->
        </div>
        <!--account_col-->
        <div class="col col-sm-12 col-md-12 col-lg-4 m-0 p-0 accounts_col">
          <div class="accounts_forms signup_form w-100 h-100" id="signup">
            <div class="title mt-4 p-4 w-100">
              <h1>여기가 내집</h1>
              <p class="mt-3">관리자 추가 페이지. </p>
            </div>
            <!--title-->
            <form action="login.do" method="post" class="form w-100 p-4">
              <div class="form-group">
                <label for="email">Name</label>
                <input type="text" name="name" class="form-control" id="name" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <!--form-row-->
              <div class="form-group">
                <label for="email">ID</label>
                <input type="text" name="id" class="form-control" id="id" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <div class="form-group">
                <label for="signup_password">Password</label>
                <i class="fa fa-eye-slash" id="eye_icon_signup"></i>
                <input type="password" name="pass" class="form-control" id="signup_password" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <div class="form-group">
                <label for="cpass">Confirm Password</label>
                <input type="password" name="cpass" class="form-control" id="cpass" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-primary register_btn w-100">추가하기</button>
              </div>
            </form>

            <div class="already_member_box">
              <p class="text-center" id="to_login">I am already member</p>
            </div>
          </div>
          <!--accounts_forms-->
          <div class="accounts_forms  w-100 h-100" id="login">
            <div class="title  mt-4 p-4 w-100">
              <h1>여기가 내집</h1>
              <p class="mt-3">관리자 로그인 페이지. </p>
            </div>
            <!--title-->
            <form action="login.do" method="post" class="form w-100 p-4">
              <div class="form-group">
                <label for="email">ID</label>
                <input type="text" name="id" class="form-control" id="id" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <div class="form-group">
                <label for="login_password">Password</label>
                <i class="fa fa-eye-slash" id="eye_icon_login"></i>
                <input type="password" name="password" class="form-control" id="password" onfocus="labelUp(this)" onblur="labelDown(this)" required />
              </div>
              <div class="form-group mb-0">
                <button type="submit" class="btn btn-primary register_btn w-100">LOGIN</button>
              </div>
            </form>

            <div class="already_member_box d-flex justify-content-between px-4">
              <span class="text-center" id="to_signup">Create an account?</span>
              <span class="text-center">Forgot password</span>
            </div>
          </div>
          <!--accounts_forms-->
        </div>
        <!--account_col-->
      </div>
      <!--row-->
    </div>
    <!--accounts_container-->
  </section>
  <!--login_section-->

  <!-- jQuery library -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <!-- Popper JS -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <!-- Latest compiled JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <!--Custom Js-->
  <script type="text/javascript" src="resources/js/admin.js"></script>

</body>

</html>