import { WebPlugin } from '@capacitor/core';

import type { TectonicCapacitorUtilsPlugin } from './definitions';

export class TectonicCapacitorUtilsWeb extends WebPlugin implements TectonicCapacitorUtilsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
