Metamodelo MIVE v2.0 - Ontología y Reglas OCL para EBCT-EDA

    Repositorio Oficial de Artefactos Digitales - Tesis Doctoral
    "Ontología y Reglas OCL para el Metamodelo Integral de Validación de Emprendimientos EBCT-EDA (MIVE v2.0)"
📋 Descripción

    Este repositorio contiene los artefactos formales del Metamodelo MIVE v2.0 (Metamodelo Integral de Validación de Emprendimientos), desarrollado como parte de una investigación doctoral en el ámbito de Emprendimientos de Base Científica y Tecnológica (EBCT) con enfoque en Impacto Social y Ambiental.
El metamodelo proporciona:

    ✅ Ontología UML completa del sistema EBCT-EDA
    ✅ 29 Reglas de Negocio formalizadas en OCL (Object Constraint Language)
    ✅ Mecanismos de Gobernanza para validación tridimensional (TRL/CRL/IPL)
    ✅ Sistema de Bifurcación Inteligente (Low-Code / Vibe-Coding)
    ✅ Auditoría de IA para soberanía tecnológica y alineación ODS
    ✅ Validación formal verificada por bounded model finding (SAT):consistencia, ortogonalidad 95.1 %, viabilidad de escalado ydetección 30/30 en falsificación (ver 📊)

## 🗂️ Estructura del Repositorio

mive-metamodel-v2/

    │    
    ├── README.md                    # Este archivo
    ├── LICENSE                      # Licencia CC-BY-4.0
    │
    ├── uml/                         # Diagramas UML en PlantUML
    │
    └── ontologia_mive_2.puml    # Ontología completa del sistema
    │
    └── casos_uso_mive_2.puml    # Casos de Uso del sistema
    │   
    |── estados_mive_2.puml      # Diagrama de Estados del sistema
    │   
    |── bifurcacion_EDA_mive_2.puml  # Bifurcacion EDA del sistema
    │ 
    └── spem_mive_2.puml         # Diagrama de Actores del sistema
    │
    ├── ocl/                         # Reglas formales OCL
    │   
    ├── reglas_ocl_mive.ocll     # todas las reglas OCL 
    ├── validacion/ # (Recomendado) espejo del paquete Zenodo
    │ ├── mive.use
    │ ├── mive.properties
    │ └── ...
    └── docs/
      ├── tabla_reglas.md # Tablas 5.6 a 5.11 de la tesis
      └── especificacion.md # Descripción detallada de cada regla
    
    
🚀 Cómo Usar Este Repositorio
## 1. Visualizar el Diagrama UML
   El diagrama está escrito en PlantUML. Puedes visualizarlo de varias formas:

**Opción A — Online:** pegar el contenido en <https://www.plantuml.com/plantuml/>


**Opción B — VS Code:**

  1. Instala la extensión PlantUML en VS Code
  2. Abre el archivo uml/xxx_mive_2.puml
  3. Presiona Alt + D para previsualizar
     
**Opción C — Consola:**

  `plantuml -tpng uml/*.puml` (o `-tpdf` para PDF) y versionar las imágenes junto a las fuentes
  
### 2. Validar las Reglas OCL

#### 2.1 Validar con USE (UML-based Specification Environment)

Requisitos: **USE 6.0.0** + plugin **ModelValidator v5.2.0-r1** (Java 8+) + SWI Prolog

Usar:
- mive.use, 
- mive.properties, 
- escenario_escalado.ocl 
- y la bateria de pruebas de falla T-Ri.soil
Pruebas

E1 — Consistencia (SATISFIABLE)
use> open mive.use
use> modelvalidator -validate mive.properties

E2 — Independencia lógica (95.1 %)
use> modelvalidator -invIndep mive.properties

E3 — Escenario de escalado (SATISFIABLE)
use> open mive.use
use> constraints -load escenario_escalado.ocl
use> modelvalidator -validate mive.properties

E4 — Falla (30/30; ejemplo T-R1)
use> reset
use> open mive.use
use> open T-R1.soil
use> check → 41 invariants, 1 failure (R1)
   
#### 2.2. Evaluar con Eclipse OCL (alternativa *ad-hoc*)

Importar el modelo UML en Eclipse, cargar los archivos `.ocll` en el
editor OCL y ejecutar la validación sobre instancias del modelo.
*Nota: la validación formal reportada en la investigación se realizó
en USE mediante bounded model finding (SAT), no en Eclipse OCL.*

## 3. Resultados de la validación formal

| Experimento | Método | Resultado | Tiempo |
|---|---|---|---|
| E1: consistencia | bounded model finding (SAT4J) | SATISFIABLE | 2.8 s |
| E2: independencia | análisis lógico (`-invIndep`) | 95.1 % (39/41) | ~4 min |
| E3: escenario de escalado | restricción contextual | SATISFIABLE | 10.0 s |
| E4: falsificación | batería de 30 casos SOIL | 30/30 exitosos | 0–22 ms/caso |

## ⚠️ Notas técnicas

1. **Literales de enumeración sin guion bajo** (`PROTOTIPOLAB`, no
   `PROTOTIPO_LAB`): workaround de una limitación del ModelValidator
   v5.2.0-r1 en el mapeo índice-SAT ↔ literal-OCL. Sin efecto semántico.
2. **Perfil ejecutable:** las invariantes evitan `abs()`, operaciones
   sobre cadenas y llamadas a operaciones; R2 se expande en lugar de
   usar valor absoluto.
3. **T-R10** valida el contrato de `pivotar()` por configuración del
   estado gatillo (0 fallas de invariantes por diseño).
4. El compilador de USE confirma al cargar: `Model MIVE (26 classes,
   34 associations, 41 invariants, 1 operation, 2 pre-/postconditions,
   0 state machines)`.

## 📖 Citación

Si utiliza este metamodelo en su investigación, cite el paquete de
datos versionado en Zenodo: 

## 📖 Citación

Si utilizas este metamodelo en tu investigación, por favor cita de la siguiente manera:

BibTeX

    @misc{mive_metamodel_2024,
      author = {Ospina, Mercy},
      title = {Metamodelo MIVE v2.0: Ontología y Reglas OCL para EBCT-EDA},
      year = {2026},
      publisher = {GitHub / Zenodo},
      doi = {10.5281/zenodo.XXXXXX},
      url = {https://github.com/tu_usuario/mive-metamodel-v2}
    }
