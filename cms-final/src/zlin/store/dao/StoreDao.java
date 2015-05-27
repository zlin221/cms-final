package zlin.store.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import zlin.clothing.po.ClothingPO;
import zlin.store.po.StorePO;

public class StoreDao extends HibernateDaoSupport
{
	//获取全部信息
	public int getAllRowCount(String hql)
    {
			int allRows = 0;           
        	allRows = this.getHibernateTemplate().find(hql).size();
        
        	return allRows;
    }
	
	//按分页查询全部仓库信息
	public List findAllStore(final int offset,final int pageSize)throws Exception
	{

	    List resultlist = new ArrayList<StorePO>();
	      
	    resultlist = (ArrayList<StorePO>) getHibernateTemplate().execute(new HibernateCallback(){   
			@Override
			public Object doInHibernate(Session session) throws HibernateException,SQLException{   
			Query query = session.createQuery("from StorePO as storepo order by storepo.storenum asc");   
			query.setFirstResult(offset);   
			query.setMaxResults(pageSize);   
			List list = query.list();   
			return list;}  
			});   

	    return resultlist;
	}
	
	
	//按条件查找仓库信息
	public List findStore(final String STORENUM,final String STORENAME,final int offset,final int pageSize)throws Exception
	{
		List resultlist=new ArrayList<StorePO>();
		
		final String storenum=STORENUM;//仓库编号
		final String storename=STORENAME;//仓库名称

		 StorePO storepo=new StorePO();
		 resultlist = (ArrayList<StorePO>) getHibernateTemplate().execute(new HibernateCallback(){   
				@Override
				public Object doInHibernate(Session session) throws HibernateException,SQLException{   
				Query query = session.createQuery("from StorePO storepo where storepo.storenum=:storenum " +
							    		"and storepo.storename=:storename order by storepo.storenum asc").setFirstResult(offset).setMaxResults(pageSize);   
				query.setString("storenum", storenum);
				query.setString("storename",storename);
				List list = query.list();   
				return list;}  
				});   
		    	    
		    return resultlist;
		
		
	}
	
	//新建仓库
	public Long newStore(StorePO STOREPO)throws Exception
	{
		StorePO storepo=new StorePO();
		storepo.setStorenum(STOREPO.getStorenum());
		storepo.setStorename(STOREPO.getStorename());
		storepo.setLinkman(STOREPO.getLinkman());
		storepo.setTele(STOREPO.getTele());
		storepo.setStoragevolume(STOREPO.getStoragevolume());
		
		Long id;
		id=(Long)this.getHibernateTemplate().save(storepo);

		return id;
		
	}
	
	
	//删除仓库
	public void deleteStore(Long STOREID)throws Exception
	{		
		this.getHibernateTemplate().delete(this.getHibernateTemplate().get(StorePO.class, STOREID));
		
	}
	
	//按照ID查询一个仓库
	public StorePO findAStore(Long STOREID)throws Exception
	{
		StorePO storepo=new StorePO();
		storepo=(StorePO)this.getHibernateTemplate().get(StorePO.class,STOREID);
		return storepo;
	}
	
	//修改仓库信息
	public void updateStore(StorePO storepo)throws Exception
	{
		 this.getHibernateTemplate().update(storepo);
	}
	
	
}
