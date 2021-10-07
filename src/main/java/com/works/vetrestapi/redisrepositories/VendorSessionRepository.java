package com.works.vetrestapi.redisrepositories;


import com.works.vetrestapi.model.VendorSession;
import org.springframework.data.redis.repository.configuration.EnableRedisRepositories;
import org.springframework.data.repository.CrudRepository;

@EnableRedisRepositories
public interface VendorSessionRepository extends CrudRepository<VendorSession, Integer> {
}
