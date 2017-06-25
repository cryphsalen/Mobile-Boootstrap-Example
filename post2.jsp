<%@page import="org.apache.commons.httpclient.methods.PostMethod"%><%@page import="org.apache.commons.httpclient.HttpState"%><%@page import="org.apache.commons.httpclient.URI"%><%@page import="org.apache.commons.httpclient.HttpClient"%><%URI uri= new URI("/svcRest/sesionws");
String schema= uri.getScheme();
HttpState state= new HttpState();
PostMethod method= new PostMethod(uri.toString());
HttpClient httpclient= new HttpClient();
httpclient.setTimeout(10000);
int result= httpclient.executeMethod(method);
String msgXMLRes = method.getResponseBodyAsString();
method.releaseConnection();
if(result==200){out.print(msgXMLRes);}%>