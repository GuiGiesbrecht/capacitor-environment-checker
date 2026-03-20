import { registerPlugin } from '@capacitor/core';

import type { EnvironmentCheckerPlugin } from './definitions';

const EnvironmentChecker = registerPlugin<EnvironmentCheckerPlugin>('EnvironmentChecker', {
  web: () => import('./web').then((m) => new m.EnvironmentCheckerWeb()),
});

export * from './definitions';
export { EnvironmentChecker };
export default EnvironmentChecker;
