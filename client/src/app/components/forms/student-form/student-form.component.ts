import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { Router } from '@angular/router';
import { Localizacion } from 'src/app/models/localizacion';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-student-form',
  templateUrl: './student-form.component.html',
  styleUrls: ['./student-form.component.css'],
})
export class StudentFormComponent implements OnInit {
  @Input() show: boolean = true;
  @Input() title: string = 'nuevo estudiante';
  @Output() flag = new EventEmitter<boolean>();
  studenForm: FormGroup = this.initForm();
  localizacion: Localizacion[] = [];

  constructor(
    private fb: FormBuilder,
    private estSvc: StudentService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.studenForm = this.initForm();
    this.getLoc();
  }

  showHidden() {
    this.show = !this.show;
    if (this.title === 'agregar estudiante') {
      this.studenForm.reset();
    }
  }

  initForm(): FormGroup {
    return this.fb.group({
      idEstudiante: [0],
      documento: [''],
      nombreCompleto: [''],
      correoE: [''],
      celular: [''],
      idLoc: [''],
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
    this.studenForm.patchValue(estudiante);
    this.showHidden();
  }

  cancelar() {
    if (this.title === 'nuevo estudiante') {
      this.router.navigate(['']);
    } else if (
      this.title === 'editar estudiante' ||
      this.title === 'agregar estudiante'
    ) {
      this.showHidden();
    }
  }

  submit() {
    if (this.title === 'nuevo estudiante') {
      console.log(this.studenForm.value);

      this.estSvc.createOneEstudiante(this.studenForm.value).subscribe({
        next: (res: any) => {
          console.log('hola');

          alert(res);
          this.router.navigate(['']);
        },
        error(err) {
          alert(err);
        },
      });
    } else if (this.title === 'editar estudiante') {
      this.estSvc.updateOneEstudiante(this.studenForm.value).subscribe({
        next: (res) => {
          alert(res);
          this.flag.emit(true);
          this.showHidden();
        },
      });
    } else if (this.title === 'agregar estudiante') {
      this.estSvc.createOneEstudiante(this.studenForm.value).subscribe({
        next: (res: any) => {
          alert(res);
          this.flag.emit(true);
          this.showHidden();
        },
      });
    }
  }

  getLoc() {
    this.estSvc.getLocalizacion().subscribe({
      next: (res: any) => {
        this.localizacion = res;
      },
    });
  }

  valid(): boolean {
    return this.title === 'nuevo estudiante';
  }
}
