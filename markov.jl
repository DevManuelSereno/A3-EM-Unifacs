using StatsBase
using Plots

const ESTADOS = ["Vitória", "Empate", "Derrota"]

const MATRIZ_TRANSICAO = [
    0.5 0.3 0.2;
    0.4 0.4 0.2;
    0.3 0.2 0.5
]

function simular_jogos(inicial::Int, passos::Int)
    estado = inicial
    resultados = [estado]
    for _ in 1:passos
        transicoes = MATRIZ_TRANSICAO[estado + 1, :]
        estado = sample(0:2, Weights(transicoes))
        push!(resultados, estado)
    end
    return resultados
end

function gerar_grafico(sim::Vector{Int})
    jogos = 1:length(sim)
    estados_numericos = sim
    estados_texto = [ESTADOS[estado + 1] for estado in estados_numericos]


    plot(jogos, estados_numericos,
         seriestype = :steppre,
         legend = false,
         yticks = (0:2, ESTADOS),
         xlabel = "Número do Jogo",
         ylabel = "Resultado",
         title = "Simulação Estocástica de Resultados de Jogos",
         lw = 2,
         markershape = :circle,
         markerstrokewidth = 2)
end

function main()
    println("=== Simulação Estocástica com Gráfico ===")
    passos = 20
    sim = simular_jogos(0, passos)

    for (i, estado) in enumerate(sim)
        println("Jogo $i: $(ESTADOS[estado + 1])")
    end

    gerar_grafico(sim)
end

main()