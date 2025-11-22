#!/bin/bash

# Badge 27: Generative AI Engineering with Transformers & LLMs
# Farklı URL formatlarını deneyelim
URLS_27=(
  "https://images.credly.com/images/6387f397-234b-480c-a0a0-4f9d6f8654a8/blob"
  "https://images.credly.com/images/6387f397-234b-480c-a0a0-4f9d6f8654a8/image"
  "https://images.credly.com/images/6387f397-234b-480c-a0a0-4f9d6f8654a8/Coursera_20Generative_20AI_20Engineering_20with_20Transformers_20LLMs.png"
)

# Badge 28: Generative AI Foundational Models for NLP & Language Understanding  
URLS_28=(
  "https://images.credly.com/images/954a697e-66c0-45c3-8681-ced968dfa73e/blob"
  "https://images.credly.com/images/954a697e-66c0-45c3-8681-ced968dfa73e/image"
  "https://images.credly.com/images/954a697e-66c0-45c3-8681-ced968dfa73e/Coursera_20Generative_20AI_20Foundational_20Models_20for_20NLP.png"
)

for url in "${URLS_27[@]}"; do
  echo "Trying 27: $url"
  curl -L "$url" -o "27-test.png" 2>&1 | head -5
  if file "27-test.png" | grep -q "PNG"; then
    mv "27-test.png" "27-generative-ai-transformers-llms.png"
    echo "Success for 27!"
    break
  fi
done

for url in "${URLS_28[@]}"; do
  echo "Trying 28: $url"
  curl -L "$url" -o "28-test.png" 2>&1 | head -5
  if file "28-test.png" | grep -q "PNG"; then
    mv "28-test.png" "28-generative-ai-foundational-nlp.png"
    echo "Success for 28!"
    break
  fi
done

rm -f 27-test.png 28-test.png
file 27-generative-ai-transformers-llms.png 28-generative-ai-foundational-nlp.png 2>&1 | head -5
