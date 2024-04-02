function fn(){
var env= 'dev1' ;
karate.log('selected environment is :' + env);
var config = {
	endpoint : 'https://gorest.co.in/public/v2'
	}
	
if(env == 'dev'){
	config.endpoint= 'https://gorest.co.in/public/v1';
	}
	else{
		config.endpoint= 'https://gorest.co.in/public/v2';
	
	}
return config;
}