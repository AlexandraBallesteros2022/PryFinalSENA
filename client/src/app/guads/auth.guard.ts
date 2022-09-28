import { Injectable } from '@angular/core';
import { CanActivate, Router } from '@angular/router';

import { AuthService } from '../services/auth.service';

@Injectable({
  providedIn: 'root',
})
export class AuthGuard implements CanActivate {
  constructor(private authSvc: AuthService, private router: Router) {}

  canActivate(): boolean {
    if (!this.authSvc.isAuth()) {
      console.log('acceso no autorizado');
      this.router.navigate(['']);
      return false;
    }
    return true;
  }
}
