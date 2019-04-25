package com.webproject.service;

import com.webproject.model.Account;
import com.webproject.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AccountServiceImpl implements AccountService{
    @Autowired
    AccountRepository accountRepository;

    @Override
    public List<Account> getAllAccount() {
        return (List<Account>) accountRepository.findAll();
    }

    @Override
    public Account getAccountById(Integer id) {
        return accountRepository.findById(id).get();
    }

    @Override
    public void saveOrUpdate(Account account) {
        accountRepository.save(account);
    }

    @Override
    public void deleteAccount(Integer id) { accountRepository.deleteById(id);
    }
}
