#!/usr/bin/env node
/**
 * Install script for E-commerce Skills Suite
 * Copies skills to OpenClaw workspace
 */

import { existsSync, cpSync, mkdirSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const SKILLS_DIR = join(__dirname, '..', 'skills');
const OPENCLAW_DIR = join(process.env.HOME, '.openclaw', 'workspace', 'skills');

const SKILLS = [
  'ecommerce-competitive-monitor',
  'ecommerce-social-poster',
  'ecommerce-analytics-dashboard',
  'ecommerce-email-automation',
  'ecommerce-inventory-tracker',
  'ecommerce-review-sentiment-analyzer'
];

console.log('=== E-commerce Skills Installation ===\n');

if (!existsSync(join(process.env.HOME, '.openclaw'))) {
  console.log('Error: OpenClaw not found. Install from https://openclaw.ai');
  process.exit(1);
}

mkdirSync(OPENCLAW_DIR, { recursive: true });

for (const skill of SKILLS) {
  const src = join(SKILLS_DIR, skill);
  const dest = join(OPENCLAW_DIR, skill);

  if (existsSync(src)) {
    console.log(`Installing ${skill}...`);
    cpSync(src, dest, { recursive: true });
    console.log(`  ✓ ${skill} installed`);
  } else {
    console.log(`  ✗ ${skill} not found`);
  }
}

console.log('\n=== Installation Complete ===');
console.log(`Skills installed to: ${OPENCLAW_DIR}`);
console.log('\nRun: openclaw skills list | grep ecommerce');
