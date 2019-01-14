package com.edubaik.strokes.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.edubaik.strokes.models.Shot;

@Repository
public interface ShotRepository extends CrudRepository<Shot, Long>{
	Shot findByDistanceAndType(Integer yards, String shotType);
}
