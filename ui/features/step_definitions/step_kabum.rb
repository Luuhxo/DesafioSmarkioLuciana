Dado("Entrei no site Kabum") do
    visit(DATA[$ambiente]['site'])
    assert_selector(EL['campo_pesquisa'], visible:true)
end
  
Dado("realizei uma pesquisa") do
    find(EL['campo_pesquisa']).set('mouse')
    find(EL['botao_buscar']).click
end

Quando("selecionar o produto") do
    assert_selector(EL['botao_compra'], visible:true)
    all(EL['botao_compra'])[0].click
end

Entao("o mesmo será encaminhado ao carrinho") do
    assert_selector(EL['label_carrinho'], visible:true, text:'1 Produto')
    save_screenshot("data/screenshots/validacao.png")
end 