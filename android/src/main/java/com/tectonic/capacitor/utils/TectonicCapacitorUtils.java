package com.tectonic.capacitor.utils;

import com.getcapacitor.Logger;

public class TectonicCapacitorUtils {

    public String echo(String value) {
        Logger.info("Echo", value);
        return value;
    }
}
