package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.product;
import dao.productdao;

public class shopStyle extends HttpServlet {
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
	// TODO Auto-generated method stub
	try {
		String brand[]=null,category[]=null,price[]=null;
		if(req.getParameterValues("brand")!=null)
		{
		brand=req.getParameterValues("brand");
			
		}if(req.getParameterValues("category")!=null)
		{
		 category=req.getParameterValues("category");
			
		}if(req.getParameterValues("price")!=null)
		{
		 price=req.getParameterValues("price");
		}
		ArrayList arrayList=productdao.search(brand,category,price);
		ArrayList<product> al=new ArrayList<>();
		Iterator iterator=arrayList.iterator();
		while(iterator.hasNext())
		{
			product ob=(product) iterator.next();
			if(ob.getType().equalsIgnoreCase("style"))
			{
				al.add(ob);
			}
		}
		 
		HttpSession  httpSession=req.getSession();
		httpSession.setAttribute("list", al);
	
		req.getRequestDispatcher("/shop").forward(req, resp);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}
