import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class AccountService {

  constructor(private http: HttpClient) { }
  // changePassword(account: Account): Observable<Teacher> {
  //   return this.http.patch<Admin>('http://localhost:8080/api/public/change-password', account);
  // }
}
