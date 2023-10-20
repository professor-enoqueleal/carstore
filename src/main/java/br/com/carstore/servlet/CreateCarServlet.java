package br.com.carstore.servlet;

import br.com.carstore.dao.CarDao;
import br.com.carstore.model.Car;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create")
public class CreateCarServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws ServletException, IOException {

        String carId = httpServletRequest.getParameter("id");
        String carName = httpServletRequest.getParameter("car-name");

        CarDao carDao = new CarDao();
        Car car = new Car(carId, carName);

        if (carId.isBlank()) {

            carDao.createCar(car);

        } else {

            carDao.updateCar(car);
        }


        httpServletResponse.sendRedirect("/find-all-cars");

    }

}
