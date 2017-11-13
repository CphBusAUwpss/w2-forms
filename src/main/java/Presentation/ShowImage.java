package Presentation;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thomas Hartmann - tha@cphbusiness.dk created on Nov 9, 2016
 */
@WebServlet(name="ShowImage", urlPatterns={"/ShowImage"})
public class ShowImage extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //Set the content type to image so that the browser will interpret the response as an image
        response.setContentType("image/jpg");
        //Read the parameter that tells the absolute path the the image
        String imagePath = request.getParameter("path");
        if(imagePath != null){
            File file = new File(imagePath);
            
            //Read the binary stream from the image file and write it to the response output stream
            FileInputStream fis = new FileInputStream(file);
            OutputStream os = response.getOutputStream();
            byte[] buffer = new byte[1024];
            int count = 0;
            while((count = fis.read(buffer))>= 0){
                os.write(buffer, 0, count);
            }
            os.close();
            fis.close();
        }
        else{
            System.out.println("ERROR: in file");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
