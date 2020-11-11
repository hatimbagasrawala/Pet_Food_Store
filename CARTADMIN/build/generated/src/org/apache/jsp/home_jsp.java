package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.order;
import java.util.Iterator;
import java.util.ArrayList;
import dao.orderdao;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>DOG FOOD</title>\n");
      out.write("</head>\n");
      out.write("<script>\n");
      out.write("</script>\n");
      out.write("<body style=\"font-family: courier;font-size: 30px\"><center>\n");
      out.write("<a href=index.jsp><img src=\"images\\logo.jpg\"></a>\n");
      out.write("\n");
      out.write("<br/>\n");
      out.write("<div style=\"background-color: black;color:white;width:200px\"><center><a href=\"list.jsp\" target=\"f1\" style=\"text-decoration: none;font-size:25px;font-family:courier;color:white\" >Goto Home</a></center></div>\n");
      out.write("<br/>\n");
      out.write("<fieldset >\n");
      out.write("<legend>Orders</legend>\n");
      out.write("\n");
      out.write("<table>\n");
      out.write("<tr style=\"background-color:black;color:white\"> <td style=\"padding-left:50px;padding-right:50px\">Order Id.</td><td style=\"padding-left:50px;padding-right:50px\">Price</td><td style=\"padding-left:50px;padding-right:50px\">Status</td></tr>\n");


		ArrayList al= orderdao.searchProducts();
		Iterator iterator=al.iterator();
		while(iterator.hasNext())
		{
			order order=(order)iterator.next();

      out.write("\n");
      out.write("<tr><td style=\"padding-left:50px;padding-right:50px\">");
      out.print(order.getId() );
      out.write("</td><td style=\"padding-left:50px;padding-right:50px\">");
      out.print(order.getPrice());
      out.write("</td><td style=\"padding-left:50px;padding-right:50px\">");
 if(order.getStatus()==0) out.println("Processing");
else if(order.getStatus()==1)
	out.println("Shipped");
else
	out.println("Delivered");
	
      out.write("</td><td>");

	out.println("<a style=color:black class=\"option\" href=\"orderdetails.jsp?orderid="+order.getId()+"&emailid=1"+"\"><b>View</b></a>");
	
      out.write("</td></tr>\n");

		}

      out.write("\n");
      out.write("</table>\n");
      out.write("</center></fieldset>\n");
      out.write("<hr/>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
