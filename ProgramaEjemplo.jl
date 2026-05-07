function celcius_fahrenheit(celcius)
    return (celcius *9/5) + 32
end

function conversor_temperaturas(lista_temperaturas)
    for temp_c in lista_temperaturas
        temp_f = celcius_fahrenheit(temp_c)

        clima = ""
        if temp_c >= 30.0
            clima = "calor"
        elseif temp_c >= 15.0
            clima = "templado"
        else
            clima = "frío"
        end

        println(temp_c, " °C equivalen a ", round(temp_f, digits=1), " °F. Clima: ", clima)
    end 
end

function main()
    datos_celcius = [0.0, 17.6, 25.0, 32.0, -5.8]
    conversor_temperaturas(datos_celcius)
end
main()