<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Awhy</title>
<style type="text/css">
 @import url(../style.css);
</style>
	<script type="text/javascript" src="./js/jquery.js"></script>
        <script type="text/javascript" src="./js/function.js"></script>	
        <script type="text/javascript">

$(document).ready(function() {
    
     $('#content').hide();
     $('#header').click(function() {
         
          $('#content').animate({
               height: 'toggle'
               }, 600
          );
          $('#comment').focus();
     });
        
});

 $(function(){
 
     $('#comment').keyup(function(){
          if ($(this).val() == '') { //Check to see if there is any text entered
               //If there is no text within the input ten disable the button
               $('.submit').attr('disabled', true);
               
          } else {
               //If there is text in the input, then enable the button
               $('.submit').attr('disabled', false);
          }
     });
});
        </script> 
        
</head>
<body>

<div  id="main">
    
    <div id="header"><img src="./img/logo.png" alt="Awhy logo"/> </div>
    <!--<div id="flash" align="center"  ></div>-->
        <div id="content">
        <ol  id="update" class="timeline"></ol>
        <div id="form">
            <form action="#" method="post">
                <!--<label>
                    <span class="titles">Nome</span><span class="star">*</span>
                    <input type="text" name="name" id="name"/>
                </label>
                <br/>-->
                <label>
                    <span class="titles">Messaggio<span class="star">*</span></span>
                    <br/>
                    <input type='text' name='comment' id='comment' /> 
                    
                </label>
                <br/>
                
                <input type="submit" class="submit" disabled="disabled" value=" Invia " />
            </form>
        </div>
    </div>

</div>
</body>
</html>