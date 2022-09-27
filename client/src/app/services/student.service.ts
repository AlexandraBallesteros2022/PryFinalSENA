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

  getEstudiante(id: string): Observable<Estudiantes[]> {
    return this.http.get<Estudiantes[]>(`${this.URL}/estudiantes/${id}`);
  }

  createOneEstudiante(estudiante: Estudiantes) {
    return this.http.post(`${this.URL}/estudiantes`, estudiante);
  }

  updateOneEstudiante(estudiante: Estudiantes) {
    return this.http.put(
      `${this.URL}/estudiantes/${estudiante.idEstudiante}`,
      estudiante
    );
  }

  deleteOneEstudiante(id: string) {
    return this.http.delete(`${this.URL}/estudiantes/${id}`);
  }
}
