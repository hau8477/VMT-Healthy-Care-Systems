import {Component, OnInit} from '@angular/core';
import {TokenStorageService} from '../service/token-storage.service';
import {ShareService} from '../service/share.service';
import {DoctorService} from '../service/doctor.service';
import Swal from 'sweetalert2';
import {Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {
  role?: string;
  username?: string;
  isLoggedIn = false;
  img?: string;
  name?: string;

  constructor(private tokenStorageService: TokenStorageService,
              private shareService: ShareService,
              private doctorService: DoctorService,
              private route: Router) {
    this.shareService.getClickEvent().subscribe(() => {
      this.loadHeader();
    });
    this.findNameUser();
  }

  ngOnInit(): void {
    this.loadHeader();
  }

  view(): void {
    window.scrollTo(0, 0);
  }

  loadHeader(): void {
    if (this.tokenStorageService.getToken()) {
      this.role = this.tokenStorageService.getUser().roles[0];
      this.username = this.tokenStorageService.getUser().username;
    }
    this.isLoggedIn = this.username != null;
    this.findNameUser();
  }

  findNameUser(): void {
    if (this.role === 'ROLE_ADMIN' || this.role === 'ROLE_USER') {
      this.doctorService.findTDoctorByEmail(this.username).subscribe(doctor => {
        console.log(doctor);
        this.name = doctor.name;
        this.img = doctor.img;
      });
    }
  }

  logOut() {
    this.role = null;
    this.tokenStorageService.signOut();
    const Toast = Swal.mixin({
      toast: true,
      position: 'top-end',
      showConfirmButton: false,
      timer: 3000,
      timerProgressBar: true,
      didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer);
        toast.addEventListener('mouseleave', Swal.resumeTimer);
      }
    });
    Toast.fire({
      icon: 'success',
      title: 'Đăng xuất thành công!'
    });
    this.username = null;
    this.isLoggedIn = false;
    this.name = null;
    this.view();
    this.route.navigateByUrl('/login');
    this.ngOnInit();
  }
}
