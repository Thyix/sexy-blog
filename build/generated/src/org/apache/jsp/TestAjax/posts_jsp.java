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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link rel=\"icon\" href=\"../favicon.ico\">\n");
      out.write("\n");
      out.write("    <title>JSP Page</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display:700,900\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"blog.css\" rel=\"../stylesheet\">\n");
      out.write("    \n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>  \n");
      out.write("    <script src=\"loadPosts.js\" type=\"text/javascript\"></script> \n");
      out.write("    <script src=\"loadPagination.js\" type=\"text/javascript\"></script> \n");
      out.write("    <script src=\"paginationOnClick.js\" type=\"text/javascript\"></script> \n");
      out.write("  </head>   \n");
      out.write("    <body>\n");
      out.write("         <div class=\"container\">\n");
      out.write("      <header class=\"blog-header py-3\">\n");
      out.write("        <div class=\"row flex-nowrap justify-content-between align-items-center\">\n");
      out.write("          <div class=\"col-4 pt-1\">\n");
      out.write("            <a class=\"text-muted\" href=\"#\">Subscribe</a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-4 text-center\">\n");
      out.write("            <a class=\"blog-header-logo text-dark\" href=\"#\">Large</a>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"col-4 d-flex justify-content-end align-items-center\">\n");
      out.write("            <a class=\"text-muted\" href=\"#\">\n");
      out.write("              <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\" class=\"mx-3\"><circle cx=\"10.5\" cy=\"10.5\" r=\"7.5\"></circle><line x1=\"21\" y1=\"21\" x2=\"15.8\" y2=\"15.8\"></line></svg>\n");
      out.write("            </a>                  \n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-secondary\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Tooltip on bottom\">\n");
      out.write("                Sign Up\n");
      out.write("            </button>\n");
      out.write("            <button type=\"button\" class=\"btn btn-outline-secondary\" data-toggle=\"tooltip\" data-placement=\"bottom\" title=\"Tooltip on bottom\">\n");
      out.write("                Sign In\n");
      out.write("            </button>\n");
      out.write("        </div>\n");
      out.write("      </header>\n");
      out.write("\n");
      out.write("      <div class=\"nav-scroller py-1 mb-2\">\n");
      out.write("        <nav class=\"nav d-flex justify-content-between\">\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">World</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">U.S.</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Technology</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Design</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Culture</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Business</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Politics</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Opinion</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Science</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Health</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Style</a>\n");
      out.write("          <a class=\"p-2 text-muted\" href=\"#\">Travel</a>\n");
      out.write("        </nav>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <div class=\"jumbotron p-3 p-md-5 text-white rounded bg-dark\">\n");
      out.write("        <div class=\"col-md-6 px-0\">\n");
      out.write("          <h1 class=\"display-4 font-italic\">Title of a longer featured blog post</h1>\n");
      out.write("          <p class=\"lead my-3\">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what's most interesting in this post's contents.</p>\n");
      out.write("          <p class=\"lead mb-0\"><a href=\"post_test.html\" class=\"text-white font-weight-bold\">Continue reading...</a></p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <div id=\"posts\" name=\"posts\">\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <div id=\"pagination\" name=\"pagination\">\n");
      out.write("           \n");
      out.write("        </div>         \n");
      out.write("        \n");
      out.write("     <footer class=\"blog-footer\">  \n");
      out.write("      <p>\n");
      out.write("        <a href=\"#\">Back to top</a>\n");
      out.write("      </p>\n");
      out.write("    </footer>\n");
      out.write("                 \n");
      out.write("                 \n");
      out.write("        <!-- Bootstrap core JavaScript\n");
      out.write("    ================================================== -->\n");
      out.write("    <!-- Placed at the end of the document so the pages load faster --> \n");
      out.write("    <script>window.jQuery || document.write('<script src=\"JS/jquery-slim.min.js\"><\\/script>')</script>\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>   \n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("    <script src=\"../JS/holder.min.js\"></script>\n");
      out.write("    <script src=\"../JS/popover.js\" />\n");
      out.write("    <script>\n");
      out.write("      Holder.addTheme('thumb', {\n");
      out.write("        bg: '#55595c',\n");
      out.write("        fg: '#eceeef',\n");
      out.write("        text: 'Thumbnail'\n");
      out.write("      });\n");
      out.write("    </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
