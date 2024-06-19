package com.example.demo;

import java.io.IOException;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@Controller
public class usercontroller 
{
	
	@Autowired
	Userdao dao;
	
	@Autowired
    private Facultydao fdao;
	
	@Autowired
    private PasswordResetService passwordResetService;
	
	@Autowired
    private GrievanceRepository grievanceRepository;
	
	@Autowired
	 private GravienceDao gdao;
	
	@Autowired
    private FacultyRepository fdao1;
	
	@Autowired
	AssGrevDao adao;
	
	
	
	@GetMapping("/test")
	@ResponseBody
	public String tester() {
		return "testing successfull";
	}
	
	@GetMapping("/welcome")
	public String fun10() {
		return "welcome.jsp";
	}
	
	@GetMapping("/userreg")
	public String fun1() {
		return "userregistrastion.jsp";
	}
	
	@PostMapping("/save")  
	public String fun2(Model m, @ModelAttribute("u") User u, HttpServletRequest request) {
		dao.insert(u);
		//m.addAttribute("command", u);
		//StringBuffer stringBufferName = new StringBuffer(u.getFirst_name());
		System.out.println(u.getFirst_name());
		//System.out.println(stringBufferName);
		 m.addAttribute("firstName", u.getFirst_name());
			m.addAttribute("lastName", u.getLast_name());
			m.addAttribute("studentId", u.getStudent_id());
			m.addAttribute("year", u.getYear());
			m.addAttribute("branch", u.getBranch());
			m.addAttribute("email", u.getEmail());



			request.getSession().setAttribute("firstName", u.getFirst_name());
			request.getSession().setAttribute("lastName", u.getLast_name());
			request.getSession().setAttribute("studentId", u.getStudent_id());
			request.getSession().setAttribute("year", u.getYear());
			request.getSession().setAttribute("branch", u.getBranch());
			request.getSession().setAttribute("email", u.getEmail());





		return "redirect:/user";
	}
	
	@GetMapping("/userlog")
	public String fun3() {
		return "userlogin.jsp";
	}
	
	@PostMapping("/loggingin")
	public String login2(Model m, @ModelAttribute("pf") User pf, HttpServletRequest request) {
			if(dao.validateLogin(pf)) {
				 User u = dao.getDetailsById(pf);
				 //m.addAttribute("command", u);
				 //StringBuffer stringBufferName = new StringBuffer(u.getFirst_name());
				 System.out.println(u.getFirst_name());
				// System.out.println(stringBufferName);
				 m.addAttribute("firstName", u.getFirst_name());
					m.addAttribute("lastName", u.getLast_name());
					m.addAttribute("studentId", u.getStudent_id());
					m.addAttribute("year", u.getYear());
					m.addAttribute("branch", u.getBranch());
					m.addAttribute("email", u.getEmail());
					




					request.getSession().setAttribute("firstName", u.getFirst_name());
					request.getSession().setAttribute("lastName", u.getLast_name());
					request.getSession().setAttribute("studentId", u.getStudent_id());
					request.getSession().setAttribute("year", u.getYear());
					request.getSession().setAttribute("branch", u.getBranch());
					request.getSession().setAttribute("email", u.getEmail());

				 return "redirect:/user";
			}
			else {
				return "userlogin.jsp";
			}
	}
	
	@GetMapping("/facultylog")
	public String fun4() {
		return "facultylogin.jsp";
	}
	
	@PostMapping("/loggedin")
	public String login1(Model m, @ModelAttribute("pf") Faculty pf, HttpServletRequest request) {
			if(fdao.validateLogin(pf)) {
				 Faculty f = fdao.getDetailsById(pf);
				 //m.addAttribute("command", u);
				 //StringBuffer stringBufferName = new StringBuffer(u.getFirst_name());
				 System.out.println(f.getName());
				// System.out.println(stringBufferName);
				 m.addAttribute("facultyName", f.getName());
				 request.getSession().setAttribute("facultyName", f.getName());

				 
				 return "redirect:/faculty";
			}
			else {
				return "facultylogin.jsp";
			}
	}
	

	
	@GetMapping("/user")
	public String userPage(Model m) {
	    return "user.jsp";
	}
	
	@GetMapping("/faculty")
	public String facultyPage() {
	    return "faculty.jsp";
	}

	
	@PostMapping("/forgotpassword")
	public String forgotPassword(@RequestParam(name = "email", required = false) String email) {
	    if (email == null) {
	        // Handle cases where 'email' is missing (e.g., display an error message).
	    	return "redirect:/forgot";
	    } else {
	        User user = dao.findByEmail(email);
	        if (user != null) {
	            passwordResetService.createPasswordResetToken(user);
	            // Password reset process continues...
	            return "redirect:/resetpass/{token}";
	        } else {
	            // Handle cases where the user doesn't exist.
	        	return "redirect:/userlog";
	        }
	    }
	}
	
	@GetMapping("/forgot")
	public String fun8() {
		return "forgot.jsp";
	}


	@GetMapping("/resetpass/{token}")
	public String showResetPasswordForm(@PathVariable String token, Model model) {
	    boolean validToken = passwordResetService.isTokenValid(token);
	    if (validToken) {
	        model.addAttribute("token", token);
	        return "redirect:/reset/" + token;
	    } else {
	        return "redirect:/invalid"; // Display an error page
	    }
	}
	
	@GetMapping("/reset/{token}")
	public String fun7(@PathVariable String token, Model model) {
		model.addAttribute("token", token);
		return "reset-password-form.jsp";
	}
	
	@GetMapping("/invalid")
	public String fun6() {
		return "invalid.jsp";
	}
    
    @PostMapping("/resetpass")
    @ResponseBody
    public String resetPassword(@RequestParam("token") String token, @RequestParam("newPassword") String newPassword) {
        boolean success = passwordResetService.resetPassword(token, newPassword);
        if (success) {
            return "password-reset-success"; // Display a success page
        } else {
            return "password-reset-failure"; // Display an error page
        }
    }
    
    @GetMapping("/checkInternet")
    @ResponseBody
    public String checkInternet() {
        try {
            // Attempt to connect to a reliable website
            InetAddress.getByName("www.google.com").isReachable(5000); // Replace with a reliable website
            return "Internet is connected.";
        } catch (IOException e) {
            return "Internet is not connected.";
        }
    }
    
    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false); // Retrieve the current session (if it exists)

        if (session != null) {
            session.invalidate(); // Invalidate the session to log the user out
        }

        // Redirect to the login page or any other appropriate page
        return "redirect:/welcome"; // Change the URL as needed
    }
    
    @GetMapping("/logout1")
    public String logout1(HttpServletRequest request) {
        HttpSession session = request.getSession(false); // Retrieve the current session (if it exists)
        System.out.println(session);
        if (session != null) {
            session.invalidate(); // Invalidate the session to log the user out
        }

        // Redirect to the login page or any other appropriate page
        return "redirect:/welcome"; // Change the URL as needed
    }
    
    @GetMapping("/submitgrievance")
	public String fun9() {
		return "submitgrievance.jsp";
	}
    
//
//    @GetMapping("/grievance")
//    public String showGrievanceForm(Model model) {
//        model.addAttribute("grievance", new Grievance());
//        return "grievance-form";
//    }

    @PostMapping("/grievance")
    public String submitGrievance(Model m ,@ModelAttribute Grievance grievance, @RequestParam("file") MultipartFile file) {
        // Handle file upload and save it to the grievance object's image property
        try {
            grievance.setImage(file.getBytes());
        } catch (IOException e) {
            e.printStackTrace();
        }
//        m.addAttribute("var", grievance);
        m.addAttribute("successMessage", "Grievance submitted successfully!");
        grievanceRepository.save(grievance);
        return "redirect:/user";
    }
    
    
    @GetMapping("/image/{id}")
    @ResponseBody
    public void showImage(@PathVariable("id") Long id, HttpServletResponse response) throws IOException {
        Grievance grievance = grievanceRepository.findById(id).orElse(null);
         
        if (grievance != null) {
            byte[] imageData = grievance.getImage();
            if (imageData != null) {
                response.setContentType("image/jpeg"); // Adjust content type based on your image type
                response.getOutputStream().write(imageData);
            }
        }
    }



    @GetMapping("/your-url-path")
    public String handleGetRequest(Model model) {
        // You can perform actions such as loading data, setting attributes for the view, and returning a view name.
        
        // For example, load some data and add it to the model for rendering in the view.
         // Replace with your actual data retrieval logic.
        
        // Return the name of the view (HTML or JSP template) to render the response.
        return "your-view-name"; // Replace with the name of your view template.
    }
    
    
    @GetMapping("/grievancesr")
    public String listGrievances(Model model) {
        List<Grievance> grievances = grievanceRepository.findAll(); // Retrieve all grievances from the database
        model.addAttribute("grievances", grievances); // Add the data to the model
        return "grievanceshis"; // Return the name of your JSP view
    }

    
    @GetMapping("/grievanceshis")
    public String fun21() {
    	
    	return "grievanceHistory.jsp";
    }
    
    

    @GetMapping("/track")
    public String fun22() {
    	
    	return "tack.jsp";
    }
    @PostMapping("/save1")
    public String saveFaculty(Faculty faculty) {
        fdao.insert(faculty);
        return "redirect:/facultylog"; // Redirect to a success page
    }
    
    @GetMapping("/management")
    public String fun26() {
    	
    	return "management.jsp";
    }
    @GetMapping("/grievancesm")
    public String listGrievancess(Model model,Model m,Model mo) {
        List<Grievance> grievances = grievanceRepository.findAll();
        // Retrieve all grievances from the database
        List<Faculty> faculty=fdao1.findAll();
        model.addAttribute("grievances", grievances); // Add the data to the model
        m.addAttribute("faculty", faculty); // Add the data to the model
        System.out.print(faculty);
        

        return "mgrev.jsp"; // Return the name of your JSP view
    }
  
    @GetMapping("/delete/{id}")
    public String delete1(@PathVariable("id") Long id) {
     gdao.deleteGrievanceById(id);
     return "redirect:/grievancesm";
    }
    
    
    @PostMapping("/assignGrievance")
    public String assignGrievance(@RequestParam("id") Long id,
                                  @RequestParam("category") String category,
                                  @RequestParam("description") String description,
                                  @RequestParam("idnum") Long idnum,
                                  @RequestParam("facultyId") Long facultyId) {

        Grievance grievance = new Grievance();
        grievance.setId(id);
        grievance.setCategory(category);
        grievance.setDescription(description);
        grievance.setIdnum(idnum);

        // Set other properties as needed

        grievance.assignGrievance(grievance, facultyId);

        return "redirect:/list"; // Redirect to the page displaying the list of grievances.
    }
    
  
//    @WebServlet("/assignGrievance")
//    public class AssignGrievanceServlet extends HttpServlet {
//        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            String grievanceId = request.getParameter("id");
//            String facultyId = request.getParameter("facultyId");
//
//            // Database connection parameters
//            String dbUrl = "jdbc:mysql://localhost:3306/grievance";
//            String dbUser = "root";
//            String dbPassword = "bvsk2085";
//
//            Connection conn = null;
//            PreparedStatement stmt = null;
//
//            try {
//                // Establish a database connection
//                Class.forName("com.mysql.jdbc.Driver");
//                conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
//
//                // Perform SQL operation to update the grievance assignment
//                String updateQuery = "UPDATE grievance SET grievance.assigned_faculty_id = ? WHERE grievance.id = ?";
//                stmt = conn.prepareStatement(updateQuery);
//                stmt.setString(1, facultyId);
//                stmt.setString(2, grievanceId);
//                stmt.executeUpdate();
//
//                // Redirect the user back to the grievance list
//                response.sendRedirect("/grievance.jsp");
//            } catch (Exception e) {
//                e.printStackTrace();
//                // Handle database-related exceptions here
//            } finally {
//                // Close the database resources
//                if (stmt != null) {
//                    try {
//                        stmt.close();
//                    } catch (SQLException e) {
//                        e.printStackTrace();
//                    }
//                }
//                if (conn != null) {
//                    try {
//                        conn.close();
//                    } catch (SQLException e) {
//                        e.printStackTrace();
//                    }
//                }
//            }
//        }
//    }

    
    @GetMapping("/idnum")
    public String fun30(Model model) {
        // You can initialize the "id" model attribute here if needed
        model.addAttribute("id", 0L); // Default value, change as needed
        return "stugre.jsp";
    }
    
    
    @GetMapping("/grievancesrstu")
    public String listGrievances(@RequestParam("idnum") String studentId, Model model) {
        try {
            Long studentIdValue = Long.parseLong(studentId); // Parse the String to Long

            List<Grievance> grievances = grievanceRepository.findByIdnum(studentIdValue);

            if (!grievances.isEmpty()) {
                model.addAttribute("grievances", grievances);
            } else {
                // Handle the case where no matching grievance is found.
            }
        } catch (NumberFormatException e) {
            // Handle the case where the "studentId" parameter is not a valid Long.
            // You can redirect to an error page or return an error response.
            return "errorPage"; // Create an error page.
        }

        return "grievanceshis";
    }
    
    
    
    
}
    
	
