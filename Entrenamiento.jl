function calcular_volumen_entrenamiento(rutina) 
    resultados = Dict{String, Float64}()

    for (ejercicio, series) in rutina
        volumen_ejercicio = 0.0

        for set in series
            peso, reps = set
            volumen_ejercicio += peso * reps
        end
        resultados[ejercicio] = volumen_ejercicio
    end

    return resultados
end

function main()
    println("calculadora de volumen de entrenamiento")
    rutina = Dict(
        "Sentadillas" => [(100.0, 10), (110.0, 8), (120.0, 6)],
        "Press de banca" => [(80.0, 12), (85.0, 10), (90.0, 8)],
        "Peso muerto" => [(120.0, 10), (130.0, 8), (140.0, 6)]
    )

    volumen_por_ejercicio = calcular_volumen_entrenamiento(rutina)
    
    volumen_total = 0.0
    for (ejercicio, volumen) in volumen_por_ejercicio
        println("Volumen de $ejercicio: $volumen kg")
        volumen_total += volumen
    end
    println("-" ^ 44)
    println("Volumen total: $volumen_total kg")
end
main()