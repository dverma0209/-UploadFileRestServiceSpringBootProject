package com.rw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rw.DAO.AgentDAO;
import com.rw.model.Agent;
 
@RestController
 
public class AgentController {
 
    @Autowired
    private AgentDAO agentDAO;
 
    @GetMapping(value = "/agents", produces = { MediaType.APPLICATION_JSON_VALUE })
    public List<Agent> getAgents() {
        List<Agent> list = agentDAO.getAllAgents();
        return list;
    }
 
}