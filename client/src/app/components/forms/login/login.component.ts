import { Component, OnInit } from '@angular/core';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
})
export class LoginComponent implements OnInit {
  constructor(public icons: IconsService) {}

  ngOnInit(): void {}
}
