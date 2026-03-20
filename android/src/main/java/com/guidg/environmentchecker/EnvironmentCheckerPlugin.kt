package com.guidg.environmentchecker

import com.getcapacitor.JSObject
import com.getcapacitor.Plugin
import com.getcapacitor.PluginCall
import com.getcapacitor.PluginMethod
import com.getcapacitor.annotation.CapacitorPlugin

@CapacitorPlugin(name = "EnvironmentChecker")
class EnvironmentCheckerPlugin : Plugin() {
    @PluginMethod
    fun isTestFlight(call: PluginCall) {
        val result = JSObject()
        result.put("isTestFlight", false)
        call.resolve(result)
    }
}
