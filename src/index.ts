import { registerPlugin } from '@capacitor/core';

import type { TectonicCapacitorUtilsPlugin } from './definitions';

const TectonicCapacitorUtils = registerPlugin<TectonicCapacitorUtilsPlugin>('TectonicCapacitorUtils', {
  web: () => import('./web').then((m) => new m.TectonicCapacitorUtilsWeb()),
});

export * from './definitions';
export { TectonicCapacitorUtils };
