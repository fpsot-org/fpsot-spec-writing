#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
#
# Tests the term base model: every example in examples/valid/ must pass LinkML
# validation and every example in examples/invalid/ must fail. Then termgen must
# accept examples/valid/terms.yaml and ../termbase/terms.yaml, so the model and the
# FPSOT tools agree.
#
# Environment: LINKML (default linkml-validate), TERMGEN (path to termgen; the
# termgen step is skipped when empty).
set -u
here="$(cd "$(dirname "$0")" && pwd)"
linkml=${LINKML:-linkml-validate}
model="$here/termbase.yaml"
fail=0
class_of() { echo TermBase; }
while IFS= read -r f; do
  if ! $linkml -s "$model" -C "$(class_of "$f")" "$f" >/dev/null 2>&1; then
    echo "FAIL: valid example rejected: $f"; $linkml -s "$model" -C "$(class_of "$f")" "$f" 2>&1 | tail -3; fail=1
  fi
done < <(find "$here/examples/valid" -name '*.yaml' | sort)
while IFS= read -r f; do
  if $linkml -s "$model" -C "$(class_of "$f")" "$f" >/dev/null 2>&1; then
    echo "FAIL: invalid example accepted: $f"; fail=1
  fi
done < <(find "$here/examples/invalid" -name '*.yaml' | sort)
if ! $linkml -s "$model" -C TermBase "$here/../termbase/terms.yaml" >/dev/null 2>&1; then
  echo "FAIL: termbase/terms.yaml does not match the model"; $linkml -s "$model" -C TermBase "$here/../termbase/terms.yaml" 2>&1 | tail -5; fail=1
fi
if [ -n "${TERMGEN:-}" ]; then
  out="$(mktemp -d)"
  for f in "$here/examples/valid/terms.yaml" "$here/../termbase/terms.yaml"; do
    "$TERMGEN" -termbase "$f" -lang en -attrs "$out/attrs.adoc" >/dev/null || { echo "FAIL: termgen rejected $f"; fail=1; }
  done
  rm -rf "$out"
fi
[ $fail -eq 0 ] && echo "PASS"
exit $fail
