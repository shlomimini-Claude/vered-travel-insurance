#!/usr/bin/env bash
# Builds per-company copies of the landing page from index.html (the Harel master).
# Each variant = identical Vered branding, only the purchase-button link + OG domain swapped.
# Output: build/<company>/  (index.html + assets) — ready to deploy to its own Netlify site.
set -euo pipefail
cd "$(dirname "$0")"

MASTER_URL="https://digital.harel-group.co.il/travel-policy/?guid=bee1d408-c6a7-410e-b4ee-ac690224bdd3&an=95671"
MASTER_DOMAIN="vered-travel-insurance.netlify.app"

# company_key | netlify_subdomain | purchase_url
VARIANTS=(
  "menora|vered-menora|https://ds.menoramivt.co.il/tiny-url/t/e/params?t=8lj5vq"
  "passportcard|vered-passportcard|https://buy.passportcard.co.il/?AffiliateId=9piZvnUM3BaZvRJQAXXncw%3D%3D"
)

rm -rf build
for v in "${VARIANTS[@]}"; do
  IFS='|' read -r key sub url <<< "$v"
  out="build/$key"
  mkdir -p "$out"
  cp -R assets "$out/assets"
  # swap purchase URL (both buttons) and OG/canonical domain -> this variant's domain
  sed -e "s#${MASTER_URL}#${url}#g" \
      -e "s#${MASTER_DOMAIN}#${sub}.netlify.app#g" \
      index.html > "$out/index.html"
  echo "built $out  (link: $url)"
done
echo "done."
