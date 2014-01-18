/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


$(function() {
		
		$(".submit").click(function() {
	
		/*var name = $("#name").val();		*/
		var comment = $("#comment").val();
	    var dataString = /*'name='+ name + */'&comment=' + comment;
		
		if(/*name=='' || */comment=='')
	    {
	    	 $('.submit').attr('disabled', true);
                 $('#comment').focus();
               
	    } else {
			/*$("#flash").show();
			$("#flash").fadeIn(400).html('<img src="./img/ajax-loader.gif" align="absmiddle">&nbsp;<span class="loading">Loading ...</span>');
                        */
			$.ajax({
				type: "POST",
	  			url: "ajaxshoutbox.jsp",
	   			data: dataString,
	  			cache: false,
	  			success: function(html){	 
	  				$("ol#update").append(html);
	  				$("ol#update li:last").fadeIn("slow");
					/*$("#name").val('');*/
					$("#comment").val('');	  				
					$("ol#update li:last").focus();	 
	  				/*$("#flash").hide();*/
                                        /*TO DO: focus sull'ultimo messaggio appeso*/
                                        
	  			}
	 		});		
			return false;
	    }
	    });
	});
