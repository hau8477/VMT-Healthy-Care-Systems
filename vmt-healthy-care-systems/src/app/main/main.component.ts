import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {

  constructor() {
  }

  ngOnInit(): void {
    this.view();
  }

  view(): void {
    window.scrollTo(0, 0);
  }

}
