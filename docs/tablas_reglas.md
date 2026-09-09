## **5.3. Especificación Formal de Reglas de Negocio (OCL)**

El metamodelo MIVE v2.0 no es solo descriptivo, sino prescriptivo. A continuación, se detallan las 25 reglas de integridad que gobiernan el sistema, expresadas en el estándar *Object Constraint Language* (OCL). Estas reglas aseguran que el avance de la EBCT sea balanceado, ético y soberano.

### **Validación de Madurez y Tracción pre-técnica**

Estas reglas garantizan que el desarrollo tecnológico no ocurra en un vacío comercial (Sarasvathy, 2001).

Tabla 5.6 Reglas OCL de Validación de Madurez y Tracción pre-tecnica

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| **R1** | PuntoDecision | inv ValidacionTraccion:  self.etapaActual \= \#PROTOTIPO\_LAB implies (self.crl.validacionManualCompletada \= true and self.mvp\_cero.evidenciaTraccion-\>notEmpty()) | **Validación de Tracción Pre-técnica** Prohíbe el código hasta que la tracción manual sea validada y se presente la evidencia de Tracción |
| **R2** | Punto Decision | inv VerficarBrecha:  (self.TRL.nivel \- self.CRL.nivel).abs() \<= 2 and (self.TRL.nivel \- self.IPL.nivel).abs() \<= 3 and (self.CRL.nivel \- self.IPL.nivel).abs() \<= 3 | **Brecha Tri-dimensional:** Permite una asimetría de hasta 3 niveles para acomodar la complejidad del impacto social y hasta dos niveles entre el nivel tecnológico y el nivel comercial |
| **R11** | PuntoDecision | inv Effectuation:  self.mvp\_cero.costoEjecucion \<= self.factoresContexto.presupuestoDisponible | **Axioma de Effectuation:** El MVP inicial debe ejecutarse con los recursos a la mano. |
| **R16a** | CRL | inv MadurezComercial: self.nivel \>= 5 implies self.metricaClave.valorObtenido \>= self.metricaClave.valorObjetivo | **Integridad de Salto Comercial:** Solo hay madurez si se cumple el KPI de tracción. |
| **R16b** | IPL | inv MadurezImpacto:  self.nivel \>= 5 implies (self.metricasImpacto-\>forAll(m | m.valorObtenido \>= m.valorObjetivo)) | **Integridad de Salto de Impacto:** Requiere verificación externa y cumplimiento de metas sociales. |

*Fuente: Elaboración propia*

### 

### 

### **Bifurcación EDA: Trayectoria Inteligente y Exclusividad**

Estas reglas gobiernan la elección de la tecnología basada en el presupuesto, el tiempo disponible y el criterio técnico del equipo.

Tabla 5.7 Reglas OCL para la Bifurcacion EDA

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| **R3** | FactoresContexto | inv CaminosAceleracion:  (self.complejidadTecnica \> 0.7 and self.equipo.criterioTecnico \>= 7\) or (self.esTripleImpacto \= true and self.soberania \= true) or (self.tiempoLimite \<= 2\)  implies self.trayectoriaSeleccionada \= \#VIBE\_CODING | **Vibe-Coding:** Activada por **Escenario Técnico:** Alta complejidad \+ equipo capaz. **Escenario Estratégico:** Impacto social \+ soberanía (evitar depender de plataformas cerradas). **Escenario de Urgencia:** Tiempo crítico (el factor tiempo de entrega del MVP). |
| **R4** | FactoresContexto | inv TrayectoriaLowCode: self.presupuestoDisponible \< 100 implies self.evaluarMejorRuta() \= \#TRAYECTORIA\_LOW\_CODE | **Restricción de Recursos:** Obliga a eficiencia extrema en presupuestos mínimos. |
| **R12** | PuntoDecision | inv ExclusividadTrayectoria: self.entornoLowCode.active xor self.agenteVibeCoding.active | **Exclusividad de Trayectoria:** Impide la duplicidad de recursos; una trayectoria excluye a la otra. |

*Fuente: Elaboración propia*

### **Soberanía, Integridad de IA y Validación Legal (Blindaje Tecnológico y Legal)**

Aseguran que el activo generado sea propiedad real de la universidad y éticamente transparente, sin restricciones legales que le impidan avanzar

Tabla 5.8 Reglas OCL Soberanía, Integridad de IA y Validación Legal

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| **R5** | Agente\_Vibe | inv CertificacionSoberania: self.esProductoReal \= true implies self.soberaniaCodigo \= true | **Certificación de Soberanía:** El producto real debe ser propiedad intelectual del equipo. |
| **R6** | TRL | inv ObligatoriedadAuditoria:self.esGeneradoPorIA \= true implies (self.auditoriaIA-\>notEmpty() and self.auditoriaIA.nivelExplicabilidad \>= 0.8) | **Sincronía de Origen y Transparencia:** Si el prototipo técnico es marcado como generado por IA, el metamodelo obliga a la existencia de un registro de Auditoría de IA con un nivel de explicabilidad alto, previniendo la existencia de "cajas negras" en el desarrollo de la EBCT. |
| **R9** | TRL | inv SincroniaTRLImpacto: self.nivel \> 4 implies (self.activoReal-\>notEmpty() and self.contextoImpactoIncluido \= true) | **Sincronía TRL-Impacto:** A partir de TRL 5, el producto debe integrar la descripción de impacto. |
| **R15** | PuntoDecision | inv Escalado: self.etapaActual \= \#ESCALADO\_OPERACIONAL implies (self.equipo.titularidadPI \= \#DEFINIDA and self.restriccionRegulatoria-\>forAll(r | r.impacto \= \#BLOQUEANTE implies r.cumplida \= true)) | **Protección Universitaria y legal:** El escalado requiere titularidad de PI formalizada y si hay una restriccion legal BLOQUEANTE debe haber sido cumlida |

*Fuente: Elaboración propia*

### **Gobernanza Humana y Validación de Stakeholders**

Protegen la inversión asegurando solvencia del equipo y validación del beneficiario.

Tabla 5.9 Reglas OCL de Gobernanza 

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| **R13** | PuntoDecision | inv SoberaniaCTO: self.trayectoriaSeleccionada \= \#TRAYECTORIA\_VIBE\_CODING implies self.equipoEmprendedor.miembros-\>exists(m | m.rol \= \#CTO and m.experienciaPrevia \>= 7\) | **Soberanía del CTO:** La IA requiere supervisión humana experta. |
| **R14** | PuntoDecision | inv PerfilMiembrosBalanceado:  self.etapaActual \= \#ESCALADO\_OPERACIONAL implies self.equipo.exists(m | m.rol \= \#CEO) and exists(m | m.rol \= \#CTO) | **Perfil Balanceado:** El escalado operacional requiere bicefalia estratégica (CEO/CTO). |
| **R7** | PuntoDecision | inv CertificacionMercadoEImpacto: self.etapaActual \= \#MERCADO\_COMERCIAL implies      (self.crl.validaciones-\>exists(v | v.interesado.rol \= \#Inversionista and v.metricaClave.valorObtenido \>= 0.8)      and      self.ipl.validaciones-\>exists(v | v.interesado.rol \= \#Beneficiario and v.metricaClave.valorObtenido \>= 0.7)) | **Validación Dual:** Exige validación de mercado y validación social simultánea, debe realizarse por los interesados en los roles Inversionista o Beneficiario según el caso |
| **R24** | FactoresContexto | inv CapacidadImpacto: self.esTripleImpacto implies self.equipo.exists(m | m.rol \= \#IMPACT\_MANAGER) | **Capacidad de Impacto:** Obligatoriedad de un gestor de impacto en proyectos ODS. |
| **R25** | PuntoDecision | inv MadurezMinimaEscalado: self.etapaActual \= \#ESCALADO\_OPERACIONAL implies self.trl.nivel \>= 5 and self.crl.nivel \>= 4 and self.ipl.nivel \>= 4 | **Decisión Tridimensional:** Mínimos de madurez balanceada para operar. v |

*Fuente: Elaboración propia*

### **Impacto, ODS y Consistencia Ética** 

Operacionalizan el compromiso social y ambiental del modelo.

Tabla 5.10 Reglas OCL Impacto, ODS y Consistencia Ética

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| R10 | PuntoDecision | self.crl \< 4 or self.ipl.nivel \< 3 implies \#PIVOTE | **Regla de Oro:** Si la validación comercial o social falla críticamente, el sistema vuelve a Fase de Idea.  |
| R17 | ProyectoEBCT | inv MetricasImpactoObligatorias:     self.tipo \= TipoEBCT::IMPACTO implies self.puntoDecision.IPL.metricasImpacto-\>notEmpty() | **Coherencia de Impacto:** Prohíbe declarar impacto sin métricas asociadas. |
| R18 | PuntoDecision | inv ValidacionBeneficiariosProgresiva:     (self.nivel \= 4 implies self.beneficiariosEstimados \> 0\)     and     (self.nivel \>= 5 implies          self.validacion-\>exists(v | v.interesado.rol \= \#Beneficiario)          and self.verificacionExterna \= true)  | **Voz del Beneficiario:** Validación obligatoria de la comunidad para alto impacto. |
| R19 | ProyectoEBCT | inv ContribucionODS:     \-- Para proyectos de IMPACTO, al menos un ODS específico.     (self.tipo \= TipoEBCT::IMPACTO implies self.factoresContexto.odsPrioritarios-\>notEmpty())     and     \-- Para proyectos COMERCIALES, se sugiere al menos ODS 9 (Industria e Innovación),     \-- pero no es un bloqueante estricto como para los de impacto.     (self.tipo \= TipoEBCT::COMERCIAL implies self.factoresContexto.odsPrioritarios-\>notEmpty() or      self.factoresContexto.odsPrioritarios-\>includes(ODS::ODS\_09)     ) | **Contribución Mínima:** Todo proyecto debe tributar al menos a un ODS. |
| R20 | FactoresContexto | inv TeoriaCambio: self.esTripleImpacto implies self.teoriaCambio-\>notEmpty() | **Teoría de Cambio:** Obliga a documentar el mecanismo causal del impacto. |
| R21 | PuntoDecision | inv AlineacionEticaODS: self.factoresContexto.esTripleImpacto \= true implies  self.auditoriaIA.evaluarAlineacionODS(self.factoresContexto.odsPrioritarios) \>= 0.7 | **Auditoría ODS:** La IA verifica si la solución técnica sirve realmente al ODS propuesto. |
| R22 | PuntoDecision | inv ObligatoriedadEtica: self.factoresContexto.esTripleImpacto \= true implies  self.auditoriaIA.impactoEticoEvaluado \= true | **Ética de Impacto:** Certificación de no maleficencia del activo digital. |
| **R23** | PuntoDecision | inv SincroniaImpacto:self.factoresContexto.ejeImpactoPrincipal \= self.ipl.ejeImpacto and (self.factoresContexto.ejeImpactoPrincipal \= \#SOCIAL implies self.factoresContexto.ods-\>exists(o | o.id \= \#ODS\_01 or o.id \= \#ODS\_03 or o.id \= \#ODS\_04 or o.id \= \#ODS\_05 or o.id \= \#ODS\_10)) | **Consistencia Eje-ODS:** Valida que los ODS seleccionados correspondan al eje de impacto. |
| **R8** | MetricaClave | inv IntegridadDatos: self.valorObtenido \>= 0 and self.valorObtenido \<= 100 | **Integridad de Datos:** Normalización de métricas para comparabilidad sistémica. |

*Fuente: Elaboración propia*

Tabla 5.11 Reglas para control del proyecto

| ID | Contexto | Expresión Formal (OCL) | Descripción Académica |
| :---- | :---- | :---- | :---- |
| **R26** | ProyectoEBCT | inv ClasificacionObligatoria:     self.tipo \= TipoEBCT::COMERCIAL or self.tipo \= TipoEBCT::IMPACTO | Declarar el tipo de proyecto es obligatorio |
| **R27** | ProyectoEBCT | inv CoherenciaNucleoProyecto: self.factoresContexto.propuestaValor \<\> '' and self.factoresContexto.propuestaValor.toLower().includes(self.problemaCentral.toLower()) andself.factoresContexto.propuestaValor.toLower().includes(self.segmentoCliente.toLower()) | **Coherencia semántica:** exige que la propuesta de valor declarada en los factores de contexto refleje de manera explícita y consistente los elementos definitorios del proyecto: el problema central que busca resolver y el segmento de cliente al que se dirige |
| **R28** | ProyectoEBCT | inv DeclaracionExplicitaImpacto:     self.tipo \= TipoEBCT::IMPACTO implies (         self.beneficiarioImpacto \<\> '' and       self.beneficiarioImpacto.size() \> 3 andself.factoresContexto.odsPrioritarios-\>notEmpty() andself.factoresContexto.propuestaValor.toLower().includes(self.beneficiarioImpacto.toLower())     ) | **Declaración Explícita para Proyectos de Impacto:** Los proyectos de impacto deben declarar el beneficiario y los ODS prioritarios, además la propuesta de valor debe incluir a los beneficiarios |
| **R29** | ProyectoEBCT | inv MinimoIPL     self.tipo \= TipoEBCT::IMPACTO and     self.puntoDecision.IPL.nivel \>= 4 implies self.puntoDecision.IPL beneficiarios Estimados \> 0     \-- Nivel 4: Validación con beneficiarios/usuarios finales en entorno real. | **Declaración Explícita para Proyectos de Impacto** |

### 
