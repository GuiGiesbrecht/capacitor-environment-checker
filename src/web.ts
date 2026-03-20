import { WebPlugin } from '@capacitor/core';

import type { EnvironmentCheckerPlugin, IsTestFlightResult } from './definitions';

export class EnvironmentCheckerWeb extends WebPlugin implements EnvironmentCheckerPlugin {
  async isTestFlight(): Promise<IsTestFlightResult> {
    return { isTestFlight: false };
  }
}
