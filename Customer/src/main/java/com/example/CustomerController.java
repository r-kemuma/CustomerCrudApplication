package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class CustomerController {

    @Autowired
    private CustomerService customerService;

@GetMapping("")
    public String showCustomerForm(Map<String, Object> model){
    model.put("customer", new Customer());
        return "customer_form";
    }

    @PostMapping("Customer/Submit")
    public  String saveCustomer(Customer customer){
        customerService.save(customer);
        return "customer_form";
    }
}
