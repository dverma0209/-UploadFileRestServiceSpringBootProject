package com.rw.DAO;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
import org.springframework.stereotype.Repository;

import com.rw.model.Agent;
 
@Repository
public class AgentDAO {
 
    private static final Map<String, Agent> agentMap = new HashMap<String, Agent>();
 
    static {
    	Agent agent1 = new Agent("1", "Yashika", "123-12-1452");
        Agent agent2 = new Agent("2", "Yogi", "541-58-8596");
        Agent agent3 = new Agent("3", "Yash", "457-54-5877");
        Agent agent4 = new Agent("4", "Isha", "123-45-7489");
        Agent agent5 = new Agent("5", "Gaurangee", "666-95-8877");
        Agent agent6 = new Agent("6", "Deepak", "325-55-4422");
 
        agentMap.put(agent1.getAgentNo(), agent1);
        agentMap.put(agent2.getAgentNo(), agent2);
        agentMap.put(agent3.getAgentNo(), agent3);
        agentMap.put(agent4.getAgentNo(), agent4);
        agentMap.put(agent5.getAgentNo(), agent5);
        agentMap.put(agent6.getAgentNo(), agent6);
    }
 
    public List<Agent> getAllAgents() {
        Collection<Agent> c = agentMap.values();
        List<Agent> list = new ArrayList<Agent>();
        list.addAll(c);
        return list;
    }
 
}