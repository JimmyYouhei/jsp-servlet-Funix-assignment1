package com.jimmyyouhei.assignment1.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jimmyyouhei.assignment1.entity.OddNumber;

/**
 * Servlet implementation class A1Servlet
 */
@WebServlet("/A1Servlet")
public class A1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public A1Servlet() {

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			String page = request.getParameter("page");
			
			switch(page) {
				
				case "PrintOdd":
					toPrintOdd(request, response);
					break;
					
				case "fibonacci":
					toFibonacci(request,response);
					break;
					
				case "courseForm":
					toCourseForm(request,response);
					break;
				
			}
			
		} catch(Exception e) {
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		showInfor(request, response);
		
	}

	
	private void toPrintOdd(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<OddNumber> from1To500OddNumberList = new ArrayList<>();
		
		for(int i=1; i<=500 ; i++) {
			
			if(i%2 !=0) {
				OddNumber thisOddNumber = new OddNumber();
				
				thisOddNumber.setValue(i);
				thisOddNumber.setDivisibleBy5(i%5 == 0);
				
				from1To500OddNumberList.add(thisOddNumber);
			}
		}
		
		request.setAttribute("OddNumberList", from1To500OddNumberList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("printOdd.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void toFibonacci(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Integer> fibonacciList = new ArrayList<>();
		
		fibonacciList.add(0);
		fibonacciList.add(1);
		
		int recursion =1;
		
		while(recursion < 10946) {
			
			fibonacciList.add(recursion);
			
			recursion = recursion + fibonacciList.get(fibonacciList.size()-2);
		}
		
		request.setAttribute("fibonacciList", fibonacciList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("fibonacci.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void toCourseForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RequestDispatcher dispatcher = request.getRequestDispatcher("courseForm.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void showInfor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String givenName = request.getParameter("givenName");
		String familyName = request.getParameter("familyName");
		String phoneNumber = request.getParameter("phoneNumber");
		String email = request.getParameter("email");
		String[] courses = request.getParameterValues("course");
		Boolean enrollIt = null;
		Boolean enrollEconomics = null;
		Boolean enrollHealth = null;
		
		
		if(courses != null) {
			enrollIt = Boolean.valueOf(Arrays.stream(courses).anyMatch("it"::equals));
			enrollEconomics = Boolean.valueOf(Arrays.stream(courses).anyMatch("economics"::equals));
			enrollHealth = Boolean.valueOf(Arrays.stream(courses).anyMatch("health"::equals));
		} else {
			enrollIt = Boolean.FALSE;
			enrollEconomics = Boolean.FALSE;
			enrollHealth = Boolean.FALSE;
			
		}
		

				
		
		request.setAttribute("givenName", givenName);
		request.setAttribute("familyName", familyName);
		request.setAttribute("phoneNumber", phoneNumber);
		request.setAttribute("email", email);
		request.setAttribute("enrollIt", enrollIt);
		request.setAttribute("enrollEconomics", enrollEconomics);
		request.setAttribute("enrollHealth", enrollHealth);

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("showInfor.jsp");
		dispatcher.forward(request, response);
	}

}
