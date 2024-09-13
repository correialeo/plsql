SELECT
    *
FROM
    pf1788.pedido;



SELECT
    cod_pedido       "C�digo do Pedido",
    cod_cliente      "C�digo Cliente",
    val_total_pedido "Valor Total"
FROM
    pf1788.pedido
WHERE
        cod_cliente = 120
    AND cod_pedido = 130502;



SELECT
    cli.cod_cliente  "C�digo Cliente",
    cli.nom_cliente,
    round(avg(val_total_pedido),2) "M�dia de valores por PEDIDO"
FROM
    pf1788.pedido PD join PF1788.CLIENTE cli
    ON (pd.cod_cliente=cli.cod_cliente)
WHERE val_total_pedido < 1000
group by
    cli.cod_cliente,
    cli.nom_cliente
order by
    "M�dia de valores por PEDIDO" asc;