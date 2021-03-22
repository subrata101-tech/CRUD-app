package productcrud.dao;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrud.model.Product;

@Component
public class ProductDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createProduct(Product product)
	{
		 this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	public List<Product>  getAllProduct()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	public Product getProduct(int pId)
	{
		Product product = this.hibernateTemplate.load(Product.class,pId);
		return product;
	}
	@Transactional
	public void deleteProduct(int pId)
	{
		Product d = this.hibernateTemplate.load(Product.class,pId);
		 this.hibernateTemplate.delete(d);
	}

}
