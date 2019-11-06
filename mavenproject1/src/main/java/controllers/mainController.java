/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import DAO.DAO;
import DAO.DataSourceFactory;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pedago
 */
public class mainController {
    
    
    
    
    	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		try {	// Trouver la valeur du paramètre HTTP customerID
			String val = request.getParameter("customerID");
			if (val == null)
				throw new Exception("Le paramètre customerID n'a pas été transmis");
			
			// on doit convertir cette valeur en entier (attention aux exceptions !)
			int customerID = Integer.valueOf(val);

			DAO dao = new DAO(DataSourceFactory.getDataSource());
			List<String> L = dao.getDiscountCode();
			// On renseigne un attribut utilisé par la vue
                        
                        String s = null;
                        for(int i =0; i< L.size(); i++){
                         s = L.get(i);
                        
                        
                        }
			request.setAttribute("CODE", s);
			// On redirige vers la vue
			request.getRequestDispatcher("vue/mainjsp.jsp").forward(request, response);
                        
		} catch (Exception e) {
			// On renseigne un attribut utilisé par la vue
			request.setAttribute("error", e.getMessage());			
			// On redirige vers la page d'erreur
			request.getRequestDispatcher("views/errorView.jsp").forward(request, response);
		}
		
	}

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

    
}
