<%@page import="org.apache.commons.httpclient.methods.PostMethod"%><%@page import="org.apache.commons.httpclient.HttpState"%><%@page import="org.apache.commons.httpclient.URI"%><%@page import="org.apache.commons.httpclient.HttpClient"%><%URI uri= new URI("http://161.131.232.197:9111/svcRest/sucursales/cercanas?latitud=-33.439315&longitud=-70.647664&hasta=3&desde=1");
String schema= uri.getScheme();
HttpState state= new HttpState();
PostMethod method= new PostMethod(uri.toString());
HttpClient httpclient= new HttpClient();
httpclient.setTimeout(10000);
int result= httpclient.executeMethod(method);
String msgXMLRes = method.getResponseBodyAsString();
method.releaseConnection();
if(result==200){out.print(msgXMLRes);}%>