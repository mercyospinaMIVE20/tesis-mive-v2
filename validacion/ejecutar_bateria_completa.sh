#!/bin/bash
# ejecutar_bateria_completa.sh

CASOS=("T-R1" "T-R2" "T-R3" "T-R4" "T-R5" "T-R6" "T-R7" "T-R8" "T-R9" 
       "T-R10" "T-R11" "T-R12" "T-R13" "T-R14" "T-R15" "T-R16a" "T-R16b" 
       "T-R17" "T-R18" "T-R19" "T-R20" "T-R21" "T-R22" "T-R23" "T-R24" 
       "T-R25" "T-R26" "T-R27" "T-R28" "T-R29")

echo "============================================" > resultados_bateria.txt
echo "BATERIA FALSIFICACION MIVE v2.0" >> resultados_bateria.txt
echo "Fecha: $(date)" >> resultados_bateria.txt
echo "============================================" >> resultados_bateria.txt

for caso in "${CASOS[@]}"; do
    echo "" >> resultados_bateria.txt
    echo "=== $caso ===" >> resultados_bateria.txt
    
    cat > temp_use.txt << EOF
reset
open mive.use
open ${caso}.soil
check
exit
EOF
    
    use < temp_use.txt >> resultados_bateria.txt 2>&1
    
    # Extraer solo invariantes fallidas
    FAILED=$(grep "FAILED" resultados_bateriaR21_R29.txt | tail -1)
    if [ -n "$FAILED" ]; then
        echo "✅ $caso: $FAILED"
    else
        echo "❌ $caso: Sin violación detectada"
    fi
done

echo ""
echo "============================================"
echo "RESULTADOS GUARDADOS: resultados_bateria.txt"
echo "============================================"