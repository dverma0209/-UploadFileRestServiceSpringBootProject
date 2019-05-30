package com.rw.model;

public class Agent {
	 
	private String agentNo;
	private String agentName;
	private String agentSsn;
	
	public Agent() {
		
	}
	
	public Agent(String agentNo, String agentName, String agentSsn) {
		this.agentNo = agentNo;
		this.agentName = agentName;
		this.agentSsn = agentSsn;
	}
	
    public String getAgentNo() {
		return agentNo;
	}

	public void setAgentNo(String agentNo) {
		this.agentNo = agentNo;
	}

	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}

	public String getAgentSsn() {
		return agentSsn;
	}

	public void setAgentSsn(String agentSsn) {
		this.agentSsn = agentSsn;
	}

 
}