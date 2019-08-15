package com.qst.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.qst.dao.CourseDao;
import com.qst.dao.FirstDao;
import com.qst.pojo.Course;
import com.qst.pojo.First;
import com.qst.pojo.Second;
import com.qst.pojo.Third;
import com.qst.pojo.User;

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
	User user;
	Course course;
	First first;
	Second second;
	Third third;
	HttpServletRequest request;
	HttpSession session;
	
    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

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
    List<Course> courselist;
	
	public List<Course> getCourselist() {
		return courselist;
	}

	public void setCourselist(List<Course> courselist) {
		this.courselist = courselist;
	}

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
		//将所有信息存入session之中
        request = ServletActionContext.getRequest();
        session = request.getSession();  //定义session来存放数据
		//查询所有三级课程
		courselist = firstdao.selectCourse();
		firstlist = firstdao.selectFirst();
		secondlist = firstdao.selectSecond();
		session.setAttribute("firstlist", firstlist);
		session.setAttribute("secondlist", secondlist);
		session.setAttribute("courselist", courselist);
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
		
		if(secondlist!=null) {
			return "success";
		}else {
		    JOptionPane.showMessageDialog(null,"还没有二级课程哦！");
			return "error";
		}
		
	}
	
	
	//添加新的三级课程
		/*public String addthird() {
         System.out.println(course.getCourse_img()+"图片地址");
		  coursedao.addCourse(course);
		  JOptionPane.showMessageDialog(null,"创建成功了哦！");
		  return "success";
				return "error";
		}*/
		
		//查询所有的三级课程
		public String selectthird() {
			courselist = firstdao.selectCourse();
			
			if(courselist!=null) {
				return "success";
			}else {
			    JOptionPane.showMessageDialog(null,"还没有三级课程哦！");
				return "error";
			}
			
		}
		
		//查询一级课程目录下面的所有三级课程
		public String selectbyfirst() {
			System.out.println(first.getFirst_id()+"====");
			List<Second> secondlist1 = firstdao.selectSecondbyFirst(first);//查询到二级课程 
			courselist = firstdao.selectCourse();
			if(secondlist1.isEmpty()) {   //判断是否有二级课程
			    courselist.clear();
				return "error";
			}else {
				//根据查询到的所有二级课程来查询对应的三级课程
				courselist = firstdao.selectThirdbySecond(secondlist1);
				return "success";	
			}
			
		}
		
		
		//查询二级课程目录下面的所有三级课程
				public String selectbysecond() {
					System.out.println(second.getSecond_id()+"=====");
					courselist = firstdao.selectThirdbySecond1(second);//查询到二级课程	
					return "success";	
				}
				
				
		//查询文本框中输入的课程名称
				public String selectbytext() {
					System.out.println(course.getCourse_name()+"][][]");
					courselist = coursedao.selectThirdbyText(course);//查询到三级课程	
					return "success";	
		}
				
				//根据一级id查询一级课程
				public String selectoneFirst() {
					first = firstdao.selectoneFirst(first);
					return "success";
				}
				
				//根据二级id查询二级课程
				public String selectoneSecond() {
					second = firstdao.selectoneSecond(second);
					return "success";
				}
				
				//根据三级id查询三级课程
				public String selectoneThird() {
					course = firstdao.selectoneCourse(course);
					return "success";
				}
				
				//更新一个一级课程
				public String updateOneFirst() {
					firstdao.updateOneFirst(first);
					selectAllClass();
					return "success";
				}
				
				//更新一个二级课程
				public String updateOneSecond() {
					firstdao.updateOneSecond(second);
					selectAllClass();
					return "success";
				}
				
				//更新一个三级课程
			/*	public String updateOneThird() {
					firstdao.updateOneThird(course);
					selectAllClass();
					return "success";
				}*/
				
				//删除一个一级课程
				public String deleteOneFirst() {
					List<Second> secondlist1 = firstdao.selectSecondbyFirst(first);//查询到二级课程
					firstdao.deleteOneFirst(first);
					if(!secondlist1.isEmpty()) {
						//根据查询到的所有二级课程来查询对应的三级课程
						courselist = firstdao.selectThirdbySecond(secondlist1);
						if(!courselist.isEmpty()) {
							for(Course c:courselist) {   //删除多个三级课程
								firstdao.deleteOneThird(c);
							}
						}
						for(Second s: secondlist1) {
							firstdao.deleteOneSecond(s);  //删除多个二级课程
						}
					}
					JOptionPane.showMessageDialog(null,"删除成功了哦！");
					selectAllClass();//重新查询一边所有信息
						return "success";	
				}
				
				//删除一个二级课程
				public String deleteOneSecond() {
					//根据查询到的所有二级课程来查询对应的三级课程
					courselist = firstdao.selectThirdbySecond1(second);
					firstdao.deleteOneSecond(second);
					
					if(!courselist.isEmpty()) {
				       for(Course c: courselist) {
				    	   firstdao.deleteOneThird(c);
				       }
					}
					JOptionPane.showMessageDialog(null,"删除成功了哦！");
					selectAllClass();
					return "success";
				}
				
				//删除一个三级课程
				public String deleteOneThird() {
					firstdao.deleteOneThird(course);
					JOptionPane.showMessageDialog(null,"删除成功了哦！");
					selectAllClass();
					
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
