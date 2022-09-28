import { AfterViewInit, Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { Router } from '@angular/router';
import { Estudiantes } from 'src/app/models/estudiantes';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-students-table',
  templateUrl: './students-table.component.html',
  styleUrls: ['./students-table.component.css'],
})
export class StudentsTableComponent implements OnInit, AfterViewInit {
  estudiantes: Estudiantes[] = [];

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

  constructor(public estSvc: StudentService, private router: Router) {}

  ngOnInit(): void {
    this.getEstudiantes();
  }

  getEstudiantes() {
    this.estSvc.getEstudiantes().subscribe({
      next: (res) => {
        this.dataSource.data = res;
      },
    });
  }

  viewInfo(idEstudiante: number) {
    this.router.navigate([`/estudiante/${idEstudiante}`]);
  }

  reload(flag: boolean) {
    if (flag) {
      this.getEstudiantes();
    }
  }
}
