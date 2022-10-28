<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkCustomerInfo() {
		
	    var regExpUserid = /^[a-z|A-Z|]*$/
		var regExpUsername = /^[가-힣]*$/
		var regExpUsertel = /^\d{3}-\d{3,4}-\d{4}$/
		var regExpUseraddress = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|0-9]*$/
	    
		var form = document.customerInfo
		
		var id = form.id.value
		var name = form.name.value
		var tel = form.tel.value
		var address = form.address.value
		
		if(!regExpUserid.test(id)) {
			alert("아이디는 영문으로 입력해 주세요.")
			form.id.select()
			return
		}
		
		if(!regExpUsername.test(name)) {
			alert("이름은 한글만으로 입력해 주세요.")
			form.name.select()
			return
		}
		
		if(!regExpUsertel.test(tel)) {
			alert("연락처 입력을 확인해 주세요.")
			form.tel.select()
			return
		}
		
		if(!regExpUseraddress.test(address)) {
			alert("주소 입력을 확인해 주세요.")
			form.address.select()
			return
		}
		
		form.submit();
	}
</script>
<body>

	<h3>아래의 항목을 입력 후 학인 버튼을 누르세요!</h3>
	
	<form action="insertTest02.jsp" name = "customerInfo">
		<table>
		<tr>
			<td>사용자ID : </td>
			<td><input type = "text" name = "id" size = "10" value = "qwer"></td>
		</tr>
		
		<tr>
			<td>성명 : </td>
			<td><input type = "text" name = "name" size = "10" value = "김한별"></td>
		</tr>
		
		<tr>
			<td>전화번호 :</td>
			<td><input type = "text" name = "tel" size = "30" value = "01045236658"></td>
		</tr>
		
		<tr>
			<td>주소 :</td>
			<td><input type = "text" name = "address" size = "70" value = "서울특별시"></td>
		</tr>
		
		<tr>		
			<td></td>
			<td><input type = "button" value = "입력" onclick = "checkCustomerInfo()"></td>
		</tr>
		
		</table>
	</form>

</body>
</html>