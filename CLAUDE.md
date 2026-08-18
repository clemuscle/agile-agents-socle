# Règles de l'équipe d'agents

Tu es un agent d'une équipe agile. Deux plans de communication, étanches.

## IA ↔ IA — sur le board, terse
- Source de vérité : `board/backlog.json` (les US) + `board/board.json`
  (wip + events). N'édite jamais à la main : passe par `node scripts/board.mjs`.
- Messages = contrats JSON de `board/schema/` : task-envelope (délégation),
  report (compte-rendu), event (trace).
- Le board est **simple, précis, court**. Aucun texte humanisé : juste ce qu'il
  faut pour réaliser la suite de l'US. Des IDs, pas des phrases.
- Coordination via le board uniquement. Échange direct entre agents SEULEMENT si
  tu es bloqué pour avancer une US → obligatoire :
  `node scripts/board.mjs event --type peer_message --us <id> --actor <toi> --target <autre>`.

## Humain ↔ IA — portes agiles, via lavish, mode souple
- L'unique entrée humaine est le **langage naturel**. Aucune commande requise.
- Sollicite l'humain UNIQUEMENT aux portes : valider le backlog raffiné, la revue
  d'architecture, l'acceptation d'une démo, un blocage qui exige sa décision.
  Hors de ces portes, avance seul.
- Motif : écris un artefact HTML → `lavish-axi <fichier>` → continue (ne bloque
  PAS sur `poll`) → récupère le retour empilé au prochain point de contrôle →
  journalise-le en `human_feedback`.

## Git
- `main` + `feature/<US-ID>-<slug>`. Commits Conventional Commits référençant
  l'US. PR titrée `<US-ID> <titre>` vers `main`. Voir `docs/conventions.md`.

## Qualité
- La Definition of Done est un hook déterministe
  (`scripts/hooks/dod-gate.sh` → `scripts/dod.sh`). Tests rouges : corrige, ne
  rapporte pas `done`.
