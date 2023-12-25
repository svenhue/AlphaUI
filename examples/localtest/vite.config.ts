import vue from '@vitejs/plugin-vue'
import md from 'unplugin-vue-markdown/vite'
import vike from 'vike/plugin'
import { UserConfig } from 'vite'
import { resolve, dirname } from "path";
import { fileURLToPath } from 'url';
import alias from '@rollup/plugin-alias';
const __dirname = dirname(fileURLToPath(import.meta.url));
const config: UserConfig = {
  plugins: [
    vike({ prerender: true }),
    vue({
      include: [/\.vue$/, /\.md$/]
    }),
    md({}),
    alias({
      entries: [
        { find: '@assets', replacement: resolve(__dirname, './src/assets') },
        { find: '@plugins', replacement: resolve(__dirname, './src/plugins') },
        { find: '@utils', replacement: resolve(__dirname, './utils') },
        { find : '@src', replacement: resolve(__dirname, './src')}
      ]
    })
  ],
  
  // We manually add a list of dependencies to be pre-bundled, in order to avoid a page reload at dev start which breaks Vike's CI
  optimizeDeps: { include: ['cross-fetch'] },
  resolve:{
    alias:{
      '#assets': resolve(__dirname, '/src/assets'),
    }
  }
}
export default config
