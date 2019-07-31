package com.qst.action;

import java.util.List;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.CourseDao;
import com.qst.dao.FirstDao;
import com.qst.pojo.Course;
import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.Third;

public class CourseAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	FirstDao firstdao;
	
	@Autowired
	CourseDao coursedao;
	/*@Autowired
	SecondDao seconddao;
	
	@Autowired
	ThirdDao thirddao;*/
	
	Course course;
	First first;
	Second second;
	Third third;
	
    public Second getSecond() {
		return second;
	}

	public void setSecond(Second second) {
		this.second = second;
	}

	public Third getThird() {
		return third;
	}

	public void setThird(Third third) {
		this.third = third;
	}

	List<First> firstlist;
    List<Second> secondlist;
    List<Third> thirdlist;
	
	public List<Second> getSecondlist() {
		return secondlist;
	}

	public void setSecondlist(List<Second> secondlist) {
		this.secondlist = secondlist;
	}

	public List<Third> getThirdlist() {
		return thirdlist;
	}

	public void setThirdlist(List<Third> thirdlist) {
		this.thirdlist = thirdlist;
	}

	public List<First> getFirstlist() {
		return firstlist;
	}

	public void setFirstlist(List<First> firstlist) {
		this.firstlist = firstlist;
	}

	public First getFirst() {
		return first;
	}

	public void setFirst(First first) {
		this.first = first;
	}

	public CourseAction() {
		super();
	}

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}
	
	public String selectAllClass() {
		//查询一级课程名称和id
		firstlist = firstdao.selectFirst();
		
		secondlist = firstdao.selectSecond();
		
		thirdlist = firstdao.selectThird();
		/*ActionContext ac1 = ActionContext.getContext();
		ac1.getSession().put("first", first);*/
		return "success";
	}
	
	//创建一级课程
	public String addfirst() {
		First first1 = firstdao.selectOneFirst(first);
		if(first1!=null) {
			JOptionPane.showMessageDialog(null,"该课程名已存在！");
			return "error";
		}else {
		    firstdao.insertOneFirst(first);
		    JOptionPane.showMessageDialog(null,"创建成功了哦！");
			return "success";
		}
		
	}
	
	//查询所有的一级课程
	public String selectfirst() {
		firstlist = firstdao.selectFirst();
		if(firstlist!=null) {
			return "success";
		}else {
		    JOptionPane.showMessageDialog(null,"还没有一级课程哦！");
			return "error";
		}
		
	}
	
	
	//添加新的二级课程
	public String addsecond() {
	Second second1 = firstdao.selectOneSecond(second);
	  
		if(second1!=null) {
			JOptionPane.showMessageDialog(null,"课程名已存在哦！");
			return "error";
			
		}else {
			firstdao.insertOneSecond(second); 
			JOptionPane.showMessageDialog(null,"创建成功了哦！");
		    return "success";
		}
	}
	
	//查询所有的二级课程
	public String selectsecond() {
		secondlist = firstdao.selectSecond();
		
		for(Second s:secondlist) {
			System.out.println(s.getSecond_id()+"======");
		}
		System.out.println();
		if(secondlist!=null) {
			return "success";
		}else {
		    JOptionPane.showMessageDialog(null,"还没有二级课程哦！");
			return "error";
		}
		
	}
	
	
	//添加新的三级课程
		public String addthird() {
		  System.out.println(course.getSecond_id()+"-----");
			coursedao.addCourse(course);
			JOptionPane.showMessageDialog(null,"创建成功了哦！");
			return "success";
				
		}
	//上传图片
/*	 public String uploadImage() {
	    	String path = ServletActionContext.getServletContext().getRealPath("/upload/");
			 //String fileName = myFile.getName(); 
			 File dirf = new File(path);
				// 不存在则创建
			 if ( ! dirf.exists()) {
					dirf.mkdirs();
			 }
			 File saveFile = new File(new File(path), myFileFileName);
				if(!saveFile.getParentFile().exists()){     //如果Images文件夹不存在
					saveFile.getParentFile().mkdirs();      //则创建新的多级文件夹
				}
			 FileUtil.copy(myFile, saveFile);
			 String url = "upload/"+myFileFileName;
			 map.put("src", url);
	    	 return Action.SUCCESS;
	     }*/
}
