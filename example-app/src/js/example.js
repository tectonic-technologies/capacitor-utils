import { TectonicCapacitorUtils } from '@tectonic-technologies/capacitor-utils';

window.testGetAPNSToken = async () => {
    try {
        const result = await TectonicCapacitorUtils.getAPNSToken();
        const outputElement = document.getElementById("tokenOutput");
        if (result.token) {
            outputElement.textContent = `APNS Token: ${result.token}`;
        } else {
            outputElement.textContent = "No APNS token available";
        }
    } catch (error) {
        const outputElement = document.getElementById("tokenOutput");
        outputElement.textContent = `Error: ${error.message}`;
    }
}
