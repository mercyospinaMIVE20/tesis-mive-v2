🎓 Metamodelo MIVE v2.0 - Ontología y Reglas OCL para EBCT-EDA

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

🗂️ Estructura del Repositorio

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
    │
    └── docs/                        # Documentación complementaria
    ├── tabla_reglas.md          # Tablas 5.6 a 5.11 de la tesis  
    │
    └── especificacion.md        # Descripción detallada de cada regla
    
🚀 Cómo Usar Este Repositorio
1. Visualizar el Diagrama UML
   El diagrama está escrito en PlantUML. Puedes visualizarlo de varias formas:

Opción A: Online (Recomendado)


Opción B: VS Code con extensión PlantUML

  1. Instala la extensión PlantUML en VS Code
  2. Abre el archivo uml/xxx_mive_2.puml
  3. Presiona Alt + D para previsualizar
     
Opción C: GitHub Native

  GitHub renderiza automáticamente los archivos .puml si tienes habilitada la integración con PlantUML.
  
3. Validar las Reglas OCL
   
  Las reglas están escritas en OCL 2.4 estándar. Para validarlas:
  bash
# Con Eclipse OCL
1. Importar el modelo UML en Eclipse
2. Cargar los archivos .ocll en el editor OCL
3. Ejecutar validación sobre instancias del modelo
4. 
📖 Citación

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
