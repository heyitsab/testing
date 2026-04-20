import { useState } from 'react';

export default function ShareButtons({ fact }) {
  const [copied, setCopied] = useState(false);

  if (!fact) return null;

  const shareText = `💡 Fun Fact: ${fact.text}`;

  async function handleCopy() {
    try {
      await navigator.clipboard.writeText(shareText);
      setCopied(true);
      setTimeout(() => setCopied(false), 2000);
    } catch {
      // Clipboard API unavailable — notify the user rather than silently falling back
      // to the deprecated execCommand which may not work in all contexts.
      alert('Could not copy to clipboard. Please copy the text manually.');
    }
  }

  const twitterUrl = `https://twitter.com/intent/tweet?text=${encodeURIComponent(shareText)}`;

  return (
    <div className="share-buttons">
      <button className="btn-share" onClick={handleCopy}>
        {copied ? '✓ Copied!' : '📋 Copy'}
      </button>
      <a
        className="btn-share"
        href={twitterUrl}
        target="_blank"
        rel="noopener noreferrer"
      >
        𝕏 Share
      </a>
    </div>
  );
}
