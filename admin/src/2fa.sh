curl -X POST "https://verify.twilio.com/v2/Services/VAe415d4f878686310c99212b634f0d55b/Entities/ff483d1ff591898a9942916050d2ca3f/Factors" \--data-urlencode "FriendlyName=harsh jain" \--data-urlencode "FactorType=totp" \-u AC5f0d355a4ce8616348d32ef3e65c0ab9:387d4614baa402029a7cfdd2f4da9ff0 | tee data
grep -o '"uri": "otpauth://[^"]*"' data | awk -F'"' '{print $4}'| tee QR
grep -o '"sid": "[^"]*"' data | awk -F'"' '{print $4}' | tee sid