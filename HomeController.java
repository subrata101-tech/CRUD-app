package productcrud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import productcrud.dao.ProductDao;
import productcrud.model.Product;

@Controller
public class HomeController
{
	@Autowired
	private ProductDao productDao;
	@RequestMapping("/")
	public String indexController(Model m)
	{
		List<Product> products = this.productDao.getAllProduct();
		m.addAttribute("products",products);
		return "index";
	}
	@RequestMapping("/addProduct")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Product Page - Product Crud App");
		return "add_product_form";
	}
	@PostMapping("/processForm")
	public RedirectView processFormHandler(@ModelAttribute Product product,HttpServletRequest request,Model m)
	{
		
		this.productDao.createProduct(product);
		System.out.println(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		
		
		return redirectView;
	}
	
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId")int productId,HttpServletRequest request)
	{
		this.productDao.deleteProduct(productId);
		System.out.println("Deleted Successfully " +productId);
		
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId")int productId,Model m)
	{
		Product product = this.productDao.getProduct(productId);
		m.addAttribute("product",product);
		return "update_form";
	}

}
