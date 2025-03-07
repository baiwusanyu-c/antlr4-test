import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react-swc'

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  esbuild: {
    supported: {
      // 禁用某些保留字的严格检查（不推荐长期使用）
      'strict-mode': false
    }
  }
})
