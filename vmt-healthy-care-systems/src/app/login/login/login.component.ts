import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  isSignUpActive = false;

  signUp(): void {
    this.isSignUpActive = true;
  }

  signIn(): void {
    this.isSignUpActive = false;
  }

  constructor() { }

  ngOnInit(): void {
  }

}
