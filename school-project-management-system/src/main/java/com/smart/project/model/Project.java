package com.smart.project.model;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.smart.project.enums.CompleteStatus;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

import static javax.persistence.CascadeType.ALL;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "tbl_project")
public class Project {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "description", length = 10000)
    private String projectDescription;

    @CreatedDate
    @CreationTimestamp
    @Column(name = "created_at")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Date date;

    @Column(name = "complete_status")
    private CompleteStatus completeStatus;

    @OneToMany(mappedBy = "project", fetch = FetchType.EAGER, cascade = ALL)
    @JsonManagedReference
    private List<Duration> durationList;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getProjectDescription() {
		return projectDescription;
	}

	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public CompleteStatus getCompleteStatus() {
		return completeStatus;
	}

	public void setCompleteStatus(CompleteStatus completeStatus) {
		this.completeStatus = completeStatus;
	}

	public List<Duration> getDurationList() {
		return durationList;
	}

	public void setDurationList(List<Duration> durationList) {
		this.durationList = durationList;
	}

    

}
