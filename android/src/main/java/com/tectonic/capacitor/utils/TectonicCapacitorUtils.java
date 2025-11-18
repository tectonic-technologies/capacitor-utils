package com.tectonic.capacitor.utils;

import com.getcapacitor.Logger;

public class TectonicCapacitorUtils {

    public String getAPNSToken() {
        Logger.warn("TectonicCapacitorUtils", "getAPNSToken is iOS only. This method is not supported on Android.");
        return null;
    }
}
