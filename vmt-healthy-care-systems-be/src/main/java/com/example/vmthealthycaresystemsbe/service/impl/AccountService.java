package com.example.vmthealthycaresystemsbe.service.impl;

import com.example.vmthealthycaresystemsbe.model.Account;
import com.example.vmthealthycaresystemsbe.repository.IAccountRepository;
import com.example.vmthealthycaresystemsbe.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service
public class AccountService implements IAccountService {
    @Autowired
    private IAccountRepository accountRepository;

    @Override
    public Account findAccountByEmail(String username) {
        return accountRepository.findAccountByEmail(username);
    }

    public boolean checkOldPassword(String oldPassword, String password) {
        return BCrypt.checkpw(oldPassword, password);
    }

    @Override
    public void updateAccount(Account account) {
        accountRepository.updateAccount(account.getId(), account.getPassword());
    }

    @Override
    public void addAccount(Account account) {
        accountRepository.save(account);
    }
}
