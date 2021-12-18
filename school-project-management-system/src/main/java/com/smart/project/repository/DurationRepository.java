package com.smart.project.repository;

import com.smart.project.model.Duration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface DurationRepository extends JpaRepository<Duration, Long> {
    @Override
    @Modifying
    @Query("delete from Duration duration where duration.id=?1")
    void deleteById(Long id);
}