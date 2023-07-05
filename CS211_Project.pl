
/*Knowledge Base of flowers identification system*/
/*Facts*/

/*Names of flowers*/
flower(cucumber).
flower(pumpkin).
flower(daisy).
flower(lavender).
flower(sunflower).
flower(tulip).
flower(daffodils).
flower(orchid).

/*Colors of flowers*/
color(cucumber, yellow).
color(pumpkin, orange).
color(daisy, white).
color(lavender, purple).
color(sunflower, yellow).
color(tulip, red).
color(tulip, pink).
color(tulip, purple).
color(daffodils, white).
color(daffodils, yellow).
color(orchid, white).
color(orchid, yellow).
color(orchid, pink).

/*Number of petals*/
petals(cucumber, 5).
petals(pumpkin, 5).
petals(daisy, 10).
petals(lavender, 5).
petals(sunflower, 50).
petals(tulip, 6).
petals(daffodils, 6).
petals(orchid, 3).

/*Flowers that have petals*/
have(cucumber, petals).
have(pumpkin, petals).
have(daisy, petals).
have(lavender, petals).
have(sunflower, petals).
have(tulip, petals).
have(daffodils, petals).
have(orchid, petals).

/*Flowers that have sepals*/
have(cucumber, sepals).
have(pumpkin, sepals).
have(daisy, sepals).
have(lavender, sepals).
have(sunflower, sepals).
have(tulip, sepals).
have(orchid, sepals).

/*Flowers that have stamens*/
have(cucumber, stamens).
have(daisy, stamens).
have(lavender, stamens).
have(sunflower, stamens).
have(tulip, stamens).
have(daffodils, stamens).
have(orchid, stamens).

/*Flowers that have carpels*/
have(pumpkin, carpels).
have(lavender, carpels).
have(sunflower, carpels).
have(tulip, carpels).
have(orchid, carpels).

/*Flowers that don’t have sepals*/
not_have(daffodils, sepals).

/*Flowers that don’t have stamens*/
not_have(pumpkin, stamens).

/*Flowers that don’t have carpels*/
not_have(cucumber, carpels).
not_have(daisy, carpels).
not_have(daffodils, carpels).

/*Flowers seasons*/
winter_flower(lavender).
winter_flower(tulip).
summer_flower(lavender).
summer_flower(cucumber).
summer_flower(sunflower).
summer_flower(orchid).
spring_flower(lavender).
spring_flower(tulip).
spring_flower(cucumber).
spring_flower(pumpkin).
spring_flower(daisy).
autumn_flower(lavender).
autumn_flower(daisy).
autumn_flower(orchid).

/*Rules*/
is_complete_flower(X) :- have(X, sepals), have(X, petals), have(X, stamens), have(X, carpels).
is_incomplete_flower(X) :- not_have(X, sepals); not_have(X, petals); not_have(X, stamens); not_have(X, carpels).

is_bisexual_flower(X) :- have(X, stamens), have(X, carpels).
is_unisexual_flower(X) :- not_have(X, stamens); not_have(X, carpels).

three_or_multiple_of_3(N) :- 0 is mod(N,3).
four_or_multiple_of_4(N) :- 0 is mod(N,4).
five_or_multiple_of_5(N) :- 0 is mod(N,5).

is_monocot_flower(X) :- petals(X,N),three_or_multiple_of_3(N) .
is_dicot_flower(X) :- petals(X, N),(four_or_multiple_of_4(N); five_or_multiple_of_5(N)).







