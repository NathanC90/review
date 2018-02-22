package org.iii.ee100.sample.drama;

import java.util.List;

public class Drama {
	Long  id;
	private String dname;
	private Integer noofseasons;
	private Integer noofepisodes;
	private Integer year;
	private String country;
	private List<Actor> actor;
	
	public long getId() {
		return id;
	}
	public void setId(Long  id) {
		this.id = id;
	}
	
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	

	public Integer getSeason() {
		return noofseasons;
	}
	public void setSeason(Integer noofseasons) {
		this.noofseasons = noofseasons;
	}
	
	public Integer getEpisode() {
		return noofepisodes;
	}
	public void setEpisode(Integer noofepisodes) {
		this.noofepisodes = noofepisodes;
	}	

	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}	
	
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public List<Actor> getActor() {
		return actor;
	}
	public void setActor(List<Actor> actor) {
		this.actor = actor;
	}
	
	
}
 // end of class Drama
