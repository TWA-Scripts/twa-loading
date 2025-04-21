# TWA Loading Screen

En avanceret FiveM loading screen med konfigurerbare baggrunde, logo og musik.

## Husk
1. Venligst ikke fjern `version_check.lua` da den holder styr på om der er kommet en ny update til scriptet ❤️

## Installation

1. Download den seneste version fra [GitHub Releases](https://github.com/TWA-Coding/twa-loading/releases)
2. Placer mappen i din FiveM server's `resources` mappe
3. Tilføj `ensure twa-loading` til din `server.cfg` fil

## Konfiguration

### Hovedkonfiguration
Alle indstillinger foretages i `ui/script.js`. Find `window.loadingScreenConfig` objektet.

### Baggrunde
```javascript
backgrounds: [
    "assets/images/bg_image1.png",
    "assets/images/bg_image2.png",
    "assets/images/bg_image3.png",
    // Tilføj flere stier efter behov
]