import { Component, Input, OnInit, ViewChild } from '@angular/core';
import { MatPaginator } from '@angular/material/paginator';
import { MatTableDataSource } from '@angular/material/table';
import { ActivatedRoute, Router } from '@angular/router';
import { Empleados } from 'src/app/models/empleados';

import { EmpleoyeeService } from 'src/app/services/empleoyee.service';

@Component({
  selector: 'app-empleoyee-table',
  templateUrl: './empleoyee-table.component.html',
  styleUrls: ['./empleoyee-table.component.css'],
})
export class EmpleoyeeTableComponent implements OnInit {
  @Input() title!: string;

  private id = this.route.snapshot.params['idDocente'];

  displayedColumns: string[] = [
    'idDocente',
    'nombreCompleto',
    'nombreUsuario',
    'correoE',
    'codigoDocente',
    'departamento',
    'ciudad'
  ];

  dataSource = new MatTableDataSource<Empleados>();
  clickedRows = new Set<Empleados>();

  @ViewChild(MatPaginator) paginator!: MatPaginator;

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
  }

  constructor(
    private empSvc: EmpleoyeeService,
    private router: Router,
    private route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    if (this.title === 'empleados') {
      this.getEmpleados();
    } else if (this.title === 'empleado') {
      this.getEmpleado(this.id);
    }
  }

  getEmpleados() {
    this.empSvc.getEmpleados().subscribe({
      next: (res) => {
        this.dataSource.data = res;
      },
    });
  }

  getEmpleado(id: string) {
    this.empSvc.getEmpleado(id).subscribe({
      next: (res) => {
        this.dataSource.data = res;
      },
    });
  }

  deleteOneEmpleado() {
    this.empSvc.deleteOneEmpleado(this.id).subscribe({
      next: (res) => {
        alert(res);
        this.router.navigate(['/empleados']);
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

  viewInfo(idDocente: string) {
    if (this.title === 'empleados') {
      this.router.navigate([`/empleado/${idDocente}`]);
    }
  }

  reload(flag: boolean) {
    if (this.title === 'empleados') {
      if (flag) {
        this.getEmpleados();
      }
    } else {
      if (flag) {
        this.getEmpleado(this.id);
      }
    }
  }
}
