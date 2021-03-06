package com.caveofprogramming.spring.aop;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.caveofprogramming.spring.camera.accessories.Lens;

public class App {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"com/caveofprogramming/spring/aop/beans.xml");

		ICamera camera = (ICamera) context.getBean("camera");


	    camera.snap();
	    camera.snap(500);
	    camera.snapNighttime();
	    
	    Car car = (Car)context.getBean("car");
	    car.start();	
	    
	    camera.snapCar( new Car() );

		context.close();
	}
}
