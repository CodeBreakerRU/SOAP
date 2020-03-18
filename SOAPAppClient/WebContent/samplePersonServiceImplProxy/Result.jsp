<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="samplePersonServiceImplProxyid" scope="session" class="com.soapapp.service.PersonServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
samplePersonServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = samplePersonServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        samplePersonServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.soapapp.service.PersonServiceImpl getPersonServiceImpl10mtemp = samplePersonServiceImplProxyid.getPersonServiceImpl();
if(getPersonServiceImpl10mtemp == null){
%>
<%=getPersonServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String id_1id=  request.getParameter("id18");
        int id_1idTemp  = Integer.parseInt(id_1id);
        boolean deletePerson15mtemp = samplePersonServiceImplProxyid.deletePerson(id_1idTemp);
        String tempResultreturnp16 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deletePerson15mtemp));
        %>
        <%= tempResultreturnp16 %>
        <%
break;

case 20:
	 gotMethod = true;
	 com.soapapp.beans.Person[] getAllPersons20mtemp = samplePersonServiceImplProxyid.getAllPersons();
if(getAllPersons20mtemp == null){
%>
<%=getAllPersons20mtemp %>
<%
}else{
     String tempreturnp43 = null;
     if(getAllPersons20mtemp != null){
     java.util.List<com.soapapp.beans.Person> listreturnp43= java.util.Arrays.asList(getAllPersons20mtemp);
     //tempreturnp43 = listreturnp43.toString();
     for(com.soapapp.beans.Person p : listreturnp43){
     	int id = p.getId();
     	int age = p.getAge();
     	String name=p.getName();
     	%>
     	<%=id%>::<%=name %>::<%=age %>
     	<%
     	}
     }
     }      
break;

case 23:
        gotMethod = true;
        String id_2id=  request.getParameter("id32");
        int id_2idTemp  = Integer.parseInt(id_2id);
        com.soapapp.beans.Person getPerson23mtemp = samplePersonServiceImplProxyid.getPerson(id_2idTemp);
if(getPerson23mtemp == null){
%>
<%=getPerson23mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">age:</TD>
<TD>
<%
if(getPerson23mtemp != null){
%>
<%=getPerson23mtemp.getAge()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">name:</TD>
<TD>
<%
if(getPerson23mtemp != null){
java.lang.String typename28 = getPerson23mtemp.getName();
        String tempResultname28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typename28));
        %>
        <%= tempResultname28 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">id:</TD>
<TD>
<%
if(getPerson23mtemp != null){
%>
<%=getPerson23mtemp.getId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 34:
        gotMethod = true;
        String age_4id=  request.getParameter("age39");
        int age_4idTemp  = Integer.parseInt(age_4id);
        String name_5id=  request.getParameter("name41");
            java.lang.String name_5idTemp = null;
        if(!name_5id.equals("")){
         name_5idTemp  = name_5id;
        }
        String id_6id=  request.getParameter("id43");
        int id_6idTemp  = Integer.parseInt(id_6id);
        %>
        <jsp:useBean id="com1soapapp1beans1Person_3id" scope="session" class="com.soapapp.beans.Person" />
        <%
        com1soapapp1beans1Person_3id.setAge(age_4idTemp);
        com1soapapp1beans1Person_3id.setName(name_5idTemp);
        com1soapapp1beans1Person_3id.setId(id_6idTemp);
        boolean addPerson34mtemp = samplePersonServiceImplProxyid.addPerson(com1soapapp1beans1Person_3id);
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addPerson34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>