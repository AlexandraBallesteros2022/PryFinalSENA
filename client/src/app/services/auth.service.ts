import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
//variables de entorno
import { environment } from 'src/environments/environment';
//modelos
import { Empleados } from '../models/empleados';
import { LoginInfo } from '../models/login-info';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  //url de la api
  private URL = environment.APIURL;

  constructor(private http: HttpClient) {}

  //peticion de inicio de sesion
  login(user: LoginInfo) {
    return this.http.post(`${this.URL}/auths/login`, user);
  }

  //peticion de registro de empleado
  signUp(user: Empleados) {
    return this.http.post(`${this.URL}/auths/signup`, user);
  }

  isAuth(): boolean {
    const { session } = sessionStorage;
    if (session==='false' || !sessionStorage.getItem('session')) {
      return false;
    }
    return true;
  }
}
