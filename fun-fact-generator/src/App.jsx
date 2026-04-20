import { useState } from 'react'
import { useFacts } from './hooks/useFacts'
import CategoryFilter from './components/CategoryFilter'
import FactCard from './components/FactCard'
import ShareButtons from './components/ShareButtons'
import FavoritesList from './components/FavoritesList'
import './App.css'

function App() {
  const [view, setView] = useState('home')
  const {
    currentFact,
    category,
    setCategory,
    nextFact,
    isAnimating,
    favorites,
    toggleFavorite,
    removeFavorite,
    isFavorite,
    categories,
  } = useFacts()

  return (
    <div className="app">
      <header className="app-header">
        <h1>💡 Fun Fact Generator</h1>
        <p className="app-subtitle">Discover something new every day</p>
        <nav className="app-nav">
          <button
            className={`nav-btn${view === 'home' ? ' active' : ''}`}
            onClick={() => setView('home')}
          >
            Explore
          </button>
          <button
            className={`nav-btn${view === 'favorites' ? ' active' : ''}`}
            onClick={() => setView('favorites')}
          >
            ♥ Favorites {favorites.length > 0 && <span className="badge">{favorites.length}</span>}
          </button>
        </nav>
      </header>

      <main className="app-main">
        {view === 'home' ? (
          <>
            <CategoryFilter
              categories={categories}
              current={category}
              onChange={setCategory}
            />
            <FactCard
              fact={currentFact}
              isFavorite={isFavorite}
              onFavorite={toggleFavorite}
              onNext={nextFact}
              isAnimating={isAnimating}
            />
            <ShareButtons fact={currentFact} />
          </>
        ) : (
          <>
            <h2 className="section-title">Your Saved Facts</h2>
            <FavoritesList favorites={favorites} onRemove={removeFavorite} />
          </>
        )}
      </main>

      <footer className="app-footer">
        <p>60 facts across 6 categories · Built with React + Vite</p>
      </footer>
    </div>
  )
}

export default App
