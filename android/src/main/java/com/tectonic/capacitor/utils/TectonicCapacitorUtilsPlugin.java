package com.tectonic.capacitor.utils;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "TectonicCapacitorUtils")
public class TectonicCapacitorUtilsPlugin extends Plugin {

    private TectonicCapacitorUtils implementation = new TectonicCapacitorUtils();

    @PluginMethod
    public void getAPNSToken(PluginCall call) {
        JSObject ret = new JSObject();
        ret.put("token", implementation.getAPNSToken());
        call.resolve(ret);
    }
}
