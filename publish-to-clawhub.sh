#!/bin/bash
# ClawHub Publish Script for E-commerce Skills
# Run this AFTER completing ClawHub GitHub OAuth login
# Usage: ./publish-to-clawhub.sh

set -e

SKILLS_DIR="/Users/jian1929/auto-company/projects/ecommerce-skills"

echo "=== ClawHub Publish for E-commerce Skills ==="

# Check if logged in
echo "Checking ClawHub login..."
clawhub whoami || { echo "Not logged in. Run: clawhub login"; exit 1; }

# Publish ecommerce-competitive-monitor (paid)
echo "Publishing ecommerce-competitive-monitor..."
clawhub publish "$SKILLS_DIR/ecommerce-competitive-monitor" \
  --slug ecommerce-competitive-monitor \
  --name "E-commerce Competitive Monitor" \
  --version 1.0.0 \
  --tags "ecommerce,competitor-analysis,price-monitoring" \
  --changelog "Initial release - competitor price, product, and review monitoring"

# Publish ecommerce-social-poster (free)
echo "Publishing ecommerce-social-poster..."
clawhub publish "$SKILLS_DIR/ecommerce-social-poster" \
  --slug ecommerce-social-poster \
  --name "E-commerce Social Poster" \
  --version 1.0.0 \
  --tags "ecommerce,social-media,content-generation" \
  --changelog "Initial release - social media content generation for e-commerce"

# Publish ecommerce-analytics-dashboard (free)
echo "Publishing ecommerce-analytics-dashboard..."
clawhub publish "$SKILLS_DIR/ecommerce-analytics-dashboard" \
  --slug ecommerce-analytics-dashboard \
  --name "E-commerce Analytics Dashboard" \
  --version 1.0.0 \
  --tags "ecommerce,analytics,kpi-tracking" \
  --changelog "Initial release - e-commerce metrics and KPI analysis"

echo ""
echo "=== All skills published successfully! ==="
echo "View at: https://clawhub.ai"
