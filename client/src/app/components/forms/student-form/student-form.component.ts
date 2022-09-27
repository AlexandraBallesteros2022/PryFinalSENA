import { Component, Input, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { Estudiantes } from 'src/app/models/estudiantes';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-student-form',
  templateUrl: './student-form.component.html',
  styleUrls: ['./student-form.component.css'],
})
export class StudentFormComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'nuevo estudiante';
  studenForm: FormGroup = this.initForm();

  constructor(
    private fb: FormBuilder,
    private estSvc: StudentService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.studenForm = this.initForm();
  }

  showHidden() {
    this.show = !this.show;
  }

  initForm(): FormGroup {
    return this.fb.group({
      documento: [''],
      nombreCompleto: [''],
      correoE: [''],
      celular: [''],
      ciudad: [''],
      departamento: [''],
      barrio: [''],
      direccion: [''],
      estratoSocioEconomico: [''],
      conviveCon: [''],
      ingresos: [''],
      quienCubrePasajes: [''],
      profesionPadre: [''],
      profesionMadre: [''],
      tieneVehiculoPropio: [''],
      marcaVehiculo: [''],
      tipoVehiculo: [''],
      bachilleratoCulminado: [''],
      institucionCulmino: [''],
      deportePractica: [''],
      estudiosSuperiores: [''],
    });
  }

  data(estudiante: any) {
    console.log(estudiante);
    this.studenForm.setV = estudiante;
    this.showHidden();
  }

  cancelar() {
    this.router.navigate(['']);
  }

  submit() {
    console.log(this.studenForm.value);
    // if (this.title === 'nuevo estudiante') {
    //   this.estSvc.createOneEstudiante(this.studenForm.value).subscribe({
    //     next: (res: any) => {
    //       this.router.navigate(['']);
    //     },
    //   });
    // } else {
    // }
  }
}
