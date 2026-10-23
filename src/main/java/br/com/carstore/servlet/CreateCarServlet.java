package br.com.carstore.servlet;

import br.com.carstore.dao.CarDAO;
import br.com.carstore.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create-car")
public class CreateCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {

        String name = request.getParameter("name");
        String color = request.getParameter("color");
        String id = request.getParameter("id");

        CarDAO dao = new CarDAO();
        Car car = new Car();

        if(!id.isEmpty()) {
            car.setName(name);
            car.setColor(color);
            car.setId(id);
            dao.updateCar(car);
        } else {
            car.setName(name);
            car.setColor(color);
            dao.createCar(car);
        }

       resp.sendRedirect("/find-all-cars");

    }

}
