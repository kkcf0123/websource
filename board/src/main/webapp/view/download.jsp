<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import = "java.io.BufferedOutputStream"%>
<%@ page import = "java.io.FileInputStream"%>

<% 
    //client가 request한 filename get
        String fileName = request.getParameter("fileName");

        String fDownloadPath = "c:\\upload";
        String filePath = fDownloadPath + "\\" + fileName;

        FileInputStream in = new FileInputStream(filePath);

        response.setContentType("application/octet-stream");

        fileName = new String(fileName.getBytes("utf-8"), "iso-8859-1");
        int start = fileName.lastIndexOf("_");
        String oriName = fileName.substring(start + 1);

        response.setHeader("Content-Disposition", "attachment;filename=" + oriName);

        out.clear();
        out = pageContext.pushBody();

        BufferedOutputStream buf = new BufferedOutputStream(response.getOutputStream());

        int numRead;
        byte b[] = new byte[4096];
        while ((numRead = in.read(b, 0, b.length)) != -1) {
            buf.write(b, 0, numRead);
        }
        
%>