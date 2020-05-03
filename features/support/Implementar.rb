class Implementar
    $lista1 = []
    $lista2 = []
    $lista3 = []
    def comparar
        $lista3 = $lista1 & $lista2
        $lista3.each do |anime|
            puts anime
        end
    end
end