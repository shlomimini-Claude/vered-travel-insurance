#!/usr/bin/env bash
# Builds per-company copies of the landing page from index.html (the Harel master).
# Each variant = identical Vered branding/design; only the purchase button (link + label +
# company logo + brand color) and the OG/canonical domain are swapped.
# Output: build/<company>/ (index.html + assets) — ready to deploy to its own Netlify site.
set -euo pipefail
cd "$(dirname "$0")"

# --- master (Harel) values present in index.html ---
M_URL="https://digital.harel-group.co.il/travel-policy/?guid=bee1d408-c6a7-410e-b4ee-ac690224bdd3&an=95671"
M_DOMAIN="vered-travel-insurance.netlify.app"
M_LOGO="assets/logo-harel.png"
M_NAME="הראל"          # appears as "בחברת הראל" and alt="הראל"
M_BRAND="#0088C9"

# company_key | subdomain | purchase_url | logo_file | company_name | brand_color
VARIANTS=(
  "menora|vered-menora|https://ds.menoramivt.co.il/tiny-url/t/e/params?t=8lj5vq|assets/logo-menora.png|מנורה|#5E2A8C"
  "passportcard|vered-passportcard|https://buy.passportcard.co.il/?AffiliateId=9piZvnUM3BaZvRJQAXXncw%3D%3D|assets/logo-passportcard.png|פספורט כארד|#E11B22"
)

rm -rf build
for v in "${VARIANTS[@]}"; do
  IFS='|' read -r key sub url logo name brand <<< "$v"
  out="build/$key"
  mkdir -p "$out"
  cp -R assets "$out/assets"
  sed -e "s|${M_URL}|${url}|g" \
      -e "s|${M_DOMAIN}|${sub}.netlify.app|g" \
      -e "s|${M_LOGO}|${logo}|g" \
      -e "s|בחברת ${M_NAME}|בחברת ${name}|g" \
      -e "s|alt=\"${M_NAME}\"|alt=\"${name}\"|g" \
      -e "s|--brand:${M_BRAND}|--brand:${brand}|g" \
      index.html > "$out/index.html"
  echo "built $out  ($name / $brand)"
done
echo "done."
