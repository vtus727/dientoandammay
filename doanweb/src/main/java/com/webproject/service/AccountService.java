package com.webproject.service;

import com.webproject.model.Account;

import java.util.List;

public interface AccountService {
    public List<Account> getAllAccount();

    public Account getAccountById(Integer id);

    public void saveOrUpdate(Account account);

    public void deleteAccount(Integer id);
}
