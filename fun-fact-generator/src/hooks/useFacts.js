import { useState, useCallback, useEffect } from 'react';
import allFacts from '../data/facts.json';

const FAVORITES_KEY = 'fun-fact-favorites';

function getRandomFact(facts, currentId) {
  if (facts.length === 0) return null;
  if (facts.length === 1) return facts[0];
  let fact;
  do {
    fact = facts[Math.floor(Math.random() * facts.length)];
  } while (fact.id === currentId);
  return fact;
}

export function useFacts() {
  const [category, setCategory] = useState('all');
  const [currentFact, setCurrentFact] = useState(null);
  const [isAnimating, setIsAnimating] = useState(false);
  const [favorites, setFavorites] = useState(() => {
    try {
      return JSON.parse(localStorage.getItem(FAVORITES_KEY)) ?? [];
    } catch {
      return [];
    }
  });

  const filteredFacts = category === 'all'
    ? allFacts
    : allFacts.filter((f) => f.category === category);

  // Pick initial fact on mount / category change
  useEffect(() => {
    setCurrentFact(getRandomFact(filteredFacts, null));
  }, [category]); // eslint-disable-line react-hooks/exhaustive-deps

  // Persist favorites
  useEffect(() => {
    localStorage.setItem(FAVORITES_KEY, JSON.stringify(favorites));
  }, [favorites]);

  const nextFact = useCallback(() => {
    setIsAnimating(true);
    setTimeout(() => {
      setCurrentFact((prev) => getRandomFact(filteredFacts, prev?.id));
      setIsAnimating(false);
    }, 250);
  }, [filteredFacts]);

  const toggleFavorite = useCallback((fact) => {
    setFavorites((prev) => {
      const exists = prev.some((f) => f.id === fact.id);
      return exists ? prev.filter((f) => f.id !== fact.id) : [...prev, fact];
    });
  }, []);

  const removeFavorite = useCallback((id) => {
    setFavorites((prev) => prev.filter((f) => f.id !== id));
  }, []);

  const isFavorite = currentFact ? favorites.some((f) => f.id === currentFact.id) : false;

  const categories = ['all', ...new Set(allFacts.map((f) => f.category))];

  return {
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
  };
}
