package gr.hua.dit.springrest.Controller;
/*
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.support.BasicAuthorizationInterceptor;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.client.RestTemplate;

import gr.hua.dit.springrest.config.HttpClientConfig;
import gr.hua.dit.springrest.config.RestTemplateConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { RestTemplateConfig.class, HttpClientConfig.class })
public class RestCaller {

	 @Test
	 public static void main(String[] args)  throws URISyntaxException{
	

		  final String uri = "http://localhost:8080/Springmvc1/api/company/all";
	     
	    RestTemplate restTemplate = new RestTemplate();
	    restTemplate.getInterceptors().add(
	    		  new BasicAuthorizationInterceptor("30000", "123"));
	   String result = restTemplate.getForObject(uri, String.class);
	   URI url = new URI(uri);
	   
	//    ResponseEntity<String> result = restTemplate.getForEntity(uri, String.class);
	 //   Assert.assertEquals(200, result.getStatusCodeValue());
	 //   Assert.assertEquals(true, result.getBody());
	    

	        
	     //  EmployeeListVO result = restTemplate.getForObject(uri, EmployeeListVO.class);
	        
	       System.out.println(result);
	   
String[] splited=result.split("\"");

System.out.println(splited.length);
System.out.println(splited[4]);
String id=splited[4];
System.out.println(splited[7]);
String firstname=splited[7];
System.out.println(splited[11]);
String lastname=splited[11];
System.out.println(splited[15]);
String email=splited[15];
System.out.println(splited[19]);
String username=splited[19];
System.out.println(splited[23]);
String password=splited[23];
System.out.println(splited[27]);
String company_name=splited[27];
System.out.println(splited[30]);
//String username=splited[27];
//System.out.println(splited[31]);
//String password=splited[31];
//System.out.println(splited[34]);
String enabled=splited[30];
int i;
int x=30;
for (i=30;i<=splited.length;i++) {
	if(i==x+2) {System.out.println(splited[i]);}
	if(i==x+5) {System.out.println(splited[i]);}
	if(i==x+9) {System.out.println(splited[i]);}
	if(i==x+13) {System.out.println(splited[i]);}
	if(i==x+17) {System.out.println(splited[i]);}
	if(i==x+21) {System.out.println(splited[i]);}
	if(i==x+25) {System.out.println(splited[i]);}
	if(i==x+28) {x=i; System.out.println(splited[i]);}
	
}
StringBuilder sb = new StringBuilder(splited[1]);
//String resultString = sb.delete(0, 13).toString();
//System.out.println(resultString);
	    //ResponseEntity<String> result
	//    = restTemplate.getForEntity(uri, String.class);
	  // System.out.println(result);

	}
}*/
