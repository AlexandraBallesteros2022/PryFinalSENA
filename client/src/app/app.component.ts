import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  title = 'client';

  constructor(private router: Router) {}

  validRoute(): boolean {
    if (this.router.url === '/') {
      return false;
    } else if (this.router.url === '/registro') {
      return false;
    } else if (this.router.url === '/nuevo-estudiante') {
      return false;
    } else {
      return true;
    }
  }
}
