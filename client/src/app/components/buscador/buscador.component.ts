import { Component, Input, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { ActivatedRoute, Router } from '@angular/router';
import { Empleados } from 'src/app/models/empleados';
import { Estudiantes } from 'src/app/models/estudiantes';
import { Localizacion } from 'src/app/models/localizacion';
import { EmpleoyeeService } from 'src/app/services/empleoyee.service';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-buscador',
  templateUrl: './buscador.component.html',
  styleUrls: ['./buscador.component.css'],
})
export class BuscadorComponent implements OnInit {
  persona: string = this.route.snapshot.params['persona'];
  @Input() title!: string;

  empleado:boolean=false
  estudiante:boolean=false
  buscarForm: FormGroup = this.initForm();
  estudiantes: Estudiantes[] = [];
  localizacion: Localizacion[] = [];

  displayedColumnsEmp: string[] = [
    'idDocente',
    'nombreCompleto',
    'nombreUsuario',
    'correoE',
    'codigoDocente',
    'departamento',
    'ciudad'
  ];

  dataSourceEmp = new MatTableDataSource<Empleados>();
  clickedRowsEmp = new Set<Empleados>();

  displayedColumnsEst: string[] = [
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

  dataSourceEst = new MatTableDataSource<Estudiantes>(this.estudiantes);
  clickedRowsEst = new Set<Estudiantes>();

  @ViewChild(MatPaginator) paginatorEst!: MatPaginator;
  @ViewChild(MatPaginator) paginatorEmp!: MatPaginator;

  ngAfterViewInit(): void {
    this.dataSourceEst.paginator = this.paginatorEst;
    this.dataSourceEmp.paginator = this.paginatorEmp;
  }

  constructor(
    private readonly fb: FormBuilder,
    private estSvc: StudentService,
    private empSvc:EmpleoyeeService,
    private router: Router,
    private route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    this.buscarForm = this.initForm();
    this.getLoc();
    if (this.persona === 'estudiantes') {
      this.estudiante=true
      this.empleado=false
    }else if(this.persona==='empleados'){
      this.estudiante=false
      this.empleado=true
    }
  }

  initForm(): FormGroup {
    return this.fb.group({
      idLoc: [0],
    });
  }
  viewInfoEst(idEstudiante: number) {
    this.router.navigate([`/estudiante/${idEstudiante}`]);
  }

  viewInfoEmp(idDocente: number) {
    this.router.navigate([`/empleado/${idDocente}`]);
  }

  submit() {
    if (this.persona === 'estudiantes') {
      this.estSvc
        .getAllEstudiantesByIdLoc(this.buscarForm.value.idLoc)
        .subscribe({
          next: (res: any) => {
            this.dataSourceEst = res;
          },
        });
    }else if(this.persona==='empleados'){
      this.empSvc
        .getAllEmpleadosByIdLoc(this.buscarForm.value.idLoc)
        .subscribe({
          next: (res: any) => {
            this.dataSourceEmp = res;
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
    if (this.title === 'empleado') {
      return true;
    } else {
      return false;
    }
  }
}
