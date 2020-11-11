package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import model.product;
import java.util.Iterator;
import java.util.ArrayList;
import dao.productdao;

public final class shopWomen_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>DogFood : Shop Small Dogs</title>\n");
      out.write("<link rel=\"stylesheet\" href=\"css/main.css\">\n");
      out.write("<script src=\"js/jquery-1.11.3.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("\t\n");
      out.write("\t$(\"#bt1\").click(function(){\n");
      out.write("\t\t$(\"#ul1\").slideToggle();\n");
      out.write("\t\t\n");
      out.write("\t});\n");
      out.write("\t\n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body style=\"background-color:white\">\n");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<div class=\"main\" style=\"background-color:white\">\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("<hr><center>\n");
      out.write("There are large varieties of foods to Choose from....\n");
      out.write(" </center>\n");
      out.write("<hr/>\n");
      out.write("<table >\n");
      out.write("<tr>\n");
      out.write("<td style=\"width:220px;\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<div style=\"background-color: black; font-size: 25px;color:white;font-family: courier\"><center>Brand</center></div>\n");
      out.write("<form action=\"shopWomen\">\n");
      out.write("<div style=\"padding:10%\">\n");
      out.write("<input type=\"checkbox\" name=\"brand\" value=\"American\">American<br/>\n");
      out.write("<input type=\"checkbox\" name=\"brand\" value=\"Italian\">Italian<br/>\n");
      out.write("<input type=\"checkbox\" name=\"brand\" value=\"French\">French<br/>\n");
      out.write("</div>\n");
      out.write("<div style=\"background-color: black; font-size: 25px;color:white;font-family: courier\"><center>Category</center></div>\n");
      out.write("<div style=\"padding:10%\">\n");
      out.write("<input type=\"checkbox\" name=\"category\" value=\"Thick Fur\">Thick Fur<br/>\n");
      out.write("<input type=\"checkbox\" name=\"category\" value=\"No Fur\">No Fur<br/>\n");
      out.write("<input type=\"checkbox\" name=\"category\" value=\"Teethed\">Teethed<br/>\n");
      out.write("</div>\n");
      out.write("<div style=\"background-color: black; font-size: 25px;color:white;font-family: courier\"><center>Price</center></div>\n");
      out.write("<div style=\"padding:10%\">\n");
      out.write("<input type=\"checkbox\" name=\"price\" value=\"<200\"><200<br/>\n");
      out.write("<input type=\"checkbox\" name=\"price\" value=\"between 200 and 500\">200-500<br/>\n");
      out.write("<input type=\"checkbox\" name=\"price\" value=\">500\">>500<br/>\n");
      out.write("</div>\n");
      out.write("<center>\n");
      out.write("<input type=\"submit\" value=\"Search\" style=\"text-decoration: blinkstyle;background-color: black; font-size: 25px;color:white;\"></center>\n");
      out.write("</form>\n");
      out.write("</td>\n");
      out.write("<td style=\"width:763px;\">\n");
      out.write("<table>\n");


List arrayList=(List)request.getAttribute("list");
Iterator iterator=arrayList.iterator();
while(iterator.hasNext())
{
	product ob=(product)iterator.next();
	out.println("<tr><td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a>");
	if(!iterator.hasNext())
		break;
	ob=(product)iterator.next();
	out.println("<td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a>");
	if(!iterator.hasNext())
	break;
	ob=(product)iterator.next();
	out.println("<td style=\"border:1px \"><a class=option href=\"productView.jsp?item="+ob.getId()+"\"><img src=\"images/pic"+ob.getId()+".jpg\" style=\"width:225px;height:225px\"><br/>"+ob.getName()+"<br/><b> Rs "+ob.getPrice()+"</b></td></a></tr>");
	
}
out.println("</table>");
if(request.getAttribute("page")!=null)
{
		int p=(Integer)request.getAttribute("page");
		out.print("<center><br><a style=font-size:30px;background-color:black;color:white; class=option href=shop?page="+p+">Next</a></center><br>");
}
else
{
	
}


      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</td>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("</table>\n");
      out.write("<hr/>\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.html", out, false);
      out.write("\n");
      out.write("</div>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sex==male}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write('\n');
        out.write('\n');
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
