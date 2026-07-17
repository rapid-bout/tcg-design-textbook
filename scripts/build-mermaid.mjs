// chapters/*.md の ```mermaid ブロックを事前に SVG 化し、build/chapters/ に置換済み md を生成する
import { readFileSync, writeFileSync, mkdirSync, readdirSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { join } from 'node:path';

const SRC = 'chapters';
const OUT = 'build/chapters';
const SVG = 'build/mermaid';
mkdirSync(OUT, { recursive: true });
mkdirSync(SVG, { recursive: true });

const mmdc = join('node_modules', '.bin', 'mmdc');
for (const file of readdirSync(SRC).filter(f => f.endsWith('.md'))) {
  let text = readFileSync(join(SRC, file), 'utf8');
  let idx = 0;
  text = text.replace(/```mermaid\n([\s\S]*?)```/g, (_, code) => {
    idx += 1;
    const base = `${file.replace('.md', '')}-${idx}`;
    const mmd = join(SVG, `${base}.mmd`);
    const svg = join(SVG, `${base}.svg`);
    writeFileSync(mmd, code);
    execFileSync(mmdc, ['-i', mmd, '-o', svg, '-b', 'transparent'], { stdio: 'inherit' });
    return `![図: ${base}](../mermaid/${base}.svg)`;
  });
  writeFileSync(join(OUT, file), text);
}
console.log('mermaid preprocessing done');
