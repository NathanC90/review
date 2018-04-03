package org.iii.ee100.animour.news.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TICKET")
public class Ticket {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="SUBJECT_ID")
	private Long subject_id;
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="TICKET_PRICE")
	private int ticket_price;
	@Column(name="QUANTITY")
	private int quantity;
	
	
	@Override
	public String toString() {
		return "Ticket [subject_id=" + subject_id + ", subject=" + subject + ", ticket_price=" + ticket_price
				+ ", quantity=" + quantity + "]";
	}
	
	public Long getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(Long subject_id) {
		this.subject_id = subject_id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(int ticket_price) {
		this.ticket_price = ticket_price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
