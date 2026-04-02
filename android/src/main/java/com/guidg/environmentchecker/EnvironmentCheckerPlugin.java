package com.guidg.environmentchecker;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "EnvironmentChecker")
public class EnvironmentCheckerPlugin extends Plugin {
    @PluginMethod
    public void isTestFlight(PluginCall call) {
        JSObject result = new JSObject();
        result.put("isTestFlight", false);
        call.resolve(result);
    }
}
