package com.works.vetrestapi.redisrepositories;

import com.works.vetrestapi.model.CitySession;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;
import org.springframework.data.repository.CrudRepository;

@EnableRedisRepositories
public interface CitySessionRepository extends CrudRepository<CitySession,Integer> {
}
