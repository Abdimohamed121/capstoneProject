package com.smart.project.dto;

import com.smart.project.enums.CompleteStatus;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class AddDurationDto {
    private Long projectId;
    private String durationDescription;
    private CompleteStatus completeStatus;
	public Long getProjectId() {
		return projectId;
	}
	public void setProjectId(Long projectId) {
		this.projectId = projectId;
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
    
    
}
