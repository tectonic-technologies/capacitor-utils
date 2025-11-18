import { TectonicCapacitorUtils } from '@tectonic-technologies/capacitor-utils';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    TectonicCapacitorUtils.echo({ value: inputValue })
}
