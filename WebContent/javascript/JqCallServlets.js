/**
 * JQUERY javascript library http://jquery.com/download
 */

function CallingServlets(myToken){
	debugger;
	alert(myToken);
	var access_parameters = {
	        access_token: myToken,
	        scope: 'public_content'
	    };
	var tag_name = "party";
	//var apiURL = "https://api.instagram.com/v1/tags/"+tag_name+"?access_token=" + myToken;//+"scope= public_content"
	
	var apiURL = "https://api.instagram.com/oauth/authorize/?client_id=1deddefb3dd04435b000a451a19e77ef&redirect_uri=http://localhost:9090/dataEnrichment/token&response_type=code&scope=basic+comments+follower_list+likes+relationships+public_content";
	 
	 $.ajax({
			url: apiURL,
			dataType: 'jsonp',
			type: 'GET',
			data: access_parameters,
			success: function(data){
				debugger;
				console.log(data);
				for(x in data.data){
					$('ul').append('<li><img src="'+data.data[x].images.standard_resolution.url+'"></li>');  
				}
			},
			error: function(data){
				console.log(data);
			}
		});
	 
	 
	 
}

function onDataLoaded(myData)
{
debugger;	

}