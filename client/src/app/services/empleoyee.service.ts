import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Empleados } from '../models/empleados';

@Injectable({
  providedIn: 'root',
})
export class EmpleoyeeService {
  private URL = environment.APIURL;

  constructor(private http: HttpClient) {}

  getEmpleados(): Observable<Empleados[]> {
    return this.http.get<Empleados[]>(`${this.URL}/empleados`);
  }

  getEmpleado(id: string): Observable<Empleados[]> {
    return this.http.get<Empleados[]>(`${this.URL}/empleados/${id}`);
  }

  createOneEmpleado(empleado: Empleados) {
    return this.http.post(`${this.URL}/empleados`, empleado);
  }

  updateOneEmpleado(empleado: Empleados) {
    return this.http.put(
      `${this.URL}/empleados/${empleado.idDocente}`,
      empleado
    );
  }

  deleteOneEmpleado(id: string) {
    return this.http.delete(`${this.URL}/empleados/${id}`);
  }

  getLocalizacion() {
    return this.http.get(`${this.URL}/localizacion`);
  }

  getAllEmpleadosByIdLoc(idLoc: string) {
    return this.http.get(`${this.URL}/localizacion/buscar/empleado/${idLoc}`);
  }
}
