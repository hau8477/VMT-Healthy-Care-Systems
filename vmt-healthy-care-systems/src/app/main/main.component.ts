import {Component, OnInit} from '@angular/core';
import {DoctorService} from '../service/doctor.service';
import {Doctor} from '../model/doctor';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {
  doctors?: Doctor[];
  selectedDoctorId = 0;

  constructor(private doctorService: DoctorService) {
  }

  ngOnInit(): void {
    this.view();
    this.findAll();
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  findAll() {
    this.doctorService.findAll().subscribe(data => {
      this.doctors = data;
    }, error => {
      console.log(error);
    });
  }

  logId() {
    console.log(this.selectedDoctorId);
  }
}
