import { Injectable } from '@angular/core';

const TOKEN_KEY = 'auth-token';
const USER_KEY = 'auth-user';

@Injectable({
  providedIn: 'root'
})
export class TokenStorageService {
  constructor() {
  }

  // trả về true nếu tồn tại token trong lưu trữ, ngược lại trả về false.
  isLogger() {
    return !!this.getToken();
  }

  // xóa tất cả thông tin lưu trữ của token và người dùng.
  signOut() {
    window.localStorage.clear();
    window.sessionStorage.clear();
  }

  // lưu trữ token vào localStorage, trước khi lưu trữ sẽ xóa đi thông tin token hiện tại nếu có.
  public saveTokenLocal(token: string) {
    window.localStorage.removeItem(TOKEN_KEY);
    window.localStorage.setItem(TOKEN_KEY, token);
  }

  // lưu trữ token vào sessionStorage, trước khi lưu trữ sẽ xóa đi thông tin token hiện tại nếu có.
  public saveTokenSession(token: string) {
    window.sessionStorage.removeItem(TOKEN_KEY);
    window.sessionStorage.setItem(TOKEN_KEY, token);
  }

  //  trả về giá trị của token trong lưu trữ, ưu tiên sử dụng localStorage nếu tồn tại, nếu không thì sử dụng sessionStorage.
  public getToken(): string {
    if (localStorage.getItem(TOKEN_KEY) !== null) {
      return localStorage.getItem(TOKEN_KEY);
    } else {
      return sessionStorage.getItem(TOKEN_KEY);
    }
  }

  // lưu trữ thông tin người dùng vào localStorage, trước khi lưu trữ sẽ xóa đi thông tin người dùng hiện tại nếu có.
  public saveUserLocal(user) {
    window.localStorage.removeItem(USER_KEY);
    window.localStorage.setItem(USER_KEY, JSON.stringify(user));
  }

  // lưu trữ thông tin người dùng vào sessionStorage, trước khi lưu trữ sẽ xóa đi thông tin người dùng hiện tại nếu có.
  public saveUserSession(user) {
    window.sessionStorage.removeItem(USER_KEY);
    window.sessionStorage.setItem(USER_KEY, JSON.stringify(user));
  }

  // trả về thông tin người dùng trong lưu trữ, ưu tiên sử dụng localStorage nếu tồn tại, nếu không thì sử dụng sessionStorage.
  public getUser() {
    if (localStorage.getItem(USER_KEY) !== null) {
      return JSON.parse(localStorage.getItem(USER_KEY));
    } else {
      return JSON.parse(sessionStorage.getItem(USER_KEY));
    }
  }
}
