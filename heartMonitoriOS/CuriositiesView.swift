//
//  CuriositiesView.swift
//  heartMonitoriOS
//
//  Created by Hiago Chagas on 21/04/23.
//

import SwiftUI

struct CuriositiesView: View {
    
    private let text: String = """
    Claro, aqui estão algumas curiosidades sobre batimentos cardíacos e oxigenação sanguínea:

    1. A frequência cardíaca média de um adulto em repouso é de cerca de 60 a 100 batimentos por minuto. No entanto, atletas de elite podem ter frequências cardíacas em repouso tão baixas quanto 40 batimentos por minuto.

    2. O coração humano bombeia cerca de 5 litros de sangue por minuto, o que equivale a cerca de 2.000 galões de sangue por dia.

    3. Quando estamos em repouso, cerca de 75% do sangue em nossos pulmões é direcionado para o coração para ser bombeado para o resto do corpo.

    4. A oxigenação sanguínea é essencial para a sobrevivência. Quando o sangue não é adequadamente oxigenado, pode resultar em problemas de saúde, incluindo danos nos órgãos.

    5. O nível de oxigênio no sangue é medido pela saturação de oxigênio, que é a porcentagem de hemoglobina no sangue que está transportando oxigênio. Um nível normal de saturação de oxigênio é entre 95% e 100%.

    6. A hipóxia é uma condição em que o corpo não recebe oxigênio suficiente. Pode ser causada por uma variedade de fatores, incluindo problemas respiratórios ou cardíacos.

    7. A prática regular de exercícios pode melhorar a oxigenação sanguínea, pois o exercício aumenta a frequência cardíaca e a respiração, permitindo que o corpo receba mais oxigênio.

    8. A meditação e outras técnicas de relaxamento também podem ajudar a melhorar a oxigenação sanguínea, pois podem reduzir o estresse e melhorar a função respiratória.

    9. Os bebês têm uma frequência cardíaca mais alta do que os adultos, com uma média de cerca de 120 batimentos por minuto.

    10. O coração é o primeiro órgão a se formar durante o desenvolvimento embrionário, e começa a bater cerca de três semanas após a concepção.
    """
    
    var body: some View {
        VStack {
            Text(text)
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity)
        }
    }
}
