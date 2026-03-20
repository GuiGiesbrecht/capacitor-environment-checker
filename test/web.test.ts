import { describe, expect, it } from 'vitest';

import { EnvironmentCheckerWeb } from '../src/web';

describe('EnvironmentCheckerWeb', () => {
  it('returns deterministic false on web', async () => {
    const plugin = new EnvironmentCheckerWeb();
    const result = await plugin.isTestFlight();

    expect(result).toEqual({ isTestFlight: false });
  });
});
