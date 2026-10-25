# sound

The one shared copy of the General MIDI bank every swwallowws studio plays MIDI with, served
by GitHub Pages at https://swwallowws.github.io/sound/gm.sf3.

Every studio lives on swwallowws.github.io, so fetching the bank from this one address means a
visitor downloads its 4.6 MB once, not once per studio. The design system's
`sound/soundfont.js` (`fetchSoundfont`) asks here first and falls back to each studio's own
copy, so a studio still plays when this site doesn't answer, or when it is served anywhere
else.

- `gm.sf3` and `NOTICE`: copied from the design system (`design/sound/`). The bank is made from
  GeneralUser GS by S. Christian Collins; credit, changes and licence in `NOTICE`.
- `update.sh`: copies a new bank and notice over from `../design`. When the bank changes, bump
  `SOUNDFONT_VERSION` in the design system too, so every studio fetches the new one.
- `.github/workflows/pages.yml`: deploys the bank, its notice and a one-paragraph page on every
  push to main, then checks the bank answers.
