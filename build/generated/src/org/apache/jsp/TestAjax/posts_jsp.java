package org.apache.jsp.TestAjax;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class posts_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"\">\r\n");
      out.write("    <link rel=\"icon\" href=\"../favicon.ico\">\r\n");
      out.write("\r\n");
      out.write("    <title>JSP Page</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap core CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom styles for this template -->\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:700,900\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"blog.css\" rel=\"../stylesheet\">\r\n");
      out.write("    \r\n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>  \r\n");
      out.write("    <script src=\"loadPosts.js\" type=\"text/javascript\"></script> \r\n");
      out.write("    <script src=\"loadPagination.js\" type=\"text/javascript\"></script> \r\n");
      out.write("    <script src=\"paginationOnClick.js\" type=\"text/javascript\"></script> \r\n");
      out.write("  </head>   \r\n");
      out.write("    <body>\r\n");
      out.write("         <div class=\"container\">\r\n");
      out.write("      <header class=\"blog-header py-3\">\r\n");
      out.write("        <div class=\"row flex-nowrap justify-content-between align-items-center\">\r\n");
      out.write("          <div class=\"col-4 pt-1\">\r\n");
      out.write("            <a class=\"text-muted\" href=\"#\">Subscribe</a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-4 text-center\">\r\n");
      out.write("            <a class=\"blog-header-logo text-dark\" href=\"#\">Large</a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"col-4 d-flex justify-content-end align-items-center\">\r\n");
      out.write("            <a class=\"text-muted\" href=\"#\">\r\n");
      out.write("              <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"mx-3\"><circle cx=\"10.5\" cy=\"10.5\" r=\"7.5\"></circle><line x1=\"21\" y1=\"21\" x2=\"15.8\" y2=\"15.8\"></line></svg>\r\n");
      out.write("            </a>                  \r\n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-secondary\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Tooltip on bottom\">\r\n");
      out.write("                Sign Up\r\n");
      out.write("            </button>\r\n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-secondary\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Tooltip on bottom\">\r\n");
      out.write("                Sign In\r\n");
      out.write("            </button>\r\n");
      out.write("        </div>\r\n");
      out.write("      </header>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"nav-scroller py-1 mb-2\">\r\n");
      out.write("        <nav class=\"nav d-flex justify-content-between\">\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">World</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">U.S.</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Technology</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Design</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Culture</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Business</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Politics</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Opinion</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Science</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Health</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Style</a>\r\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Travel</a>\r\n");
      out.write("        </nav>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"jumbotron p-3 p-md-5 text-white rounded bg-dark\">\r\n");
      out.write("        <div class=\"col-md-6 px-0\">\r\n");
      out.write("          <h1 class=\"display-4 font-italic\">Title of a longer featured blog post</h1>\r\n");
      out.write("          <p class=\"lead my-3\">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what's most interesting in this post's contents.</p>\r\n");
      out.write("          <p class=\"lead mb-0\"><a href=\"post_test.html\" class=\"text-white font-weight-bold\">Continue reading...</a></p>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("        <div id=\"posts\" name=\"posts\">\r\n");
      out.write("           \r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"pagination\" name=\"pagination\">\r\n");
      out.write("           \r\n");
      out.write("        </div>         \r\n");
      out.write("        \r\n");
      out.write("     <footer class=\"blog-footer\">  \r\n");
      out.write("      <p>\r\n");
      out.write("        <a href=\"#\">Back to top</a>\r\n");
      out.write("      </p>\r\n");
      out.write("    </footer>\r\n");
      out.write("                 \r\n");
      out.write("                 \r\n");
      out.write("        <!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster --> \r\n");
      out.write("    <script>window.jQuery || document.write('<script src=\"JS/jquery-slim.min.js\"><\\/script>')</script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>   \r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"../JS/holder.min.js\"></script>\r\n");
      out.write("    <script src=\"../JS/popover.js\" />\r\n");
      out.write("    <script>\r\n");
      out.write("      Holder.addTheme('thumb', {\r\n");
      out.write("        bg: '#55595c',\r\n");
      out.write("        fg: '#eceeef',\r\n");
      out.write("        text: 'Thumbnail'\r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("    </body>\r\n");
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
