package com.bobo.zuul.filter;


import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.sleuth.Tracer;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义网关过滤器
 *
 * @author dengp
 */
@Component
public class AccessFilter extends ZuulFilter {

	private Logger logger = LoggerFactory.getLogger(AccessFilter.class);

	@Autowired
	Tracer tracer;

	/**
	 * 过滤方法
	 */
	@Override
	public Object run() {
		tracer.addTag("operator", "forezp");
		tracer.addTag("traceId", tracer.getCurrentSpan().traceIdString());

		logger.info(tracer.getCurrentSpan().traceIdString());
		// 获取Request上下文
		RequestContext rc = RequestContext.getCurrentContext();
		HttpServletRequest request = rc.getRequest();
		String token = request.getParameter("token");
		if (token == null) {
			// 拦截请求
			////代表请求结束。不在继续向下请求
			rc.setSendZuulResponse(false);
			//添加一个响应的状态码
			rc.setResponseStatusCode(401);
			//响应内容
			rc.setResponseBody("{\"result\":\"token is null\"}");
			//响应类型
			rc.getResponse().setContentType("text/json;charset=utf-8");
		}
		// 放过请求
		return null;
	}

	/**
	 * 是否开启过滤:默认false
	 */
	@Override
	public boolean shouldFilter() {
		// TODO Auto-generated method stub
		return true;
	}

	/**
	 * 多个过滤器中的执行顺序，数值越小，优先级越高
	 */
	@Override
	public int filterOrder() {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 过滤器的类型
	 */
	@Override
	public String filterType() {
		// TODO Auto-generated method stub
		return "pre";
	}

}
