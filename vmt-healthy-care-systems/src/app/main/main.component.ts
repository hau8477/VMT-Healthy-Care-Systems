import {Component, OnInit} from '@angular/core';
import {DoctorService} from '../service/doctor.service';
import {Doctor} from '../model/doctor';
import {DepartmentsService} from '../service/departments.service';
import {Departments} from '../model/departments';
import {TokenStorageService} from '../service/token-storage.service';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {
  doctors?: Doctor[];
  departments?: Departments[];
  selectedDoctorId = 0;
  selectedDepartmentsId = 0;
  role?: string;
  username?: string;
  name: string;

  constructor(private doctorService: DoctorService,
              private departmentsService: DepartmentsService,
              private tokenStorageService: TokenStorageService) {
  }

  ngOnInit(): void {
    this.view();
    this.findAllDoctor();
    this.findAllDepartments();
    this.role = this.tokenStorageService.getUser().roles[0];
    this.username = this.tokenStorageService.getUser().username;
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  findNameUser(): void {
    if (this.role === 'ROLE_ADMIN' || this.role === 'ROLE_USER') {
      this.doctorService.findTDoctorByEmail(this.username).subscribe(doctor => {
        console.log(doctor);
        this.name = doctor.name;
      });
    }
  }

  findAllDoctor() {
    this.doctorService.findAll().subscribe(data => {
      this.doctors = data;
    }, error => {
      console.log(error);
    });
  }

  findAllDepartments() {
    this.departmentsService.findAll().subscribe(data => {
      this.departments = data;
    }, error => {
      console.log(error);
    });
  }

  logId() {
    console.log(this.selectedDepartmentsId);
    console.log(this.selectedDoctorId);
  }
}
