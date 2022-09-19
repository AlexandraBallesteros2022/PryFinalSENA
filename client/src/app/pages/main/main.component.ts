import { Component, OnInit } from '@angular/core';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.css']
})
export class MainComponent implements OnInit {

  constructor(public icons:IconsService) { }

  ngOnInit(): void {
  }

}
