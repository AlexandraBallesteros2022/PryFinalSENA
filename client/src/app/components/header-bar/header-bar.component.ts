import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { IconsService } from 'src/app/services/icons.service';

@Component({
  selector: 'app-header-bar',
  templateUrl: './header-bar.component.html',
  styleUrls: ['./header-bar.component.css'],
})
export class HeaderBarComponent implements OnInit {
  constructor(public icon: IconsService,private router:Router) {}

  ngOnInit(): void {}

  logOut(){
    sessionStorage.setItem('session','false');
    this.router.navigate([''])
  }
}
