package com.example.vmthealthycaresystemsbe.service;


import com.example.vmthealthycaresystemsbe.model.Account;

public interface IAccountService {
    Account findAccountByEmail(String email);
    boolean checkOldPassword(String oldPassword, String password);


    void updateAccount(Account account);
    void addAccount(Account account);
}
