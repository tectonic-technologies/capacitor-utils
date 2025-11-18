export interface TectonicCapacitorUtilsPlugin {
  getAPNSToken(): Promise<{ token: string | null }>;
}
