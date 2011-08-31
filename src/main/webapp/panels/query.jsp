<%

    response.setContentType("application/json");
    response.setStatus(200);
    response.getWriter().write("[{value:'1',text:'a'},{value:'2',text:'b'},{value:'3',text:'c'}]");
%>