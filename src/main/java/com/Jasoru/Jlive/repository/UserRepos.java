package com.Jasoru.Jlive.repository;

import com.Jasoru.Jlive.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepos extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
