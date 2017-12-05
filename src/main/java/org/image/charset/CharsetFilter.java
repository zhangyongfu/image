package org.image.charset;


import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class CharsetFilter implements javax.servlet.Filter{

    private String charsetName = "UTF-8";


    public void destroy() {
    }


    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
//        System.out.println("开始过滤请求数据的编码……");
        // 转型为与协议相关对象
        HttpServletRequest req = (HttpServletRequest) request;
        // 获取请求方法
        String method = req.getMethod();
        if ("post".equalsIgnoreCase(method)) {
            // 解决post
            req.setCharacterEncoding(charsetName);
        } else {
            // 解决get请求
            req = new EncodingRequest(req, charsetName);
        }
        // 解决响应乱码
        response.setContentType("text/html; charset=" + charsetName);// 设置响应数据和响应的页面编码格式
        chain.doFilter(req, response);
    }


    public void init(FilterConfig filterConfig) throws ServletException {
    }
}

class EncodingRequest extends HttpServletRequestWrapper {
    private HttpServletRequest request;
    private String charsetName;
    private Map<String, String[]> map;
    private Enumeration<String> names;

    public EncodingRequest(HttpServletRequest request, String charsetName) {
        super(request);
        this.request = request;
        this.charsetName = charsetName;
        map = getParameterMap();
        names = Collections.enumeration(map.keySet());
    }
    @Override
    //处理get请求中参数的键的乱码问题
    public Enumeration<String> getParameterNames() {
        return names;
    }
    @Override
    public String getParameter(String name) {
        // 通过getParameterMap方法完成
        String[] values = getParameterValues(name);
        if (values == null) {
            return null;
        }
        return values[0];
    }
    @Override
    public String[] getParameterValues(String name) {
        String[] values = map.get(name);
        return values;
    }
    @Override
    public Map<String, String[]> getParameterMap() {
        Map<String, String[]> parameterMap = request.getParameterMap();
        Map<String, String[]> map = new HashMap<String,String[]>(parameterMap.size());
        for (Map.Entry<String, String[]> entries : parameterMap.entrySet()) {
            String key = entries.getKey();//获取参数的key
            String[] values = entries.getValue();
            try {
                //处理get请求中参数的键的乱码问题
                key = new String(key.getBytes("ISO-8859-1"), charsetName);
            } catch (Exception e) {
                e.printStackTrace();
            }
            //处理get请求中参数的值的乱码问题
            if(values != null && values.length > 0){
                for (int i = 0; i < values.length; i++) {
                    try {
                        // values是一个地址
                        values[i] = new String(values[i].getBytes("ISO-8859-1"), charsetName);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
            map.put(key, values);
        }
        return map;
    }
}