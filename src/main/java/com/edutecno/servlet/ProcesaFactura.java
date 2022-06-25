package com.edutecno.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProcesaFactura
 */
@WebServlet("/procesaFactura")
public class ProcesaFactura extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre, empresa, rut, direccion,ciudad,pais;
		
		nombre = request.getParameter("nombre");
		empresa = request.getParameter("empresa");
		rut = request.getParameter("rut");
		direccion = request.getParameter("direccion");
		ciudad = request.getParameter("ciudad");
		pais = request.getParameter("pais");

		Integer cantValvulas, cantTurbo, cantFrenos, cantRefri, cantPlumillas;

		cantValvulas = Integer.parseInt(request.getParameter("valvulas"));
		cantTurbo = Integer.parseInt(request.getParameter("turbo"));
		cantFrenos = Integer.parseInt(request.getParameter("frenos"));
		cantRefri = Integer.parseInt(request.getParameter("refri"));
		cantPlumillas = Integer.parseInt(request.getParameter("plumillas"));
		
		int precioValvulas, precioTurbo, precioFrenos, precioRefri, precioPlumillas;
		precioValvulas = 120000;
		precioTurbo = 1700000;
		precioFrenos = 760000;
		precioRefri = 2300000;
		precioPlumillas = 10000;

		Integer valorTotal = (
				cantValvulas * precioValvulas + 
				cantTurbo * precioTurbo + 
				cantFrenos * precioFrenos + 
				cantRefri * precioRefri + 
				cantPlumillas * precioPlumillas
				);
		
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);

		request.setAttribute("precioTotalValvulas", cantValvulas * precioValvulas);
		request.setAttribute("precioTotalTurbo", cantTurbo * precioTurbo);
		request.setAttribute("precioTotalFrenos", cantFrenos * precioFrenos);
		request.setAttribute("precioTotalRefri", cantRefri * precioRefri);
		request.setAttribute("precioTotalPlumillas", cantPlumillas * precioPlumillas);

		request.setAttribute("cantValvulas", cantValvulas);
		request.setAttribute("cantTurbo", cantTurbo);
		request.setAttribute("cantFrenos", cantFrenos);
		request.setAttribute("cantRefri", cantRefri);
		request.setAttribute("cantPlumillas", cantPlumillas);

		request.setAttribute("valorTotal", valorTotal);

		request.getRequestDispatcher("/generaFactura").forward(request, response);

	}
	
	
	
	

}
