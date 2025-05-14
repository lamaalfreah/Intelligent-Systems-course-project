# 🌸 Flower Identification Knowledge Base

A symbolic AI system implemented in **Prolog** to identify and classify flowers based on their properties, structure, and blooming seasons. 🧠 Developed as part of the Intelligent Systems course in the Computer Science department at **Taibah University**.

This knowledge base includes:
- Facts about flowers such as name, color, number of petals, and structures like sepals, stamens, and carpels.
- Rules to classify flowers as:
  - Complete or Incomplete
  - Monocot or Dicot
  - Bisexual or Unisexual
- Seasonal categorization: spring, summer, autumn, and winter.

🧠 Example facts:

```prolog
flower(tulip).
color(tulip, red).
petals(tulip, 6).
have(tulip, stamens).
not_have(pumpkin, stamens).
```

🧠 Example rules:

```prolog
is_complete_flower(X) :- have(X, sepals), have(X, petals), have(X, stamens), have(X, carpels).
is_monocot_flower(X) :- petals(X, N), 0 is mod(N, 3).
is_dicot_flower(X) :- petals(X, N), (0 is mod(N, 4); 0 is mod(N, 5)).
```

🌼 Supported flowers:
Cucumber, Pumpkin, Daisy, Lavender, Sunflower, Tulip, Daffodils, Orchid

📋 Example queries:

```prolog
% What flowers bloom in spring?
spring_flower(X).

% Which flowers are complete?
is_complete_flower(X).

% Is tulip a monocot?
is_monocot_flower(tulip).
```

🔧 How to run:
1. Install SWI-Prolog from: https://www.swi-prolog.org/
2. Load the Prolog file:
   ```prolog
   ?- [flowers].
   ```
3. Run any query from the examples above.
