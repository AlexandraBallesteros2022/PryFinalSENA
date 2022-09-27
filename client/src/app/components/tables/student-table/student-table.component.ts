import { Component, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { ActivatedRoute, Router } from '@angular/router';
import { Estudiantes } from 'src/app/models/estudiantes';
import { StudentService } from 'src/app/services/student.service';

@Component({
  selector: 'app-student-table',
  templateUrl: './student-table.component.html',
  styleUrls: ['./student-table.component.css'],
})
export class StudentTableComponent implements OnInit {
  private id = <string>this.route.snapshot.params['idEstudiante'];

  displayedColumns1: string[] = [
    'documento',
    'nombreCompleto',
    'correoE',
    'celular',
    'ciudad',
    'departamento',
    'barrio',
  ];

  displayedColumns2: string[] = [
    'direccion',
    'estratoSocioEconomico',
    'conviveCon',
    'ingresos',
    'quienCubrePasajes',
    'profesionPadre',
    'profesionMadre',
  ];

  displayedColumns3: string[] = [
    'tieneVehiculoPropio',
    'marcaVehiculo',
    'tipoVehiculo',
    'bachilleratoCulminado',
    'institucionCulmino',
    'deportePractica',
    'estudiosSuperiores',
  ];

  dataSource = new MatTableDataSource<Estudiantes>();

  @ViewChild(MatPaginator) paginator!: MatPaginator;

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }
  constructor(
    private route: ActivatedRoute,
    private estSvc: StudentService,
    private router: Router
  ) {}

  ngOnInit(): void {
    this.getOneEstudiante(this.id);
  }

  getOneEstudiante(id: string) {
    this.estSvc.getEstudiante(id).subscribe({
      next: (res) => {
        this.dataSource.data = res;
      },
    });
  }

  reload(flag: boolean): void {
    if (flag) {
      this.getOneEstudiante(this.id);
    }
  }

  deleteOneEstudiante() {
    this.estSvc.deleteOneEstudiante(this.id).subscribe({
      next: (res) => {
        alert(res);
        this.router.navigate(['/estudiantes']);
      },
    });
  }
}
