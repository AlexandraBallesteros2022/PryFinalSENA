import { Localizacion } from './localizacion';

export interface Empleados {
  idDocente?: number;
  nombreCompleto: string;
  nombreUsuario: string;
  correoE: string;
  contrasenia: string;
  codigoDocente: string;
  localizacion: Localizacion;
}
