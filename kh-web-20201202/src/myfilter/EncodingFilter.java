package myfilter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

@WebFilter(urlPatterns = "/filter.do",
			initParams = {
					@WebInitParam(name="encoding", value="utf-8")
			}
		)
public class EncodingFilter implements Filter {
	FilterConfig config ;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("실행");
		this.config = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		request.setCharacterEncoding(config.getInitParameter("encoding"));
		chain.doFilter(request, response);
		
		RequestDispatcher rd = request.getRequestDispatcher("./filter/filter_test.jsp");
		rd.forward(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("종료");
	}

}
