package zlin.clothing.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transaction;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.mysql.jdbc.log.Log;
import com.mysql.jdbc.log.LogFactory;

import zlin.clothing.po.ClothingPO;
import zlin.store.po.StorePO;



public class ClothingDao extends HibernateDaoSupport
{

	//获取全部信息
	public int getAllRowCount(String hql)
    {
			int allRows = 0;           
        	allRows = this.getHibernateTemplate().find(hql).size();
        
        	return allRows;
    }
	
	
	
	
	
	/**
     * 使用hibernate提供的分页功能，得到分页显示的数据
     * 查询全部信息
     */
	public List findAllClothing(final int offset,final int pageSize)throws Exception
	{

	    List resultlist = new ArrayList<ClothingPO>();
	    //ClothingPO clothingpo = new ClothingPO();	    
	    resultlist = (ArrayList<ClothingPO>) getHibernateTemplate().execute(new HibernateCallback(){   
			@Override
			public Object doInHibernate(Session session) throws HibernateException,SQLException{   
			Query query = session.createQuery("from ClothingPO order by clothnum");   
			query.setFirstResult(offset);   
			query.setMaxResults(pageSize);   
			List list = query.list();   
			return list;}  
			});   

	    return resultlist;
	}
	
	
	
	/**
     * 使用hibernate提供的分页功能，得到分页显示的数据
     * 按条件查询信息
     */

	public List findClothing(final String CLOTHNUM,final String TYPE,final String COLOR,final String SIZE,final int offset,final int pageSize)throws Exception
	{
		final String clothnum=CLOTHNUM;//货号
		final String type=TYPE;//品名
		final String color=COLOR;//色号
		final String size=SIZE;//尺码
		
	    List resultlist = new ArrayList<ClothingPO>();

	    ClothingPO clothingpo = new ClothingPO();
	    resultlist = (ArrayList<ClothingPO>) getHibernateTemplate().execute(new HibernateCallback(){   
			@Override
			public Object doInHibernate(Session session) throws HibernateException,SQLException{   
			Query query = session.createQuery("from ClothingPO clothing where clothing.clothnum=:clothnum " +
						    		"and clothing.type=:type and color=:color and size=:size order by clothing.clothnum").setFirstResult(offset).setMaxResults(pageSize);   
			query.setString("clothnum", clothnum);
			query.setString("type",type);
			query.setString("color", color);
			query.setString("size", size);  
			List list = query.list();   
			return list;}  
			});   
	    	    
	    return resultlist;
		
	}
	
	
	
	
	
	
	
	//新建货号(传入一个货号对象)返回货号ID
	public Long newClothing(ClothingPO CLOTHINGPO)throws Exception
	{
		System.out.println("this is newclothing dao");


	    ClothingPO clothingpo = new ClothingPO();
	    clothingpo.setClothnum(CLOTHINGPO.getClothnum());//货号
	    clothingpo.setColor(CLOTHINGPO.getColor());//色号
	    clothingpo.setFabric(CLOTHINGPO.getFabric());//面料
	    clothingpo.setSize(CLOTHINGPO.getSize());//尺码
	    clothingpo.setType(CLOTHINGPO.getType());//品名
	    clothingpo.setRetailPrice(CLOTHINGPO.getRetailPrice());//零售价
	    clothingpo.setFactoryPrice(CLOTHINGPO.getFactoryPrice());//出厂价
	    clothingpo.setClothingMaterial(CLOTHINGPO.getClothingMaterial());//里料
	    
	    Long id;
	    id=(Long)this.getHibernateTemplate().save(clothingpo);

	    return id;
	   
	}
	
	
	
	//删除货号(传入一个货号对象的ID),返回删除的行数
	public void deleteClothing(Long CLOTHINGID)throws Exception
	{
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(ClothingPO.class, CLOTHINGID));
		
	}
	
	
	//更新货号信息
	public void updateClothing(ClothingPO CLOTHINGPO)throws Exception
	{	    
	    this.getHibernateTemplate().update(CLOTHINGPO);	    	 
	}
	
	
	//更新货号信息的时候，需要查找需要更新的货号信息
	public ClothingPO findAClothing(Long CLOTHINGID)throws Exception
	{
	    ClothingPO clothingpo = new ClothingPO();   
	    clothingpo =(ClothingPO)this.getHibernateTemplate().get(ClothingPO.class, CLOTHINGID);	    
	    return clothingpo;		
	}
	
	
}
