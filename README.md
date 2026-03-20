# capacitor-environment-checker

Capacitor plugin to detect whether an iOS app is running via TestFlight, with safe fallbacks for Android and Web.

## Install

```bash
npm i capacitor-environment-checker
npx cap sync
```

## Usage

```ts
import EnvironmentChecker from 'capacitor-environment-checker';

const { isTestFlight } = await EnvironmentChecker.isTestFlight();
console.log('isTestFlight:', isTestFlight);
```

## API

### isTestFlight()

```ts
isTestFlight(): Promise<{ isTestFlight: boolean }>;
```

Returns whether the app is running via TestFlight.

## Platform behavior

- iOS: uses sandbox receipt heuristic (`sandboxReceipt`) to infer TestFlight.
- Android: always returns `false` in v0.1.0.
- Web: always returns `false` in v0.1.0.

## Why Android/Web return false

`isTestFlight` is an iOS-specific concept. For v0.1.0, Android and Web are deterministic fallbacks to keep cross-platform code safe and predictable.

## Troubleshooting

- Method not found after install:
	- Run `npx cap sync`.
	- Rebuild native projects.
- iOS unexpected value:
	- Validate whether app receipt is sandbox receipt.
	- Ensure you are testing through the intended distribution flow.

## Compatibility

- Capacitor: `6+`
- TypeScript: supported

## Notes

- This plugin does not collect personal data.
- This plugin does not call external services.
