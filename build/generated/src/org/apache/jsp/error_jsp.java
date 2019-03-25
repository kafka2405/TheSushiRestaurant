package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/sharing.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Menu and Price list</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/common.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/menu.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/error.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"page-wrapper\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("current", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("error", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("            <div class=\"main\">\n");
      out.write("                <div class=\"alignment\">\n");
      out.write("                    <div class=\"page-content\">\n");
      out.write("                        <div class=\"error-announcement\">\n");
      out.write("                            <div class=\"error-content\">Server maintenance. Please try again later!</div>\n");
      out.write("                        </div>\n");
      out.write("                        ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"right-side col-3\">\n");
      out.write("            <div class=\"sharing\">\n");
      out.write("                <div class=\"sharing-heading\">\n");
      out.write("                    <h4 class=\"text-sharing-heading\">Share this page</h4>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"sharing-content\">\n");
      out.write("                    <ul class=\"content-wrapper\">\n");
      out.write("                        <li class=\"sharing__item\">\n");
      out.write("                            <div class=\"sharing__social-icon icon-facebook\"> </div>\n");
      out.write("                            <a id=\"share-facebook\" href=\"#\">Share on Facebook</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sharing__item\">\n");
      out.write("                            <div class=\"sharing__social-icon icon-twitter\"> </div>\n");
      out.write("                            <a id=\"share-twitter\" href=\"#\">Share on Twitter</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"sharing__item\">\n");
      out.write("                            <div class=\"sharing__social-icon icon-google-plus\"> </div>\n");
      out.write("                            <a id=\"share-google-plus\" href=\"#\">Share on Google</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>FOOTER</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"alignment\">\n");
      out.write("                <div class=\"footer-powered-by\">\n");
      out.write("                    <a href=\"#\">Created with SimpleSite</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
