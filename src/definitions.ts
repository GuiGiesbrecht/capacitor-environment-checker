export interface IsTestFlightResult {
  isTestFlight: boolean;
}

export interface EnvironmentCheckerPlugin {
  isTestFlight(): Promise<IsTestFlightResult>;
}
