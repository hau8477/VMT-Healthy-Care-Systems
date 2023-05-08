import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {Departments} from '../model/departments';

@Injectable({
  providedIn: 'root'
})
export class DepartmentsService {

  constructor(private httpClient: HttpClient) {
  }

  findAll(): Observable<Departments[]> {
    return this.httpClient.get<Departments[]>(`http://localhost:8080/api/departments/findAll`);
  }

  findById(id: number): Observable<Departments> {
    return this.httpClient.get<Departments>(`http://localhost:8080/api/departments/details/${id}`);
  }
}
