const addBtn_trabajos = document.getElementById("add_trabajos");
const addBtn_idiomas = document.getElementById("add_idiomas");
const addBtn_aptitudes = document.getElementById("add_aptitudes");
const addBtn_formacion = document.getElementById("add_formacion");

const input_container_trabajos = document.querySelector("#numero_de_trabajos");
const input_container_idiomas = document.querySelector("#numero_idiomas");
const input_container_aptitudes = document.querySelector("#numero_aptitudes");
const input_container_formacion = document.querySelector("#numero_formacion");

const limite_elementos_trabajos = 3;
const limite_elementos_idiomas = 5;
const limite_elementos_aptitudes = 4;
const limite_elementos_formacion = 3;

function remove(event)
{
    event.preventDefault();
    this.parentElement.remove();
}

function add_trabajos_input(event)
{
    event.preventDefault();
    if (input_container_trabajos.children.length + 1 <= limite_elementos_trabajos)
    {
        
        const cargo = document.createElement("input");
        cargo.type = "text";
        cargo.className = "inputs";
        cargo.placeholder = "Ingrese su cargo";
        cargo.name = "cargos_nombres[]";
        cargo.required = true;

        const empresa = document.createElement("input");
        empresa.type = "text";
        empresa.className = "inputs";
        empresa.placeholder = "Ingrese el nombre de la empresa";
        empresa.name = "empresas_nombres[]";
        empresa.required = true;

        const inicio = document.createElement("input");
        inicio.type = "date";
        inicio.className = "inputs";
        inicio.name = "inicio_trabajos[]"
        inicio.required = true;

        const final = document.createElement("input");
        final.type = "date";
        final.className = "inputs";
        final.name = "final_trabajos[]"
        final.required = true;

        const btn = document.createElement("a");
        btn.className = "delete_boton";
        btn.innerHTML = "Eliminar";
        btn.href = "#";
        btn.addEventListener("click", remove);
        const div_temp = document.createElement("div");
        div_temp.id = "dinamic_div";
        
        const labelEmpresa = document.createElement("label");
        labelEmpresa.style.color = "white";
        labelEmpresa.innerText = "Empresa";
        
        const labelFechaInicio = document.createElement("label");
        labelFechaInicio.innerText = "Fecha de inicio";
        labelFechaInicio.style.color = "white";

        const labelFechaFin = document.createElement("label");
        labelFechaFin.innerText = "Fecha de fin";
        labelFechaFin.style.color = "white";

        

        div_temp.appendChild(labelEmpresa);
        div_temp.appendChild(cargo);
        div_temp.appendChild(labelFechaInicio);
        div_temp.appendChild(inicio);
        div_temp.appendChild(labelFechaFin);
        div_temp.appendChild(final);
        div_temp.appendChild(btn);
        

        input_container_trabajos.appendChild(div_temp);
    }
    else
    {
        alert(`Se ha alcanzado el límite máximo de elementos en experiencia laboral: ${input_container_trabajos.children.length}`);
    }
}

function add_idiomas_input(event)
{
    event.preventDefault();
    if (input_container_idiomas.children.length + 1 <= limite_elementos_idiomas)
    {
        const idioma = document.createElement("input");
        idioma.type = "text";
        idioma.className = "inputs";
        idioma.placeholder = "Ingrese el idioma";
        idioma.required = true;
        idioma.name = "idiomas_nombre[]"
        

        const nivel = document.createElement("select");
        nivel.className = "inputs";
        const niveles_del_idioma  = ["Principiante", "Intermedio", "Avanzado"];
        nivel.name = "niveles_idioma[]";
        niveles_del_idioma.required = true;
        niveles_del_idioma.forEach( elemento =>
        {
            const opt = document.createElement("option");
            opt.value = elemento.toLowerCase();
            opt.text = elemento;

            nivel.appendChild(opt);
        })
        

        const btn = document.createElement("a");
        btn.className = "delete_boton";
        btn.innerHTML = "Eliminar";
        btn.href = "#";
        btn.addEventListener("click", remove);

        const div_temp = document.createElement("div");
        div_temp.id = "dinamic_div";
        
        const idiomaLabel = document.createElement("label");
        idiomaLabel.innerText = "Idioma";
        idiomaLabel.style.color = "white";

        const nivelLabel = document.createElement("label");
        nivelLabel.innerText = "Nivel del idioma";
        nivelLabel.style.color = "white";

        div_temp.appendChild(idiomaLabel);
        div_temp.appendChild(idioma);
        div_temp.appendChild(nivelLabel);
        div_temp.appendChild(nivel);
        div_temp.appendChild(btn);

        input_container_idiomas.appendChild(div_temp);
    }
    else
    {
        alert(`Se ha alcanzado el límite máximo de elementos en idiomas: ${input_container_idiomas.children.length}`);
    }
}

function add_aptitudes_input(event)
{
    event.preventDefault();
    if (input_container_aptitudes.children.length + 1 <= limite_elementos_aptitudes)
    {
        const aptitudes = document.createElement("input");
        aptitudes.type = "text";
        aptitudes.className = "inputs";
        aptitudes.placeholder = "Ingrese la aptitud";
        aptitudes.required = true;
        aptitudes.name = "aptitudes_nombres[]"

        const btn = document.createElement("a");
        btn.className = "delete_boton";
        btn.innerHTML = "Eliminar";
        btn.href = "#";
        btn.addEventListener("click", remove);

        const div_temp = document.createElement("div");
        div_temp.id = "dinamic_div";

        div_temp.appendChild(aptitudes);
        div_temp.appendChild(btn);

        input_container_aptitudes.appendChild(div_temp);
    }
    else
    {
        alert(`Se ha alcanzado el límite máximo de elementos en aptitudes: ${input_container_aptitudes.children.length}`);
    }
}


function add_formacion_input(event)
{
    event.preventDefault();
    if (input_container_formacion.children.length + 1 <= limite_elementos_formacion) {
        const institucionLabel = document.createElement("label");
        institucionLabel.innerText = "Institución";

        const institucion = document.createElement("input");
        institucion.type = "text";
        institucion.className = "inputs";
        institucion.placeholder = "Ingrese el nombre de la institución";
        institucion.name = "instituciones_nombres[]";
        institucion.required = true;

        const tituloLabel = document.createElement("label");
        tituloLabel.innerText = "Título";
        tituloLabel.style.color = "white";

        const titulo = document.createElement("input");
        titulo.type = "text";
        titulo.className = "inputs";
        titulo.placeholder = "Ingrese el título obtenido";
        titulo.required = true;
        titulo.name = "titulo_nombres[]";

        const inicioLabel = document.createElement("label");
        inicioLabel.innerText = "Fecha de inicio";
        inicioLabel.style.color = "white";

        const inicio = document.createElement("input");
        inicio.type = "date";
        inicio.className = "inputs";
        inicio.name = "inicio_formacion[]";
        inicio.required = true;

        const finalLabel = document.createElement("label");
        finalLabel.innerText = "Fecha de fin";
        finalLabel.style.color = "white";

        const final = document.createElement("input");
        final.type = "date";
        final.className = "inputs";
        final.name = "final_formacion[]";
        final.required = true;

        const btn = document.createElement("a");
        btn.className = "delete_boton";
        btn.innerHTML = "Eliminar";
        btn.href = "#";
        btn.addEventListener("click", remove);

        const div_temp = document.createElement("div");
        div_temp.id = "dinamic_div";

        div_temp.appendChild(institucionLabel);
        div_temp.appendChild(institucion);
        div_temp.appendChild(tituloLabel);
        div_temp.appendChild(titulo);
        div_temp.appendChild(inicioLabel);
        div_temp.appendChild(inicio);
        div_temp.appendChild(finalLabel);
        div_temp.appendChild(final);
        div_temp.appendChild(btn);

        input_container_formacion.appendChild(div_temp);
    }
    else
    {
        alert(`Se ha alcanzado el límite máximo de elementos en formación: ${input_container_formacion.children.length}`);
    }
}

addBtn_trabajos.addEventListener("click", add_trabajos_input);
addBtn_idiomas.addEventListener("click", add_idiomas_input);
addBtn_aptitudes.addEventListener("click", add_aptitudes_input);
addBtn_formacion.addEventListener("click", add_formacion_input);