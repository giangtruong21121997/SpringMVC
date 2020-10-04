package com.truongvangiang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.truongvangiang.bean.Reservation;
@RequestMapping("/reservation")
@Controller
public class ReservationController {
	@RequestMapping("/bookingForm")
	public String bookForm(Model model) {
		
		Reservation res = new Reservation();
		model.addAttribute("reservation", res);
		System.out.println("in controller");
		return "reservation-page";
	}
	@RequestMapping("/submitForm")
	public String submitForm(@ModelAttribute("reservation")
	Reservation res) {
		return "confirmation-form";
	}
	

}
