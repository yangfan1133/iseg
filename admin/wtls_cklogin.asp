<%
name=trim(request.Form("username"))
pass=trim(request.Form("password")) 
if name="" or pass="" then
response.write "<script language=javascript>alert('对不起！您没有输入用户名或密码！');history.back(-1)</script>" 
end if
if name="admin" and pass="admin" then
session("wutianlaoshi")="yes"
response.redirect "wtls_add.asp"
else
response.write "<script language=javascript>alert('对不起，用户名或密码输入错误！');history.back(-1)</script>"
end if
%>