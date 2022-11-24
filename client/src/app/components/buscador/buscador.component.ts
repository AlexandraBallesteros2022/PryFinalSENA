import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { Router } from '@angular/router';
import { Estudiantes } from 'src/app/models/estudiantes';
import { Localizacion } from 'src/app/models/localizacion';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-buscador',
  templateUrl: './buscador.component.html',
  styleUrls: ['./buscador.component.css'],
})
export class BuscadorComponent implements OnInit {
  buscarForm: FormGroup = this.initForm();
  estudiantes: Estudiantes[] = [];
  localizacion: Localizacion[] = [];

  displayedColumns: string[] = [
    'idEstudiante',
    'documento',
    'nombreCompleto',
    'correoE',
    'celular',
    'ciudad',
    'departamento',
    'barrio',
    'direccion',
    'estratoSocioEconomico',
    'conviveCon',
    'ingresos',
    'quienCubrePasajes',
    'profesionPadre',
    'profesionMadre',
    'tieneVehiculoPropio',
    'marcaVehiculo',
    'tipoVehiculo',
    'bachilleratoCulminado',
    'institucionCulmino',
    'deportePractica',
    'estudiosSuperiores',
  ];

  dataSource = new MatTableDataSource<Estudiantes>(this.estudiantes);
  clickedRows = new Set<Estudiantes>();

  @ViewChild(MatPaginator) paginator!: MatPaginator;

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }

  constructor(
    private readonly fb: FormBuilder,
    public estSvc: StudentService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.buscarForm = this.initForm();
    this.getLoc();
  }

  initForm(): FormGroup {
    return this.fb.group({
      idLoc: [0],
    });
  }
  viewInfo(idEstudiante: number) {
    this.router.navigate([`/estudiante/${idEstudiante}`]);
  }

  submit() {
    console.log(this.buscarForm.value);
    this.estSvc
      .getAllEstudiantesByIdLoc(this.buscarForm.value.idLoc)
      .subscribe({
        next: (res: any) => {
          console.log(res);
          this.dataSource = res;
        },
      });
  }

  getLoc() {
    this.estSvc.getLocalizacion().subscribe({
      next: (res: any) => {
        this.localizacion = res;
      },
    });
  }
}
