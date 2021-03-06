package com.christian.languages.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.christian.languages.models.Language;

@Repository
public interface LanguageRepository extends CrudRepository<Language, Long>{
	
	@Override
	List<Language> findAll();
}