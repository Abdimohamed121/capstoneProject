package com.smart.project.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.smart.project.enums.CompleteStatus;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.util.Date;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Table(name = "tbl_duration")
public class Duration {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "duration_description")
    private String durationDescription;

    @Column(name = "complete_status")
    private CompleteStatus completeStatus;

    @Transient
    private Long projectId;

    @CreatedDate
    @CreationTimestamp
    @Column(name = "created_at")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Date date;

    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "fk_duration")
    private Project project;

    public Duration(String durationDescription, Project project) {
        this.durationDescription = durationDescription;
        this.project = project;
    }

	public Duration() {
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDurationDescription() {
		return durationDescription;
	}

	public void setDurationDescription(String durationDescription) {
		this.durationDescription = durationDescription;
	}

	public CompleteStatus getCompleteStatus() {
		return completeStatus;
	}

	public void setCompleteStatus(CompleteStatus completeStatus) {
		this.completeStatus = completeStatus;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
}
