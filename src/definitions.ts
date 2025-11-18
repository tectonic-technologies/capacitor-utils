export interface TectonicCapacitorUtilsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
