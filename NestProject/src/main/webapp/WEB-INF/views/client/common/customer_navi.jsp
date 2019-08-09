<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<head>

<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/df37f96d20.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.4.0.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
@media ( min-width : 1200px) {
	#sss {
		width: 100%;
		background: #ffb672;
		height: 100px;
	}
	#center1 {
		width: 400px;
		height: 200px;
		float: left;
		margin-top: 50px;
		padding-top: 80px;
		border: 1px solid #d2d2d2;
	}
}

@media ( min-width : 300px) and (max-width: 1199.98px) {
	#sss {
		width: 100%;
		background: #ffb672;
		height: 100px;
	}
	#cus_s {
		width: 70%;
	}
	#cus_serch {
		height: 72%;
		width: 100%;
		margin: 0 auto;
	}
	#centerbtn {
		padding: 20px;
		height: 80%;
	}
	#footer {
		width: 100%;
		border-top: 1px solid #969696;
		height: 80px;
		bottom: 0;
	}
	#center1, #center2, #center3 {
		width: 33%;
		height: 200px;
		float: left;
		margin-top: 50px;
		padding-top: 80px;
		border: 1px solid #d2d2d2;
	}
}
</style>


</head>





<header style="height: 60px;">
	<div class="container_" style="padding: 0px 20px">
		<div style="width: 120px; display: inline-block; padding-top: 10px;">
			<img style="width: 100%;"
				src="${pageContext.request.contextPath}/resources/images/nest_wlogo.png">
		</div>
		<div id="customer_top_right_btn">
			<button type="button" class="btn btn-outline">노트로이동</button>
			<button type="button" class="btn btn-outline">고객센터</button>
		</div>
	</div>


</header>
<!-----검색창-->
<div style="width: 100%; background: #ffb672; height: 100px;">
	<div class="container_" style="padding-top: 30px;">
		<form style="margin: 0 auto; width: 70%;">
			<div class="input-group mb-3">

				<input type="text" class="form-control"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"
						id="button-addon2"
						style="background: #fff; color: #F28B30; border: lightgray 1px solid;">검색</button>
				</div>

			</div>
		</form>
	</div>
</div>