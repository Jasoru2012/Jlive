package com.Jasoru.Jlive.repository;

import com.Jasoru.Jlive.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepos extends CrudRepository<Message, Integer> {

    List<Message> findByTag(String tag);

}
