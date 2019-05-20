package com.rw.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.rw.model.Client;

@RestController
public class ClientController {

    @PostMapping(path = "/addClient")
    public String clientomerInformation(@RequestBody Client client) {

        return "Customer information saved successfully ::." + client.getClientNo() + " " + client.getName() + " " + client.getSsn();
    }
}