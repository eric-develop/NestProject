<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<title>공지사항 </title>
<head>
<style>

@media ( min-width : 300px) and (max-width: 1199.98px) {
	#centerbtn_0{
 height: 300px;
	width: 100%;
	padding: 10px;
}#cus_table_div{
width: 100%;
height: 69%;
overflow: auto;
}#cus_table_div_div{
	height: 100%;
}
}
@media ( min-width : 1200px) {
	#centerbtn_0{
   height: 300px;
	margin: 0 auto;
	width: 1200px;
	margin-top: 20px;
    
}#cus_table_div{
margin: 0 auto;
width: 1200px;
overflow: auto;
}#cus_table_div_div{
	height: 600px;
	padding: 50px 0px;
}
}




</style>
</head>
<body>
<c:import url="../../common/customer_navi.jsp"/>
    <!----------->
    <div id="centerbtn_0">
        <p style="text-align: left; font-size: 12px;">고객센터 &nbsp; > &nbsp; 공지사항<p>
                <!--사이트 맵-->
                <h4 style="text-align: center; margin-top: 50px;">공지사항</h4>
             


    </div>


    <!----------공지사항 테이블------->
    <div id="cus_table_div">

        <div id="cus_table_div_div" >
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col-md-1">No</th>
                        <th scope="col-md-7">제목</th>
                        <th scope="col-md-2">날짜</th>
                        <th scope="col-md-2">조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>네스트 공지사항입니다.</td>
                        <td>2019/00/00</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>네스트 공지사항입니다.</td>
                        <td>2019/00/00</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>네스트 공지사항입니다.</td>
                        <td>2019/00/00</td>
                        <td>10</td>
                    </tr>
 
                </tbody>
            </table>
        </div>
    </div>
    <!------footer-->
    <footer>
        <div id="footer" class="container_">


            <p id="text"><br>ⓒ 2019 Nest Corporation All rights reserved</p>
        </div>

    </footer>
</body>

</html>