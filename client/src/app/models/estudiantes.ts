import { Localizacion } from './localizacion';

export interface Estudiantes {
  idEstudiante: number;
  documento: string;
  nombreCompleto: string;
  correoE: string;
  celular: string;
  localizacion: Localizacion;
  departamento: string;
  ciudad: string;
  barrio: string;
  direccion: string;
  estratoSocioEconomico: string;
  conviveCon: string;
  ingresos: number;
  quienCubrePasajes: string;
  profesionPadre: string;
  profesionMadre: string;
  tieneVehiculoPropio: string;
  marcaVehiculo: string;
  tipoVehiculo: string;
  bachilleratoCulminado: string;
  institucionCulmino: string;
  deportePractica: string;
  estudiosSuperiores: string;
}
