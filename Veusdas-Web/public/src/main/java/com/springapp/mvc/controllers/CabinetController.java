//package com.springapp.mvc.controllers;
//
//import mvc.common.Users;
//import mvc.services.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import javax.servlet.http.HttpServletRequest;
//
//@Controller
//@RequestMapping("/cabinet")
//public class CabinetController {
//
//    @Autowired
//    private HttpServletRequest request;
//    @Autowired
//    private OrderService orderService;
//    @Autowired
//    private UserService userService;
//    @Autowired
//    private AddressService addressService;
//    @Autowired
//    private OrderGoodsService service;
//
//    @RequestMapping(method = RequestMethod.GET)
//    public String renderCabinetPage() {
//        Users user = userService.getByLogin(request.getUserPrincipal().getName());
//        request.setAttribute("address",addressService.getByUserId(user.getId()));
//        return "cabinet/cabinetPage";
//    }
//
//    @RequestMapping(value = "/delete", method = RequestMethod.POST)
//    public String deleteOrder(Long orderId) {
//        OrdersInfo order = orderService.getById(orderId);
//        orderService.delete(order);
//        service.delete(orderId);
//        return "cabinet/ajaxOrder";
//    }
//
//    @RequestMapping(value = "/orders", method = RequestMethod.GET)
//    public String renderOrders() {
//        Users user = userService.getByLogin(request.getUserPrincipal().getName());
//        request.setAttribute("orders", orderService.getByUser(user));
//        return "cabinet/orders";
//    }
//}
