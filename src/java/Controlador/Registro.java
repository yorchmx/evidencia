package Controlador;

import Modelo.Consultas;
import Modelo.IMC;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Registro extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         try (PrintWriter out = response.getWriter()) {
        
             String NombreC = request.getParameter("rnombrec");
             String Edad = request.getParameter("redad");
             String Estatura = request.getParameter("restatura");
             String Sexo = request.getParameter("rsexo");
             String Usuario = request.getParameter("ruser");
             String Contraseña = request.getParameter("rpass");
             Consultas c = new Consultas();
             Consultas cn = new Consultas();
             Usuario u = new Usuario(Usuario, Contraseña, NombreC, Edad, Estatura, Sexo);
             
             //Consultas para RegistroUsuario
             if (!(cn.checkUser(u.getUsuario()))){
                 if (u.getEdad() > 14) {
                     if (u.getEstaura() < 2.5 && u.getEstatura() > .9) {
                         if (c.registroUser(u.getUsuario(), u.getContraseña(), u.getNombrecompleto(),
                                 u.getEdad(), u.getSexo(), u.getEstatura())) {
                             HttpSesion sesion2 = request.getSession(true);
                             sesion2.setAttribute("user", u.getUsuario());
                             sesion2.setAttribute("contraseña", u.getContraseña());
                             
                             response.sendRedirect("index.jsp");
                         } else {
                             response.sendRedirect("registrousuario.jsp");
                         }
                     }else{
                         //SESSION USUARIO
                         HttpSession sesion = request.getSession(true);
                         sesion.setAttribute("usuario", u.getUsuario());
                         sesion.setAttribute("contraseña", u.getContraseña());
                         
                         //SESSION USUARIO
                         response.sendRedirect("index.jsp");
                         }
                     // Consultas terminadas
                     
 }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
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
     *
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
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
