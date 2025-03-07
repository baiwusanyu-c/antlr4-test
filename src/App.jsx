import { useState } from 'react'
import { tree, Visitor } from './utils'
function App() {
    tree.accept(new Visitor());
  return (
    <>
      <h1>Vite + React</h1>
    </>
  )
}

export default App
