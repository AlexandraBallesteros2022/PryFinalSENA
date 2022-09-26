import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Estudiantes } from '../models/estudiantes';

@Injectable({
  providedIn: 'root',
})
export class StudentService {
  private URL = environment.APIURL;

  estudiante!: Estudiantes;
  estudiantes: Estudiantes[] = [];

  constructor(private http: HttpClient) {}

  getEstudiantes(): Observable<Estudiantes[]> {
    return this.http.get<Estudiantes[]>(`${this.URL}/estudiantes`);
  }
}
