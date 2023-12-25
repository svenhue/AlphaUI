import { App } from "vue";
import { useHead } from "unhead";

export default function unhead(app: App){
    app.use(useHead);
}