import { WebPlugin } from '@capacitor/core';

import type { TectonicCapacitorUtilsPlugin } from './definitions';

export class TectonicCapacitorUtilsWeb
  extends WebPlugin
  implements TectonicCapacitorUtilsPlugin
{
  async getAPNSToken(): Promise<{ token: string | null }> {
    return { token: null };
  }
}
