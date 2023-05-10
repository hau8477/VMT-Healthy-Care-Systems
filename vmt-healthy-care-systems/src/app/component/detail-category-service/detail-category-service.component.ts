import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-detail-category-service',
  templateUrl: './detail-category-service.component.html',
  styleUrls: ['./detail-category-service.component.css']
})
export class DetailCategoryServiceComponent implements OnInit {
  idCategory: number;

  constructor(private activatedRoute: ActivatedRoute) {
  }

  ngOnInit(): void {
    this.view();
    this.activatedRoute.paramMap.subscribe(paramMap => {
      this.idCategory = +paramMap.get('idCategory');
    });
    console.log(this.idCategory);
  }

  view(): void {
    window.scrollTo(0, 0);
  }

}
